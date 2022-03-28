Instance: TokenMapping
InstanceOf: No_AuditEvent
Usage: #example
Title: "TokenMapping"
Description: ""
* id = "e3fb7e4c-d532-4b3f-9937-1eed5a9c8923"
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
This example shows the token mapping (JWT/SAML)
</div>
"""
* text.status = #additional
* type = http://terminology.hl7.org/CodeSystem/audit-event-type#rest
* recorded = "2022-02-20T21:10:00+01:00"
* extension[CorrelationIDExtension].valueString = "<HTTP header correlation-ID>"
* agent[0]
  * requestor = true
  * who
    * identifier
      * value = "<subject:id>"
      * system = "<subject:system>"
      * assigner.identifier.value = "<subject:assigner>"
    * display = "<subject:name>"
    * extension[otherId][0].valueIdentifier
      * value = "<subject:qualification:id>"
      * system = "<subject:qualification:system>"
      * assigner.identifier.value = "<subject:qualification:assigner>"
    * extension[otherId][1].valueIdentifier
      * value = "<subject:national-identifier:id>"
      * system = "<subject:national-identifier:system>"
      * assigner.identifier.value = "<subject:national-identifier:assigner>"
    * extension[AssuranceLevel][0].valueCoding
      * code = #<subject:assurance-level:id>
      * system = "<subject:assurance-level:system>"
      * display = "<subject:assurance-level:name>"        
  * role[0]
    * coding[0]
      * code = #<subject:qualification-role:id>
      * system = "<subject:qualification-role:system>"
      * display = "<subject:qualification-role:name>"
  * role[1]
    * coding[0]
      * code = #<subject:role:id>
      * system = "<subject:role:system>"
      * display = "<subject:role:name>"
  * role[2]
    * coding[0]
      * code = #<subject:functional-role:id>
      * system = "<subject:functional-role:system>"
      * display = "<subject:functional-role:name>"
  * role[3]
    * coding[0]
      * code = #<subject:application-role:id>
      * system = "subject:application-role:system>"
      * display = "<subject:application-role:name>"      
  * policy[0] = "985ad665-97fc-4c37-9b17-4da7dcca3d15" // <URL-encoded JWT.jti>
  * purposeOfUse[0]
    * coding[0]
      * code = #<purpose:id>
      * system = "<purpose:system>"
      * display = "<purpose:name>"
    * text = "<dips:purpose:description>"
  * purposeOfUse[1]
    * coding[0]
      * code = #<purpose-local:id>
      * system = "<purpose-local:system>"
      * display = "<purpose-local:name>"  
      * userSelected = true
    * text = "<dips:purpose-local:description>"
* source[0]
  * observer
    * display = "An observer"
