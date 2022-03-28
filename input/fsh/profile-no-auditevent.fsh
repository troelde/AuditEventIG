Profile: No_AuditEvent
Parent: AuditEvent
Id: no-auditevent
Title: "no-auditevent"
Description: ""
* extension contains CorrelationIDExtension named corrIDExt 0..1
* agent
  * who.extension contains 
        OtherID named otherId 0..* and
        AssuranceLevel named assurance 0..1


Extension: CorrelationIDExtension
Id: CorrelationIDExtensionId
Title: "Correlation-ID extension"
Description: "Aka. Request-ID in a call chain"
* value[x] only string

Extension: OtherID
Id: OtherID
Title: "Other ID"
Description: ""
* value[x] only Identifier

Extension: AssuranceLevel
Id: AssuranceLevel
Title: "Assurance level coding"
Description: ""
* value[x] only Coding