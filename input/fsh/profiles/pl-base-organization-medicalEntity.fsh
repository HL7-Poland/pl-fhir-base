Profile: PLBaseOrganizationMedicalEntity
Parent: PLBaseOrganization
Id: pl-base-organization-medicalentity
Title: "Organization: MedicalProvider (PL)"
Description: "Bazowy profil podmiotu medycznego (świadczeniodawcy)"
* ^version = "0.1.0"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntity
* identifier.value 1..1 MS