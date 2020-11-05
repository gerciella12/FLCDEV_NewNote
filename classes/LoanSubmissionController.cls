/**
 * Created 02.11.2020.
 */

public with sharing class LoanSubmissionController {
    private static RVAPISettings__c settings = RVAPISettings__c.getOrgDefaults();
    private static List<Web_Service_Log__c> webServiceLogs = new List<Web_Service_Log__c>();

    @AuraEnabled
    public static Map<String, Object> getStatus(String recordId) {
        Map<String, Object> status = new Map<String, Object>{'__status' => 'error'};
        try {
            List<Opportunity> opportunities = [
                    SELECT Id, Ready_to_Send__c, Date_Sent__c
                    FROM Opportunity
                    WHERE Id =: recordId
            ];
            if (!opportunities.isEmpty()) {
                String state =
                    !opportunities[0].Ready_to_Send__c ?
                        'PreSendNotReady' :
                        (
                            opportunities[0].Ready_to_Send__c && opportunities[0].Date_Sent__c == null ?
                                'PreSendReady' : 'Sent'
                        );
                status = new Map<String, Object>{
                        '__status' => 'success',
                        'state' => state
                };
            } else {
                status.put('__msg', 'Record is not find');
            }
        } catch (Exception e) {
            status.put('__msg', e.getMessage());
            status.put('__stackTrace', e.getStackTraceString());
        }

        return status;
    }

    @AuraEnabled
    public static Map<String, Object> sendToRV(String recordId) {
        Map<String, Object> status = new Map<String, Object>{'__status' => 'error'};
        try {
            List<Opportunity> opportunities = [
                    SELECT Id, Ready_to_Send__c, Date_Sent__c, Borrower_Marital_Status__c,
                            Account.Salutation, Account.FirstName, Account.LastName
                    FROM Opportunity
                    WHERE Id =: recordId
            ];
            if (!opportunities.isEmpty() && opportunities[0].Ready_to_Send__c && opportunities[0].Date_Sent__c == null) {
                String token = getToken(recordId);
                Map<String, Object> importContactsStatus = importContacts(opportunities[0], token);

                update new List<Opportunity>{new Opportunity(
                        Id = recordId,
                        Date_Sent__c = Date.today()
                )};
                status = importContactsStatus;
            } else if (opportunities.isEmpty()) {
                status.put('__msg', 'Record is not find');
            } else if (!opportunities[0].Ready_to_Send__c) {
                status.put('__msg', 'Data is not ready to be sent');
            } else if (opportunities[0].Date_Sent__c != null) {
                status.put('__msg', 'Data has already been sent');
            }
        } catch (Exception e) {
            status.put('__msg', e.getMessage());
            status.put('__stackTrace', e.getStackTraceString());
        } finally {
            insert webServiceLogs;
            upsert settings;
        }

        return status;
    }

    private static Map<String, Object> importContacts(Opportunity opportunityRec, String token) {
        Map<String, Object> status = new Map<String, Object>{'__status' => 'error'};
        List<RVAPI_User_Setting__mdt> userSettings = [
                SELECT Id, Label, DeveloperName, User_ID__c, Company_ID__c
                FROM RVAPI_User_Setting__mdt
                WHERE DeveloperName = 'MainSetting'
        ];
        if (
                String.isNotBlank(token) &&
                !userSettings.isEmpty() &&
                String.isNotBlank(userSettings[0].User_ID__c) &&
                String.isNotBlank(userSettings[0].Company_ID__c)
        ) {
            HttpResponse response = Utilities.callOut(
                'callout:RVAPI_Contact',
                'POST',
                new Map<String, String>{
                    'Authorization' => 'Basic {!$Credential.OAuthToken}',
                    'Content-Type' => 'application/json',
                    'Token' => token
                },
                JSON.serialize(new Map<String, Object>{
                    'assignedToCompanyGuid' => userSettings[0].Company_ID__c,
                    'createdByUserGuid' => userSettings[0].User_ID__c,
                    'campaignName' => '',
                    'campaignAssignedToGuid' => userSettings[0].User_ID__c,
                    'data' => new List<Map<String, Object>>{new Map<String, Object>{
                        'AssignedToUserGuid' => userSettings[0].User_ID__c,
                        'First Name' => opportunityRec.Account.FirstName,
                        'Middle Name' => '',
                        'Last Name' => opportunityRec.Account.LastName,
                        'Suffix' => opportunityRec.Account.Salutation,
                        'Nickname' => '',
                        'GenderType' => '',
                        'MaritalStatus' => opportunityRec.Borrower_Marital_Status__c,
                        'Date of Birth' => '',
                        'ContactType' => 'Lead',
                        'Primary Address' => '',
                        'Primary Address 2' => '',
                        'Primary Address ZIP' => '',
                        'Primary Address ZIP 4' => '',
                        'Primary Address City' => '',
                        'Primary Address State' => '',
                        'Mailing Address' => '',
                        'Mailing Address 2' => '',
                        'Mailing Address ZIP' => '',
                        'Mailing Address ZIP 4' => '',
                        'Mailing Address City' => '',
                        'Mailing Address State' => '',
                        'Home Phone' => '',
                        'Mobile Phone' => '',
                        'Work Phone' => '',
                        'Work Phone Ext' => '',
                        'Email' => '',
                        'Employer' => '',
                        'Occupation' => '',
                        'Title' => '',
                        'Anniversary' => ''
                    }}
                })
            );

            webServiceLogs.add(new Web_Service_Log__c(
                    Opportunity__c = opportunityRec.Id,
                    URL_Endpoint__c = 'callout:RVAPI_Contact',
                    HTTP_Method__c = 'POST',
                    HTTP_Response_Code__c = String.valueOf(response.getStatusCode()),
                    HTTP_Response_Message__c = response.getBody()
            ));

            Map<String, Object> bodyResponse = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
            if (response.getStatusCode() == 200 && (Integer)bodyResponse.get('status') == 1) {
                status = new Map<String, Object>{
                        '__status' => 'success',
                        '__msg' => 'Successfully imported Contact'
                };
            } else {
                throw new LoanSubmissionException((String)bodyResponse.get('Message'));
            }
        } else if (String.isBlank(token)) {
            status.put('__msg', 'Failed to get token');
        } else if (userSettings.isEmpty() || String.isBlank(userSettings[0].User_ID__c) || String.isBlank(userSettings[0].Company_ID__c)) {
            status.put('__msg', 'You need to set up User ID and Company ID');
        }
        return status;
    }

    private static String getToken(String recordId) {
        String token = null;

        if (
            settings != null &&
            String.isNotBlank(settings.Access_Token_Part_1__c) &&
            String.isNotBlank(settings.Expire_Date__c) &&
            Long.valueOf(settings.Expire_Date__c) > Datetime.now().getTime()
        ) {
            token = String.isNotBlank(settings.Access_Token_Part_1__c) ?
                    settings.Access_Token_Part_1__c : '';
            token += String.isNotBlank(token) && String.isNotBlank(settings.Access_Token_Part_2__c) ?
                    settings.Access_Token_Part_2__c : '';
        } else {
            HttpResponse response = Utilities.callOut(
                'callout:RVAPI_Token',
                'POST',
                new Map<String, String>{
                    'Authorization' => 'Basic {!$Credential.OAuthToken}',
                    'Accept' => 'application/json',
                    'Content-Type' => 'application/json'
                },
                JSON.serialize(new Map<String, Object>{
                    'userName' => '{!$Credential.UserName}',
                    'password' => '{!$Credential.Password}'
                })
            );

            webServiceLogs.add(new Web_Service_Log__c(
                    Opportunity__c = recordId,
                    URL_Endpoint__c = 'callout:RVAPI_Token',
                    HTTP_Method__c = 'POST',
                    HTTP_Response_Code__c = String.valueOf(response.getStatusCode()),
                    HTTP_Response_Message__c = response.getBody()
            ));

            Map<String, Object> bodyResponse = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
            if (response.getStatusCode() == 200) {
                token = (String)bodyResponse.get('access_token');
                if (String.isNotBlank(token)) {
                    Integer expiresIn = (Integer)bodyResponse.get('expires_in');
                    settings.Expire_Date__c = String.valueOf(Datetime.now().addSeconds(expiresIn).getTime());
                    settings.Access_Token_Part_1__c = token.left(255);
                    settings.Access_Token_Part_2__c = token.length() > 255 ? token.substring(255) : '';
                }
            } else {
                throw new LoanSubmissionException((String)bodyResponse.get('Message'));
            }
        }
        return token;
    }

    public class LoanSubmissionException extends Exception {}
}