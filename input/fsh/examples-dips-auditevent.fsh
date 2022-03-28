Instance: AuditEventCreateReservation
InstanceOf: DIPS_AuditEvent_EHR
Usage: #example
Title: "AuditEvent example for Create Reservation"
Description: "May also be used for Update or Delete"
* id = "3068e19d-a981-45da-a43c-bdf339512926"
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
This is an example of a create reservation event, but may as well be used in an Update or Delete action.
</div>
"""
* text.status = #additional
* type = DIPSAuditeventTypes#DIPS.IAM.Reservations
* subtype =  DIPSAuditeventTypes#DIPS.IAM.Reservations.Reservation
* recorded = "2022-02-20T21:10:00+01:00"
* action = http://hl7.org/fhir/audit-event-action#C
* extension[CorrelationIDExtension].valueString = "<HTTP header correlation-ID>"
* outcome = #0
* agent[0]
  * requestor = true
  * who
    * identifier
      * value = "<sub-attribute>"
    * extension[otherId][0].valueIdentifier
      * value = "<dips-userroleid>"
      * type[0] = DIPSIDTypesCS#DIPSUserRoleID
    * extension[otherId][1].valueIdentifier
      * value = "<dips-usernamed>"
      * type[0] = DIPSIDTypesCS#DIPSUserName      
  * network
    * address = "<IP-address user device if available>"
    * type = #2
  * policy[0] = "985ad665-97fc-4c37-9b17-4da7dcca3d15" // <URL-encoded JWT.jti>
* source[0]
  * observer
    * identifier
      * value = "<Fully qualified type name>"
      * type[0] = DIPSIDTypesCS#FQN // Fully qualified name 
// Pasient      
* entity[0]
  * type = $AET#1 "Person" // Person
  * role = $OBR#1 // Patient  
  * what
    * identifier
      * value = "<DIPS PasientID>"  
      * type[0] = DIPSIDTypesCS#DIPSPersonID
// ID to Reservation      
* entity[1]      
  * type = $AET#2 // System object
  * what
    * identifier
      * value = "<ReservationUUID>"
      * system = "urn:ietf:rfc:3986"
      * type[0] = DIPSIDTypesCS#Reservation
// ID to change log item
* entity[2]      
  * type = $AET#2 // System object
  * what
    * identifier
      * value = "<ChangeLogUUID>"
      * system = "urn:ietf:rfc:3986"
      * type[0] = DIPSIDTypesCS#ReservationChangeLog      

Instance: AuditEventViewReservationOrExemption
InstanceOf: DIPS_AuditEvent_EHR
Usage: #example
Title: "AuditEvent example for viewing reservation"
Description: "Used to denote that a user open reservation and exemption view on a specific patient."
* id = "3068e19d-a981-45da-a43c-bdf33951292"
* type = DIPSAuditeventTypes#DIPS.IAM.Reservations
// No subtype because the view will containt both reservations and exemptions
* recorded = "2022-02-20T21:10:00+01:00"
* action = http://hl7.org/fhir/audit-event-action#R // Read = View
* extension[CorrelationIDExtension].valueString = "<HTTP header correlation-ID>"
* outcome = #0
* agent[0]
  * requestor = true
  * who
    * identifier
      * value = "<sub-attribute>"
    * extension[otherId][0].valueIdentifier
      * value = "<dips-userroleid>"
      * type[0] = DIPSIDTypesCS#DIPSUserRoleID
    * extension[otherId][1].valueIdentifier
      * value = "<dips-usernamed>"
      * type[0] = DIPSIDTypesCS#DIPSUserName      
  * network
    * address = "<IP-address user device if available>"
    * type = #2
  * policy[0] = "985ad665-97fc-4c37-9b17-4da7dcca3d15" // <URL-encoded JWT.jti>
* source[0]
  * observer
    * identifier
      * value = "<Fully qualified type name>"
      * type[0] = DIPSIDTypesCS#FQN // Fully qualified name 
// Pasient      
* entity[0]
  * type = $AET#1 // Person
  * role = $OBR#1 // Patient  
  * what
    * identifier
      * value = "<DIPS PasientID>"  
      * type[0] = DIPSIDTypesCS#DIPSPersonID