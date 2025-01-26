Profile: PLBasePractitionerRoleDocumentAuthor
Parent: PractitionerRole
Id: pl-base-practitionerole-documentauthor
Title: "PractitionerRole: Author (PL)"
Description: "Author dokumentu medycznego"
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "NPWZ różnych zawodów medycznych"
* identifier ^slicing.ordered = false
* identifier contains
  pharm 0..1 and
  doc 0..1 and
  nurse 0..1 and
  lab 0..1 and
//TODO: other - zamienić na zasady dotyczące domyślnego slice'a (default)
  other 0..*
* identifier[pharm].system = $npwz-pharm
* identifier[doc].system = $npwz-doc
* identifier[nurse].system = $npwz-nurse
* identifier[lab].system = $npwz-lab
* name 1..*
* practitioner 1..1 MS
* practitioner only Reference(PLBasePractitioner)
* organization 1..1 MS
* organization only 
  Reference(PLBaseOrganizationMedicalPracticeServiceEntity) or
  Reference(PLBaseOrganizationMedicalEntityUnit) or
  Reference(PLBaseOrganizationMedicalEntityCell) or
  Reference(PLBaseOrganizationPharmacy)
* code 1..1 MS
* code from PLPractitionerRole
* specialty from PLPractitionerSpecialty

