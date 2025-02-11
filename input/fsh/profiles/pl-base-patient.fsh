Profile: PLBasePatient
Parent: PatientEuCore
Id: pl-base-patient
Title: "Patient (PL)"
Description: "Bazowy profil pacjenta"
* ^version = "0.1.0"
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identyfikatory pacjenta"
* identifier ^slicing.ordered = false
* identifier contains
  pesel 0..1 MS
* identifier[pesel].system = $ids-pesel
* identifier[pesel].value 1..1 MS
* name 1..1 MS
* address only PLBaseAddress
* contact.address only PLBaseAddress
* multipleBirth[x] only integer
* generalPractitioner only Reference(PLBaseOrganization or PLBasePractitionerRole or PLBasePractitioner) 
* managingOrganization only Reference(PLBaseOrganization)

// TODO:
// identifier[pesel].value dodać wymaganie 11 cyfr za pomocą FHIRPath
// Warning jeśli identyfikator jest z puli "nadrzędnej", (4424.1.1, 4424.1.2 4424.1.3 4424.1.5)
// Dodać sposób na zapisanie PESELa matki - czyli jak zapisac guardian'a w FHIRze?