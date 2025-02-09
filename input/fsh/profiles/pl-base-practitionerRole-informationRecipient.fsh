Profile: PLBasePractitionerRoleInformationRecipient
Parent: PractitionerRole
Id: pl-base-practitionerole-informationrecipient
Title: "PractitionerRole: Information Recipient (PL)"
Description: "Odbiorca informacji przekazywanej w dokumencie medycznym"
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
* practitioner 1..1 MS
* practitioner only Reference(PLBasePractitioner)
* organization 1..1 MS
* organization only Reference(PLBaseOrganizationMedicalPractice or PLBaseOrganizationMedicalEntity)
* code 1..1 MS
* code from PLPractitionerRole
* specialty from PLPractitionerSpecialty

