CodeSystem: DIPSAuditeventTypes
Id: dips-auditevent-types-cs
Title: "AuditEvent Types code system that are used by DIPS Arena"
Description: ""
* #DIPS.IAM.Session
  * #DIPS.IAM.Session.Logon "Login in DIPS Client" "Innlogging i en eller annen DIPS sluttbrukerklient (Desktop, Mobil, osv.)"
  * #DIPS.IAM.Session.Logout "Logout from DIPS Client" "Utlogging i en eller annen DIPS sluttbrukerklient (Desktop, Mobil, osv.)"

* #DIPS.IAM.PatientAccess 
  * #DIPS.IAM.PatientAccess.Activate
  * #DIPS.IAM.PatientAccess.DeActivate

* #DIPS.EHR.Document
  * #DIPS.EHR.Document.DocumentMetadata "Document metdata" "Dokumentdato, tittel, forfatter, etc. Inkluderer visning av dokumentliste (query)"
  * #DIPS.EHR.Document.DocumentContent "Document Content" "Dokumentinnhold"

* #DIPS.IAM.Reservations "DIPS Arena Reservations" "Audit events from DIPS Arena Reservations module"
  * #DIPS.IAM.Reservations.Reservation "Reservation" "Reservation data (NO: sperringer)"
  * #DIPS.IAM.Reservations.Exemption "Exemption" "Exemption data (NO: Unntak/fritak fra sperre)"

* #DIPS.IAM.Admin
  * #DIPS.IAM.Admin.User "DIPS User" "DIPS bruker"
  * #DIPS.IAM.Admin.UserRole "DIPS UserRole" "DIPS brukerrolle. Inkluderer hendelser knyttet til endring av tilganger for brukerrollen."
  * #DIPS.IAM.Admin.AccessProfile "DIPS AccessProfile" "DIPS tilgangsprofil"

// Mønster
// * #DIPS.<ProductFamiliy>.<Module/prodouct>
//   * #DIPS.<ProductFamiliy>.<Module/prodouct>.<Eventtype>



  