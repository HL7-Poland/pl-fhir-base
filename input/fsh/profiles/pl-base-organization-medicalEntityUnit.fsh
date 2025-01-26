Profile: PLBaseOrganizationMedicalEntityUnit
Parent: PLBaseOrganization
Id: pl-base-organization-medicalentityunit
Title: "Organization: Medical Entity Unit (PL)"
Description: "Jednostka organizacyjna podmiotu leczniczego"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntityUnit
* identifier.value 1..1 MS
* name 1..1 MS
* contact 1..1 MS
* contact.telecom 1..1 MS
* address 1..1 MS
* partOf 1..1 MS
* partOf only PLBaseReferenceMedicalEntityCompany
