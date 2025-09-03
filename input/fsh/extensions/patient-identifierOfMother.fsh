Extension: PatientIdentifierOfMother
Id: patient-identifierOfMother
Title: "Patient: Identifier of mother (PL)"
Description: "Identyfikator matki jako identyfikator noworodka"
Context: Patient
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^slicing.description = "Różne pule identyfikatorów"
* extension ^slicing.ordered = false
* extension contains
    pesel 0..1 MS
* extension[pesel].value[x] only Identifier
* extension[pesel].valueIdentifier.system = $ids-pesel
* extension[pesel].valueIdentifier.value 1..1 MS