<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Capture_date_6_month_val_chk_marked_true</fullName>
        <description>Populates today&apos;s date when the &quot;Check value in 6 months&quot; checkbox is marked to true</description>
        <field>Date_check_value_marked_true__c</field>
        <formula>today()</formula>
        <name>Capture date 6 month val chk marked true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Capture_date_when_handed_off</fullName>
        <field>Handoff_Date__c</field>
        <formula>Today()</formula>
        <name>Capture date when handed off</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Powerstandings_Handoff_counter</fullName>
        <apiVersion>36.0</apiVersion>
        <endpointUrl>https://powerstandings.insidesales.com/kpi/qualopp</endpointUrl>
        <fields>Id</fields>
        <fields>LastModifiedById</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>john@quickreverse.com</integrationUser>
        <name>Powerstandings Handoff counter</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Capture date when 6 mo val check marked true</fullName>
        <actions>
            <name>Capture_date_6_month_val_chk_marked_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Check_values_in_6_months__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Captures the date that the 6 month value check is marked true</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Powerstandings Handoff counter</fullName>
        <actions>
            <name>Powerstandings_Handoff_counter</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Handed_off_by__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Counts up handoffs for powerstandings (IS.com)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>capture date when handoff</fullName>
        <actions>
            <name>Capture_date_when_handed_off</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Handed_off_by__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>fires when &quot;handoff by&quot; field not blank, captures the date in &quot;Handoff Date&quot; field</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
