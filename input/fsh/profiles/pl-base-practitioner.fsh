Profile: PLBasePractitioner
Parent: Practitioner
Id: pl-base-practitioner
Title: "Practitioner (PL)"
Description: "Bazowy profil pracownika medycznego"
* ^version = "0.0.1"
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Pule identyfikatorów praw wykonywania zawodu różnych zawodów medycznych"
* identifier ^slicing.ordered = false
* identifier contains
  pharmacistId 0..1 and
  physicianId 0..1 and
  nurseId 0..1 and
  labDiagnosticianId 0..1
* identifier[pharmacistId].system = $ids-npwz-pharm
* identifier[physicianId].system = $ids-npwz-doc
* identifier[nurseId].system = $ids-npwz-nurse
* identifier[labDiagnosticianId].system = $ids-npwz-lab
* name 1..*