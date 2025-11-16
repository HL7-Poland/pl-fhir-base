Profile: PLBaseServicePerformer
Parent: PractitionerRole
Id: pl-base-practitionerRole-servicePerformer
Title: "PractitionerRole: Zlecający usługę"
Description: "Dane zlecającego usługę medyczną"
* ^version = "0.1.0"
* extension contains 
  PractitionerRoleReimbursementContractIdentifier named reimbursementContractIdentifier 0..1 MS
* practitioner 1..
* practitioner only Reference(PLBasePractitioner)
* organization only Reference(PLBaseMedicalEntity or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell)
* location only Reference(PLBaseMedicalFacility)