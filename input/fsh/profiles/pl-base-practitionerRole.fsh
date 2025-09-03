Profile: PLBasePractitionerRole
Parent: PractitionerRole
Id: pl-base-practitionerRole
Title: "PractitionerRole: Author (PL)"
Description: "Bazowy profil roli pracownika medycznego"
* ^version = "0.1.0"
* extension contains 
  PractitionerRoleReimbursementContractIdentifier named reimbursementContractIdentifier 0..1 MS
* practitioner 0..1 MS
* practitioner only Reference(PLBasePractitioner)
* organization 0..1 MS
* organization only Reference(PLBaseMedicalEntity or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell or PLBasePharmacy)
* code 1..1 MS
* code from PLMedicalProfessionVS
* specialty from PLPractitionerSpecialtyVS
