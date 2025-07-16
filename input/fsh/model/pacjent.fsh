Logical: Pacjent
Parent: Base
Id: pl-lab-pacjent
Title: "Pacjent"
Description: "Dane pacjenta"
Characteristics: #can-be-target
* pesel 0..1 Identifier "Nr PESEL" "Numer PESEL"
* innyIdentyfikator 0..* Identifier "Inny identyfikator" "Inny (niż PESEL) indentyfikator"
* plec 1..1 Coding "Płeć" "Płeć"
* plec from http://hl7.org/fhir/ValueSet/administrative-gender (required)
