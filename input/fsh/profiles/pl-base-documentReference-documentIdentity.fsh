Profile: PLBaseDocumentIdentity
Parent: DocumentReference
Id: pl-base-documentIdentity
Title: "DocumentReference: Identyfikator i wersja dokumentu medycznego"
Description: "Dane identyfikacyjne dokumentu medycznego w postaci unikalnego identyfikatora i wersji"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* version 1..1 MS
