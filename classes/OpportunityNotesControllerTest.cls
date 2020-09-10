/**
 * Created 07.09.2020.
 */

@IsTest
private class OpportunityNotesControllerTest {
    @IsTest
    static void testBehavior() {
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
                Pitch_scheduled_date_time__c = system.now()
        );
        insert opportunityRec;

        Map<String, Object> retrieveActiveUsersStatus = OpportunityNotesController.retrieveActiveUsers();
        System.assert((String)retrieveActiveUsersStatus.get('__status') == 'success');

        List<String> userIds = new List<String>();
        List<Object> userWraps = (List<Object>)retrieveActiveUsersStatus.get('wraps');
        for (Object rawUserWrap : userWraps) {
            Map<String, Object> userWrap = (Map<String, Object>)rawUserWrap;
            userIds.add((String)userWrap.get('id'));
        }

        Map<String, Object> saveNoteStatus = OpportunityNotesController.saveNote(new Map<String, Object>{
                'opportunityId' => opportunityRec.Id,
                'notifyUsers' => userIds,
                'note' => 'test'
        });
        System.assert((String)saveNoteStatus.get('__status') == 'success');

        Map<String, Object> retrieveNotesStatus = OpportunityNotesController.retrieveNotes(opportunityRec.Id);
        System.assert((String)retrieveNotesStatus.get('__status') == 'success');
    }
}