Profile: PLBaseMedicalFacility
Parent: Location
Id: pl-base-location-medicalFacility
Title: "Location: Medical Facility (PL)"
Description: "Placówka medyczna/Miejsce udzielania świadczeń należące do określonego podmiotu medycznego"
* ^version = "0.1.0"
* identifier 1..*
* contact 1..*
* contact.telecom 1..*
* address only PLBaseAddressEu
* managingOrganization 1..1
* managingOrganization only Reference(PLBaseMedicalEntity or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell)
