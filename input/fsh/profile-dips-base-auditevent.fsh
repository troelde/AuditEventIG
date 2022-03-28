Alias: $AET =	http://terminology.hl7.org/CodeSystem/audit-entity-type
Alias: $OBR = http://terminology.hl7.org/CodeSystem/object-role

Profile: DIPS_AuditEvent_EHR
Id: DIPS-AuditEvent-EHR
Parent: No_AuditEvent
Title: "AuditEvent profile Create, Update and Delete by DIPS Arena EHR/PAS"
Description: "AuditEvent profile Create, Update and Delete EHR"
* id 1..1
* type 1..1
* recorded 1..1
* action 1..1
* outcome 1..1
* type from DIPSAuditEventTypeValueSet (required) 
* subtype from DIPSAuditEventTypeValueSet (required) 

ValueSet: DIPSAuditEventTypeValueSet 
Id: DipsAuditEventTypeVS
Title: "DIPS AuditEvent Types Value Set"
Description: "Value set used for defining DIPS audit events in Arena"
* include codes from system DIPSAuditeventTypes

