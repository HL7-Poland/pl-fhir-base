Profile: PLBaseMedicalEntityUnit
Parent: Organization
Id: pl-base-organization-medicalEntityUnit
Title: "Organization: Jednostka organizacyjna"
Description: "Jednostka organizacyjna podmiotu leczniczego (wg RPWDL)"
* ^version = "0.1.0"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntityUnit
* identifier.value 1..1 MS
* name 1..1 MS
* contact 1..* MS
* contact.telecom 1..* MS
* contact.address 1..1 MS
* partOf 1..1 MS
* partOf only Reference(PLBaseMedicalEntity)
* partOf.reference 0..1 MS
* partOf.identifier 0..1 MS
* partOf.identifier.system 1..1 MS
* partOf.identifier.system = $ids-medicalEntity
* partOf.identifier.value 1..1 MS

