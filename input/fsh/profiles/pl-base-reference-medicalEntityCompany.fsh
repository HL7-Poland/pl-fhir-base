Profile: PLBaseReferenceMedicalEntityCompany
Parent: Reference
Id: pl-base-reference-medicalentitycompany
Title: "Reference: Medical Entity Company (PL)"
Description: "Identyfikator przedsiębiorstwa podmiotu leczeniczego"
* ^version = "0.1.0"
* reference 0..0
* type 0..0
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-regon14
* identifier.value 1..1 MS
* display 0..0