/**
 * Created 07.09.2020.
 */

public with sharing class OpportunityNotesController {
    @AuraEnabled(Cacheable=true)
    public static Map<String, Object> retrieveNotes(String opportunityId) {
        Map<String, Object> status = new Map<String, Object>{'__status' => 'error'};
        List<Opportunity> opportunities = [
                SELECT Id
                FROM Opportunity
                WHERE Id =: opportunityId
        ];
        if (!opportunities.isEmpty()) {
            List<Con_Log__c> conLogs = [
                    SELECT Id, CreatedDate, CreatedBy.Id, CreatedBy.Name, Opportunity__c, Notes__c, Selected_Users__c
                    FROM Con_Log__c
                    WHERE Opportunity__c =: opportunities[0].Id
                    ORDER BY CreatedDate DESC
            ];

            List<Map<String, Object>> wraps = new List<Map<String, Object>>();
            for (Con_Log__c conLog : conLogs) {
                wraps.add(getNoteWrap(conLog));
            }

            status = new Map<String, Object>{
                    '__status' => 'success',
                    'wraps' => wraps
            };
        } else {
            status.put('__msg', 'Empty Record');
        }
        return status;
    }

    private static Map<String, Object> getNoteWrap(Con_Log__c conLog) {
        return new Map<String, Object>{
                'id' => conLog.Id,
                'createdDate' => conLog.CreatedDate.format('MM/dd/yyyy h:mm a'),
                'createdBy' => new Map<String, Object>{
                        'id' => conLog.CreatedBy.Id,
                        'redirectId' => '/' + conLog.CreatedBy.Id,
                        'name' => conLog.CreatedBy.Name
                },
                'sendToAddresses' => String.isNotBlank(conLog.Selected_Users__c) ?
                        conLog.Selected_Users__c.split(',') : new List<String>(),
                'note' => conLog.Notes__c
        };
    }

    @AuraEnabled(Cacheable=true)
    public static Map<String, Object> retrieveActiveUsers() {
        Map<String, Object> status = new Map<String, Object>{'__status' => 'error'};
        try {
            List<User> users = [
                    SELECT Id, Name, Email
                    FROM User
                    WHERE IsActive = TRUE
                    ORDER BY Name
            ];
            List<Map<String, Object>> wraps = new List<Map<String, Object>>();
            for (User userRec : users) {
                wraps.add(new Map<String, Object>{
                        'id' => userRec.Id,
                        'name' => userRec.Name,
                        'email' => userRec.Email
                });
            }
            status = new Map<String, Object>{
                    '__status' => 'success',
                    'wraps' => wraps
            };
        } catch (Exception e) {
            status.put('__msg', e.getMessage());
        }
        return status;
    }

    @AuraEnabled
    public static Map<String, Object> saveNote(Map<String, Object> params) {
        Map<String, Object> status = new Map<String, Object>{'__status' => 'error'};
        try {
            String opportunityId = (String) params.get('opportunityId');
            List<Object> rawNotifyUsers = (List<Object>) params.get('notifyUsers');
            List<String> notifyUsers = new List<String>();
            for (Object notifyUser : rawNotifyUsers) {
                notifyUsers.add((String) notifyUser);
            }
            String note = (String) params.get('note');
            List<User> users = [
                    SELECT Id, Email
                    FROM User
                    WHERE Id =: notifyUsers AND Email != null
            ];
            Set<String> emails = new Set<String>();
            for (User userRec : users) {
                emails.add(userRec.Email);
            }

            List<Con_Log__c> notes = new List<Con_Log__c>{new Con_Log__c(
                    Notes__c = note,
                    Opportunity__c = opportunityId,
                    Selected_Users__c = String.join(new List<String>(emails), ',')
            )};
            insert notes;
            notes = [
                    SELECT Id, CreatedDate, CreatedBy.Id, CreatedBy.Name, Opportunity__c, Opportunity__r.Id,
                            Opportunity__r.Name, Notes__c, Selected_Users__c
                    FROM Con_Log__c
                    WHERE Id =: notes[0].Id
                    ORDER BY CreatedDate DESC
            ];

            try {
                sendEmails(emails, notes[0].Opportunity__r, note);
            } catch (Exception e) {}

            status = new Map<String, Object>{
                    '__status' => 'success',
                    'note' => getNoteWrap(notes[0])
            };
        } catch (Exception e) {
            status.put('__msg', e.getMessage());
        }
        return status;
    }

    private static void sendEmails(Set<String> emails, Opportunity opportunityRec, String note) {
        if (emails != null && !emails.isEmpty() && opportunityRec != null) {
            Messaging.SingleEmailMessage emailMessage = new Messaging.SingleEmailMessage();

            emailMessage.setToAddresses(new List<String>(emails));
            emailMessage.setReplyTo(userInfo.getUserEmail());
            emailMessage.setSenderDisplayName(userInfo.getName());
            emailMessage.setSaveAsActivity(false);
            emailMessage.setSubject('ConLog');
            String body = 'Team,<br><br> ';
            body += 'Opportunity - ' + opportunityRec.Name + ' has been updated with the following note:<br>';
            body += '<a href="https://gereverse.my.salesforce.com/' + opportunityRec.Id + '">Link to Opportunity</a><br><br>';
            body += note;

            emailMessage.setHtmlBody(body);

            if (!Test.isRunningTest()) {
                Messaging.sendEmail(new List<messaging.SingleEmailMessage>{emailMessage});
            }
        }
    }
}