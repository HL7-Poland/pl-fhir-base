Profile: PLBaseMedicalEntity
Parent: Organization
Id: pl-base-organization-medicalEntity
Title: "Organization: MedicalProvider (PL)"
Description: "Bazowy profil podmiotu medycznego (świadczeniodawcy)"
* ^version = "0.1.0"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntity
* identifier.value 1..1 MS
* contact.address only PLBaseAddress