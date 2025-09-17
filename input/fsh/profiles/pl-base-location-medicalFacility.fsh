Profile: PLBaseMedicalFacility
Parent: Location
Id: pl-base-location-medicalFacility
Title: "Location: Placówka medyczna"
Description: "Placówka medyczna/Miejsce udzielania świadczeń należące do określonego podmiotu medycznego"
* ^version = "0.1.0"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identyfikatory miejsc udzielania świadczeń vs. inne identyfikatory placówek"
* identifier ^slicing.ordered = false
* identifier contains
  medicalPractice 0..1 MS
* identifier[medicalPractice].system 1..1 MS
* identifier[medicalPractice].system from PLMedicalPracticeLocationIdentifierPoolVS
* identifier[medicalPractice].value 1..1 MS
* contact 1..*
* contact.telecom 1..*
* address 1..1 MS
* address only PLBaseAddressEu
* managingOrganization 1..1
* managingOrganization only Reference(PLBaseMedicalEntity or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell or PLBaseMedicalPractice or PLBasePharmacy)
