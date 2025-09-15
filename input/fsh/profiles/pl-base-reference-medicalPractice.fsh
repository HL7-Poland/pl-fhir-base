Profile: PLBaseReferenceMedicalPractice
Parent: Reference
Id: pl-base-reference-medicalPractice
Title: "Reference: Medical Practice (PL)"
Description: "Identyfikator praktyki zawodowej nadany przez właściwą izbę lekarską lub izbę pielęgniarek i połonych"
* ^version = "0.1.0"
* reference 0..0
* type 0..0
* identifier 1..1 MS
* identifier 1..1 MS
* identifier.system from PLMedicalPracticeIdentifierPoolVS
* identifier.value 1..1 MS
* display 0..0