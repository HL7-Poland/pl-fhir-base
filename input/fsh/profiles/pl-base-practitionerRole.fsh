Profile: PLBasePractitionerRole
Parent: PractitionerRole
Id: pl-base-practitionerRole
Title: "PractitionerRole: Author (PL)"
Description: "Bazowy profil roli pracownika medycznego"
* ^version = "0.1.0"
* extension contains 
  PractitionerRoleReimbursementContractIdentifier named reimbursementContractIdentifier 0..1 MS
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Pule identyfikatorów praw wykonywania zawodu różnych zawodów medycznych"
* identifier ^slicing.ordered = false
* identifier contains
  pharmacistId 0..1 and
  physicianId 0..1 and
  nurseId 0..1 and
  labDiagnosticianId 0..1
* identifier[pharmacistId].system = $ids-npwz-pharm
* identifier[physicianId].system = $ids-npwz-doc
* identifier[nurseId].system = $ids-npwz-nurse
* identifier[labDiagnosticianId].system = $ids-npwz-lab
* practitioner 0..1 MS
* practitioner only Reference(PLBasePractitioner)
* organization 0..1 MS
* organization only Reference(PLBaseOrganization) // or Reference(PLBaseOrganizationMedicalEntityUnit) or Reference(PLBaseOrganizationMedicalEntityCell) or Reference(PLBaseOrganizationPharmacy)
* code 1..1 MS
* code from PLPractitionerRole
* specialty from PLPractitionerSpecialty

