<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Bill_and_John_when_CTC_to_review_terms_with_LO</fullName>
        <description>Email Bill and John when CTC to review terms with LO</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Bill_to_review_terms_when_CTC</template>
    </alerts>
    <alerts>
        <fullName>Email_Bill_and_John_when_FA_review_needed</fullName>
        <description>Email Bill and John when FA review needed</description>
        <protected>false</protected>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/FA_review_needed_email</template>
    </alerts>
    <alerts>
        <fullName>Email_LO_on_the_date_appraisal_is_scheduled</fullName>
        <description>Email LO on the date appraisal is scheduled</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/notify_LO_on_date_appraisal_scheduled</template>
    </alerts>
    <alerts>
        <fullName>Email_LO_when_signed_application_recieved</fullName>
        <description>Email LO when signed application recieved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notify_LO_when_application_back</template>
    </alerts>
    <alerts>
        <fullName>Email_Opportunity_owner_when_deal_unpitchable</fullName>
        <description>Email Opportunity owner when deal unpitchable</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Unpitchable_deal_notification</template>
    </alerts>
    <alerts>
        <fullName>Email_Processing_when_appraisal_info_entered</fullName>
        <description>Email Processing when appraisal info entered</description>
        <protected>false</protected>
        <recipients>
            <recipient>Documents_Review</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_processing_to_order_appraisal</template>
    </alerts>
    <alerts>
        <fullName>Email_Sales_when_Future_deal_selected</fullName>
        <description>Email Sales when Future deal selected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Pricing_Delayed_to_Future</template>
    </alerts>
    <alerts>
        <fullName>Email_alerting_the_LO_to_be_available</fullName>
        <description>Email alerting the LO to be available for client calls</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Be_Available_to_Client</template>
    </alerts>
    <alerts>
        <fullName>Email_opportunity_owner_when_deal_is_pitchable</fullName>
        <description>Email opportunity owner when deal is pitchable</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Pitch_Ready_Template</template>
    </alerts>
    <alerts>
        <fullName>Email_pricing_when_LO_ready_for_application</fullName>
        <description>Email pricing when LO ready for application</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notify_processor_when_loan_submitted</template>
    </alerts>
    <alerts>
        <fullName>Email_request_to_kill_opportunity</fullName>
        <description>Email request to kill opportunity</description>
        <protected>false</protected>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Request_to_Closed_lost_an_opp</template>
    </alerts>
    <alerts>
        <fullName>Email_to_team_when_loans_fund</fullName>
        <description>Email to team when loans fund</description>
        <protected>false</protected>
        <recipients>
            <recipient>accounting@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Funded_loan_notification</template>
    </alerts>
    <alerts>
        <fullName>Final_Loan_Signing_scheduled_notification</fullName>
        <description>Final Loan Signing scheduled notification</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Final_loan_signing_scheduled_notification</template>
    </alerts>
    <alerts>
        <fullName>High_Priority_loan_notice</fullName>
        <description>High Priority loan notice</description>
        <protected>false</protected>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>diamond@gereverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>heather@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kasey@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/High_Priority_loan_notification</template>
    </alerts>
    <alerts>
        <fullName>New_Loan_Submission</fullName>
        <description>New Loan Submission</description>
        <protected>false</protected>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>elyssa@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>liz@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mariya@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matilyn@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notify_processor_when_loan_submitted</template>
    </alerts>
    <alerts>
        <fullName>Pricing_Request_Email</fullName>
        <description>Pricing Request Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Pricing_Submission_Email</template>
    </alerts>
    <alerts>
        <fullName>Pricing_request_email1</fullName>
        <description>Pricing request email</description>
        <protected>false</protected>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Pricing_Submission_Email</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_LO_when_FA_updated</fullName>
        <description>Send email to LO when FA updated</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>diamond@gereverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kasey@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Inform_LO_when_FA_updated</template>
    </alerts>
    <alerts>
        <fullName>Tells_LO_that_appraisal_is_in</fullName>
        <description>Tells LO that appraisal is in</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>bill@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>diamond@gereverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kasey@quickreverse.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Appraisal_in_email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Appraisal_back_to_NOW_when_value_input</fullName>
        <field>Appraisal_in_Date_time__c</field>
        <formula>Now()</formula>
        <name>Appraisal back to &quot;NOW&quot; when value input</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Capture_date_cert_in</fullName>
        <field>cert_in_date__c</field>
        <formula>TODAY()</formula>
        <name>Capture date cert in</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check_watchlist_true</fullName>
        <description>Check watchlist true</description>
        <field>Watchlist__c</field>
        <literalValue>1</literalValue>
        <name>Check watchlist true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Closed_lost_opp_moves_account_to_dead_op</fullName>
        <field>Contact_Status__c</field>
        <literalValue>Dead Opportunity</literalValue>
        <name>Closed lost opp moves account to dead op</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Counselling_Scheduled_marked_true</fullName>
        <description>Marks counseling scheduled checkbox true</description>
        <field>Counselling_Scheduled__c</field>
        <literalValue>1</literalValue>
        <name>Counselling Scheduled marked true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>High_amount_marks_high_priority_true</fullName>
        <description>If Amount field is greater than 14000 then high priority deal marked true</description>
        <field>High_Priority_Loan__c</field>
        <literalValue>1</literalValue>
        <name>High amount marks high priority true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>If_pitch_unsuccessful_mark_box_false</fullName>
        <description>Marks &quot;Was pitch Successful?&quot; box false when pitch outcome is not interested or no show</description>
        <field>Was_pitch_Successful__c</field>
        <literalValue>0</literalValue>
        <name>If pitch unsuccessful mark box false</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Move_stage_to_appraisal</fullName>
        <field>StageName</field>
        <literalValue>Appraisal</literalValue>
        <name>Move stage to appraisal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Move_stage_to_submitted</fullName>
        <description>Moves stage to submitted when submission date/time is not blank</description>
        <field>StageName</field>
        <literalValue>Submitted</literalValue>
        <name>Move stage to submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pitch_successful_when_pitch_outcome</fullName>
        <description>updates &quot;Was Pitch Successful?&quot; field to true when pitch outcome picklist value selected</description>
        <field>Was_pitch_Successful__c</field>
        <literalValue>1</literalValue>
        <name>Pitch successful when pitch outcome</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Push_Close_date_out_14_days_when_Subbed</fullName>
        <field>CloseDate</field>
        <formula>Today()+14</formula>
        <name>Push Close date out 14 days when Subbed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Push_Close_date_out_30_days</fullName>
        <field>CloseDate</field>
        <formula>today()+30</formula>
        <name>Push Close date out 30 days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Push_Close_date_out_45_Days_at_applicati</fullName>
        <field>CloseDate</field>
        <formula>today()+60</formula>
        <name>Push Close date out 45 Days at applicati</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Push_Close_date_out_50_days</fullName>
        <field>CloseDate</field>
        <formula>Today()+50</formula>
        <name>Push Close date out 50 days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Push_Close_date_out_60_days</fullName>
        <field>CloseDate</field>
        <formula>Today()+60</formula>
        <name>Push Close date out 60 days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Push_Close_date_out_7_days_when_CTC</fullName>
        <field>CloseDate</field>
        <formula>today()+60</formula>
        <name>Push Close date out 7 days when CTC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Native_Amount_field</fullName>
        <field>Amount</field>
        <formula>Estimated_Revenue__c</formula>
        <name>Update Native Amount field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_account_when_closed_won</fullName>
        <field>Contact_Status__c</field>
        <literalValue>Client</literalValue>
        <name>Update account when closed won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_amount_when_final_rev_input</fullName>
        <description>Updates the opportunity &quot;Amount&quot; field when final revenue is put in</description>
        <field>Amount</field>
        <formula>Final_Revenue_to_branch__c</formula>
        <name>Update amount when final rev input</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_commit_date</fullName>
        <field>Date_brwr_commited_to_counselling__c</field>
        <formula>Today()</formula>
        <name>Update commit date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_stage_to_Application</fullName>
        <field>StageName</field>
        <literalValue>Application</literalValue>
        <name>Update stage to Application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_stage_to_Counseling</fullName>
        <field>StageName</field>
        <literalValue>Counseling</literalValue>
        <name>Update stage to Counseling</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>capturing_funding_or_closed_lost_date</fullName>
        <field>Date_won_or_lost__c</field>
        <formula>Today()</formula>
        <name>capturing funding or closed lost date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Amount updated when expected rev changed</fullName>
        <actions>
            <name>Update_Native_Amount_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Populates expected revenue from custom ER field to native SF amount field</description>
        <formula>And(
ISCHANGED(Estimated_Revenue__c),
Or(
ISBLANK(Final_Revenue_to_branch__c), 
Final_Revenue_to_branch__c&lt;=0
)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Amount updated when final revenue changed</fullName>
        <actions>
            <name>Update_amount_when_final_rev_input</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>And(
ISCHANGED( Final_Revenue_to_branch__c ), 
Final_Revenue_to_branch__c&gt;0
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Application Stage pushes closing date out 45 days</fullName>
        <actions>
            <name>Push_Close_date_out_45_Days_at_applicati</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Application</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Application ready in RV Changes status to Application</fullName>
        <actions>
            <name>Update_stage_to_Application</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Application_Ready_in_RV__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Application ready in RV Changes status to Application</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Appraisal Stage pushes closing date out 30 days</fullName>
        <actions>
            <name>Push_Close_date_out_30_days</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Appraisal</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CTC Stage pushes closing date out 7 days</fullName>
        <actions>
            <name>Push_Close_date_out_7_days_when_CTC</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Clear to Close</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Capture date cert recieved</fullName>
        <actions>
            <name>Capture_date_cert_in</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Cert_In__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Pitch_outcome__c</field>
            <operation>equals</operation>
            <value>Moving forward No counseling needed - H2H</value>
        </criteriaItems>
        <description>populates &quot;cert in date&quot; when cert in marked true</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Capture date closed lost</fullName>
        <actions>
            <name>capturing_funding_or_closed_lost_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Funded</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Changing  FA field sends email to LO</fullName>
        <actions>
            <name>Send_email_to_LO_when_FA_updated</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>And(
ISCHANGED(Financial_Analysis_Details__c),
NOT(ISBLANK( Financial_Analysis_Details__c )) 
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Changing the FA field sends email to LO</fullName>
        <active>false</active>
        <formula>ISCHANGED(Financial_Analysis_Details__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Check watchlist if amount greater than 9k</fullName>
        <actions>
            <name>Check_watchlist_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>9000</value>
        </criteriaItems>
        <description>Check the watchlist box true when Amount field is greater than 9,000</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Counseling date%2Ftime changes stage to counseling</fullName>
        <actions>
            <name>Update_stage_to_Counseling</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Counselling_Date_time__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Counselling Stage pushes closing date out 50 days</fullName>
        <actions>
            <name>Push_Close_date_out_50_days</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Counseling</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Create Task to review when FA box checked</fullName>
        <actions>
            <name>Email_Bill_and_John_when_FA_review_needed</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Reveiw_Financial_Assesment</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Financial_Assesment_Requires_Review__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Create task for pricing when loan subbed</fullName>
        <actions>
            <name>Update_RV_for_Application</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Submit_to_processing__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Creates task for pricing when opp is subbed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Credit card info moves stage to appraisal and sends email</fullName>
        <actions>
            <name>Email_Processing_when_appraisal_info_entered</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Move_stage_to_appraisal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Name_on_Borrower_s_card__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email processing to order appraisal &amp; move opportunity stage to appraisal</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email Future Pricing when Pitchable deal marked Future Prospect</fullName>
        <actions>
            <name>Email_Sales_when_Future_deal_selected</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Pitchable_Deal__c</field>
            <operation>equals</operation>
            <value>Future Prospect</value>
        </criteriaItems>
        <description>Email Future deal when Pitchable deal marked Future Prospect</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email LO on day appraisal is scheduled</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Appraisal_Scheduled_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends email to the LO on the day that an appraisal is scheduled</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Email_LO_on_the_date_appraisal_is_scheduled</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.Appraisal_Scheduled_Date__c</offsetFromField>
            <timeLength>8</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Email LO when Final signing time changed</fullName>
        <actions>
            <name>Final_Loan_Signing_scheduled_notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends email to LO when final signing time is changed</description>
        <formula>And(
ISCHANGED( Final_signing_time__c ),
NOT(ISBLANK( Final_signing_time__c )) 
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email LO when app back</fullName>
        <actions>
            <name>Email_LO_when_signed_application_recieved</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Signed_Application_Recieved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sends email to LO when application back is checked true by processing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email LO when appraisal back</fullName>
        <actions>
            <name>Tells_LO_that_appraisal_is_in</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Final_Appraised_Value__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Final_Appraised_Value__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Sends a email to opp owner (loan officer), when Final appraised value field is filled in</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email Pricing when LO subs for application</fullName>
        <actions>
            <name>Email_pricing_when_LO_ready_for_application</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Submit_to_processing__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sends an email to pricing when LO sets up an application</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email bill and john when ctc to review terms with LO</fullName>
        <actions>
            <name>Email_Bill_and_John_when_CTC_to_review_terms_with_LO</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Check_Final_Loan_Terms_with_LO</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Clear to Close</value>
        </criteriaItems>
        <description>Sends email to bill and john to review loan terms with the LO prior to signing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email closed lost request</fullName>
        <actions>
            <name>Email_request_to_kill_opportunity</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Request_to_kill_opp__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email pricing ready when Pitchable deal marked yes</fullName>
        <actions>
            <name>Email_opportunity_owner_when_deal_is_pitchable</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pitchable_Deal__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <description>Email pricing ready when Pitchable deal marked yes</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email pricing requests</fullName>
        <actions>
            <name>Pricing_request_email1</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Pricing_request</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Request_Pricing__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>When pricing request is marked true fires a task and email to pricing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email processor when App ready in RV</fullName>
        <actions>
            <name>New_Loan_Submission</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends an email to processor</description>
        <formula>Or(
 Application_Ready_in_RV__c = True,
And(
RecordTypeId = &quot;Forward&quot;,
 Submit_to_processing__c =true
)
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email when high priority loan is true</fullName>
        <actions>
            <name>High_Priority_loan_notice</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.High_Priority_Loan__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sends email to processing, management when high priority loan is marked true</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Final appraised value fills in date%2Ftime for appraisal</fullName>
        <actions>
            <name>Appraisal_back_to_NOW_when_value_input</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Final_Appraised_Value__c</field>
            <operation>notEqual</operation>
            <value>,0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Still_a_deal_after_appraisal_in__c</field>
            <operation>equals</operation>
            <value>Appraisal in - Deal still works,Appraisal in - Deal doesn&apos;t work</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>High priority loan checked based on revenue</fullName>
        <actions>
            <name>High_amount_marks_high_priority_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>And(
Amount&gt;=14000,
 ISPICKVAL( Still_a_deal_after_appraisal_in__c , &quot;Appraisal in - Deal still works&quot;) 
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>If pitch unsuccessful mark box false</fullName>
        <actions>
            <name>If_pitch_unsuccessful_mark_box_false</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Marks the &quot;Was Pitch Successful&quot; checkbox true when pitch outcome is: Not interested or no show</description>
        <formula>OR(
ISPICKVAL( Pitch_outcome__c , &quot;Not Interested&quot;),
ISPICKVAL(Pitch_outcome__c, &quot;No Show&quot;)

)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead source updated by account</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.LeadSource</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Opportunity lead source is populated with the value from the account if blank</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New loan funded email notice</fullName>
        <actions>
            <name>Email_to_team_when_loans_fund</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Funded</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Order Case Number</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Case_Transfer__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Signed_Application_Recieved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>If Case transfer pickval is &quot;No&quot; and &quot;signed application in&quot; = True Create a task to order Case #</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Prospect Stage pushes closing date out 60 days</fullName>
        <actions>
            <name>Push_Close_date_out_60_days</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Submission Stage pushes closing date out 14 days</fullName>
        <actions>
            <name>Push_Close_date_out_14_days_when_Subbed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Submitted</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Submission date input moves stage to submitted</fullName>
        <actions>
            <name>Move_stage_to_submitted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When the submission date/time is filled in the loan is moved to submitted</description>
        <formula>NOT(ISBLANK( Submission_Date_Time__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update LO when deal is not pitchable</fullName>
        <actions>
            <name>Email_Opportunity_owner_when_deal_unpitchable</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pitchable_Deal__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update account when closed won</fullName>
        <actions>
            <name>Update_account_when_closed_won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Funded</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update account when opp stage changed</fullName>
        <active>false</active>
        <formula>Ischanged( StageName )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Verify Appraisal in</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Appraisal_Scheduled_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Appraisal Scheduled date is not blank, creates task to verify appraisal is in</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>counselling commit date auto fill</fullName>
        <actions>
            <name>Update_commit_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Counselling_Date_time__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Pitch_outcome__c</field>
            <operation>equals</operation>
            <value>Moving forward No counseling needed - H2H</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>if pitch was sucessful mark box true</fullName>
        <actions>
            <name>Pitch_successful_when_pitch_outcome</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Marks the &quot;Was Pitch Successful&quot; checkbox true when pitch outcome is commited to counselling, promised to get us existing cert, or agreed to case xfer</description>
        <formula>OR(
ISPICKVAL( Pitch_outcome__c , &quot;Promised to go to counseling&quot;),
ISPICKVAL(Pitch_outcome__c, &quot;Promised to get us existing cert&quot;),
ISPICKVAL( Pitch_outcome__c , &quot;Agreed to case transfer&quot;),
ISPICKVAL( Pitch_outcome__c , &quot;Moving forward No counseling needed - H2H&quot;)

)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>mark counseling scheduled true when date set</fullName>
        <actions>
            <name>Counselling_Scheduled_marked_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Date_brwr_commited_to_counselling__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>When Counselling date/time is filled in, automatically marks the &quot;Counseling set&quot; true.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>update acct when closed lost</fullName>
        <actions>
            <name>Closed_lost_opp_moves_account_to_dead_op</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Check_Final_Loan_Terms_with_LO</fullName>
        <assignedTo>quickreverse@sandbox</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Check Final Loan Terms with LO</subject>
    </tasks>
    <tasks>
        <fullName>Counseling_Follow_Up_Call</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please call the client to schedule the Counseling appointment.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Opportunity.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Counseling Follow Up Call</subject>
    </tasks>
    <tasks>
        <fullName>FA_needs_review</fullName>
        <assignedTo>quickreverse@sandbox</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.Pitch_scheduled_date_time__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>FA needs review</subject>
    </tasks>
    <tasks>
        <fullName>Pricing_request</fullName>
        <assignedTo>bill@quickreverse.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.Pitch_scheduled_date_time__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Pricing request</subject>
    </tasks>
    <tasks>
        <fullName>Reveiw_Financial_Assesment</fullName>
        <assignedTo>bill@quickreverse.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Reveiw Financial Assesment</subject>
    </tasks>
    <tasks>
        <fullName>Update_RV_for_Application</fullName>
        <assignedTo>bill@quickreverse.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Update RV for Application</subject>
    </tasks>
</Workflow>
