Profile: PLBaseDocument
Parent: Bundle
Id: pl-base-bundle-document
Title: "Bundle: document (PL)"
Description: "Dokument medyczny"
* meta.security from PLConfidentialityCodeVS // dodać slicing
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* type = #document
* entry 1..* MS // dodać slicing, że musi być jedno Composition?
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
