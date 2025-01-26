Profile: PLBasePatient
Parent: PatientEuCore
Id: pl-base-patient
Title: "Patient (PL)"
Description: "Bazowy profil pacjenta"
* ^version = "0.0.1"
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identyfikatory pacjenta"
* identifier ^slicing.ordered = false
* identifier contains
  pesel 0..1 and
  other 0..1
* identifier[pesel].system = $ids-pesel
// TODO * identifier[pesel].value dodać wymaganie 11 cyfr za pomocą FHIRPath
// TODO Warning jeśli identyfikator jest z puli "nadrzędnej", (4424.1.1, 4424.1.2 4424.1.3 4424.1.5)
* name 1..1
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.description = "Rozróżnienie pacjenta o ustalonej tożsamości od pacjenta NN"
* name ^slicing.ordered = false
* name contains
  unknown 0..1 and
  known 0..1
* name[unknown].use = #anonymous
* name[unknown].text = "NN"
* name[unknown].family 0..0
* name[unknown].given 0..0
* name[unknown].prefix 0..0
* name[unknown].suffix 0..0
* name[unknown].period 0..0
* name[unknown].name.extension.url 1..1
* name[unknown].name.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name[unknown].name.extension.valueCode 1..1
* name[unknown].name.extension.valueCode = #unknown
* name[known].given 1..2
* name[known].family 1..1
* address only PLBaseAddress
* multipleBirth[x] only integer
* managingOrganization only Reference(PLBaseOrganization)
// TODO Dodać sposób na zapisanie PESELa matki - czyli jak zapisac guardian'a w FHIRze?