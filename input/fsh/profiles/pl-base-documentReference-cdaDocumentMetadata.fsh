Profile: PLBaseCdaDocumentMetadata
Parent: DocumentReference
Id: pl-base-cdaDocumentMetadata
Title: "DocumentReference: Metadane dokumentu medycznego HL7 CDA"
Description: "Metadane dokumentu medycznego zgodnego z PIK HL7 CDA"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* version 1..1 MS
* type 1..1 MS
* type.coding 1..* MS
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Typ dokumentu medycznego"
* type.coding ^slicing.ordered = false
* type.coding contains
    loincDocumentType 1..1 MS and
    p1DocumentType 1..1 MS
* type.coding[loincDocumentType].system 1..1 MS
* type.coding[loincDocumentType].system = $loinc
* type.coding[loincDocumentType].code 1..1 MS
* type.coding[loincDocumentType].code from $fhir-document-type
* type.coding[p1DocumentType].system 1..1 MS
* type.coding[p1DocumentType].system = $p1-document-class
* type.coding[p1DocumentType].code 1..1 MS
* type.coding[p1DocumentType].code from PLP1DocumentTypeVS