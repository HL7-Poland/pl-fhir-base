Profile: PLBaseDocument
Parent: Bundle
Id: pl-base-bundle-document
Title: "Bundle: Dokument medyczny"
Description: "Dokument medyczny w standardzie HL7 FHIR"
* meta 1..1 MS
* meta.security 1..* MS
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = "system"
* meta.security ^slicing.rules = #open
* meta.security ^slicing.description = "Confidentiality code and other security labels"
* meta.security ^slicing.ordered = false
* meta.security contains
    confidentialityCode 1..1 MS
* meta.security[confidentialityCode] from PLConfidentialityCodeVS
* meta.security[confidentialityCode].system = $v3-confidentiality
* meta.security[confidentialityCode].code 1..1 MS
* meta.security[confidentialityCode].display 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* type = #document
* entry 1..* MS
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Composition mandatory"
* entry ^slicing.ordered = false
* entry contains
    composition 1..1 MS
* entry[composition].resource only PLBaseComposition
