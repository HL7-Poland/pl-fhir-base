Profile: PLBaseLocationMedicalFacility
Parent: Location
Id: pl-base-location-medicalfacility
Title: "Location: Medical Facility (PL)"
Description: "Placówka medyczna/Miejsce udzielania świadczeń należące do określonego podmiotu medycznego"
* ^version = "0.0.1"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Różne rodzaje miejsc udzielania świadczeń"
* identifier ^slicing.ordered = false
* identifier contains
  orgUnit 0..1 and
  orgCell 0..1 and
  other 0..1
* identifier[orgUnit].system = $ids-orgUnit
* identifier[orgCell].system = $ids-orgCell
* type ^patternCodeableConcept.coding.system = $orgCell-type
* contact 1..
* managingOrganization 1..
* managingOrganization only Reference(PLBaseMedicalProvider)