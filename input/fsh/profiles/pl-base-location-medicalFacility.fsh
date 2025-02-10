Profile: PLBaseLocationMedicalFacility
Parent: Location
Id: pl-base-location-medicalfacility
Title: "Location: Medical Facility (PL)"
Description: "Placówka medyczna/Miejsce udzielania świadczeń należące do określonego podmiotu medycznego"
* ^version = "0.1.0"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Różne rodzaje miejsc udzielania świadczeń"
* identifier ^slicing.ordered = false
* identifier contains
  medicalEntityUnit 0..1 and
  medicalEntityCell 0..1
* identifier[medicalEntityUnit].system = $ids-medicalEntityUnit
* identifier[medicalEntityCell].system = $ids-medicalEntityCell
* type ^patternCodeableConcept.coding.system = $ids-medicalEntityCell
* telecom 1..*
* managingOrganization 1..1
* managingOrganization only Reference(PLBaseOrganizationMedicalEntity)