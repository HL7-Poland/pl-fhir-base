Profile: PLBaseMedicalEntityIdentity
Parent: Reference
Id: pl-base-reference-medicalEntityIdentity
Title: "Reference: Medical Entity Identity (PL)"
Description: "Identyfikator podmiotu leczniczego"
* ^version = "0.1.0"
* reference 0..1
// * reference only Reference(PLBaseMedicalEntity)
* type 0..0
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntity
* identifier.value 1..1 MS
* display 0..0