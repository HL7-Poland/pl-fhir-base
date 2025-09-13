Extension: PatientIdentifierOfMother
Id: patient-identifierOfMother
Title: "Patient: Identifier of mother (PL)"
Description: "Identyfikator matki (np. PESEL) jako identyfikator noworodka"
Context: Patient
* value[x] only Identifier
* valueIdentifier.system 1..1 MS
* valueIdentifier.value 1..1 MS