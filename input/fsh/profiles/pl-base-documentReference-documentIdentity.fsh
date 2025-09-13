Profile: PLBaseDocumentIdentity
Parent: DocumentReference
Id: pl-base-documentIdentity
Title: "Identifikator i wersja dokumentu"
Description: "Dane identyfikacyjne dokumentu medycznego w postaci unikalnego identyfikatora i wersji"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* version 1..1 MS
