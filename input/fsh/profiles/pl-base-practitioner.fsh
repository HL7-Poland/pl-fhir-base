Profile: PLBasePractitioner
Parent: Practitioner
Id: pl-base-practitioner
Title: "Practitioner (PL)"
Description: "Bazowy profil pracownika medycznego"
* ^version = "0.0.1"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "NPWZ różnych zawodów medycznych"
* identifier ^slicing.ordered = false
* identifier contains
  pharm 0..1 and
  doc 0..1 and
  nurse 0..1 and
  lab 0..1 and
  //TODO: other - zamienić na zasady dotyczące domyślnego slice'a (default)
  other 0..*
* identifier[pharm].system = $npwz-pharm
* identifier[doc].system = $npwz-doc
* identifier[nurse].system = $npwz-nurse
* identifier[lab].system = $npwz-lab
* name 1..*