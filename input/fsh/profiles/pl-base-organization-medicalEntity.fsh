Profile: PLBaseMedicalEntity
Parent: Organization
Id: pl-base-organization-medicalEntity
Title: "Organization: Podmiot medyczny"
Description: "Dane podmiotu medycznego (świadczeniodawcy)"
* ^version = "0.1.0"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntity
* identifier.value 1..1 MS
* name 1..1
* contact.address only PLBaseAddressEu