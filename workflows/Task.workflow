<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Summary_to_Short_Description</fullName>
        <field>Summary__c</field>
        <formula>LEFT(Description,255)</formula>
        <name>Set Summary to Short Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Powerstandings_appointment_set</fullName>
        <apiVersion>36.0</apiVersion>
        <description>test</description>
        <endpointUrl>https://powerstandings.insidesales.com/kpi/apptsset</endpointUrl>
        <fields>Id</fields>
        <fields>OwnerId</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>john@quickreverse.com</integrationUser>
        <name>Powerstandings appointment set</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Activity Summary Display</fullName>
        <actions>
            <name>Set_Summary_to_Short_Description</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Powerstandings appointment set</fullName>
        <actions>
            <name>Powerstandings_appointment_set</name>
            <type>OutboundMessage</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Task.CallDisposition</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>captures when an appointment is set as the outcome of an outbound call</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
