/**
 * Created 02.11.2020.
 */

@IsTest
private class LoanSubmissionControllerTest {
    @IsTest
    static void testBehavior() {
        Test.setMock(HttpCalloutMock.class, new ReverseVisionHttpCalloutMock());

        Id personAccountRecordTypeId =
                Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName()
                        .get('PersonAccount').getRecordTypeId();

        Account accountRec = new Account(
                RecordTypeId = personAccountRecordTypeId,
                LastName = 'test'
        );
        insert accountRec;

        Opportunity opportunityRec = new Opportunity(
                Name = 'Test',
                StageName = 'test',
                CloseDate = System.today(),
                LeadSource = 'source',
                AccountId = accountRec.Id,
                HECM_Type__c = 'test',
                Pitch_scheduled_date_time__c = System.now(),
                Ready_to_Send__c = true
        );
        insert opportunityRec;

        Test.startTest();
        Map<String, Object> status = LoanSubmissionController.getStatus(opportunityRec.Id);
        System.assert((String)status.get('__status') == 'success');
        Map<String, Object> sendToRVStatus = LoanSubmissionController.sendToRV(opportunityRec.Id);
        System.assert((String)sendToRVStatus.get('__status') == 'success');
        Test.stopTest();
    }
}