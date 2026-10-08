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
  medicalPractice 0..1
* identifier[medicalPractice].system 1..1
* identifier[medicalPractice].system from PLMedicalPracticeLocationIdentifierPoolVS
* identifier[medicalPractice].value 1..1
* mode 1..1
* mode = #instance
* contact 1..*
* contact.telecom 1..*
* address 1..1
// FIX: PLBaseAddressEu does not exist any more (the address profile was renamed to PLBaseAddress), which caused
// the SUSHI error "No definition for the type PLBaseAddressEu could be found".
* address only PLBaseAddress
* managingOrganization 1..1
// FIX: the PLBasePharmacy profile was removed from the IG, which caused the SUSHI error "No definition for the type
// PLBasePharmacy could be found". A pharmacy is now referenced through the general PLBaseOrganization profile.
* managingOrganization only Reference(PLBaseMedicalEntity or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell or PLBaseMedicalPractice or PLBaseOrganization)
