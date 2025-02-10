Profile: PLBaseReferenceMedicalEntity
Parent: Reference
Id: pl-base-reference-medicalentity
Title: "Reference: Medical Entity (PL)"
Description: "Identyfikator podmiotu leczeniczego"
* ^version = "0.1.0"
* reference 0..0
* type 0..0
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntity
* identifier.value 1..1 MS
* display 0..0