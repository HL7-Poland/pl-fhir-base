Profile: PLBaseReferenceMedicalEntityUnit
Parent: Reference
Id: pl-base-reference-medicalentityunit
Title: "Reference: Medical Entity Unit (PL)"
Description: "Identyfikator jednostki organizacyjnej podmiotu leczeniczego"
* ^version = "0.1.0"
* reference 0..0
* type 0..0
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntityUnit
* identifier.value 1..1 MS
* display 0..0