Profile: PLBasePractitioner
Parent: Practitioner
Id: pl-base-practitioner
Title: "Practitioner: Pracownik medyczny"
Description: "Dane pracownika medycznego"
// Dodać regułę FHIRPath sprawdzającą spójność identifier i qualification.identifier
* ^version = "0.1.0"
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
* name 1..1
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #open
* qualification ^slicing.description = "Zawody i specjalności medyczne"
* qualification ^slicing.ordered = false
* qualification contains
  FARM 0..1 and
  LEK 0..1 and
  LEKD 0..1 and
  FEL 0..1 and
  PIEL 0..1 and
  POL 0..1 and
  DLAB 0..1 and
  TFARM 0..1 and
  specialty 0..*
* qualification[FARM].identifier.system = $ids-npwz-pharm
* qualification[FARM].identifier.value 1..1
* qualification[FARM].code.coding.system = $medical-profession
* qualification[FARM].code.coding.code = #FARM
* qualification[LEK].identifier.system = $ids-npwz-doc
* qualification[LEK].identifier.value 1..1
* qualification[LEK].code.coding.system = $medical-profession
* qualification[LEK].code.coding.code = #LEK
* qualification[LEKD].identifier.system = $ids-npwz-doc
* qualification[LEKD].identifier.value 1..1
* qualification[LEKD].code.coding.system = $medical-profession
* qualification[LEKD].code.coding.code = #LEKD
* qualification[FEL].code.coding.system = $medical-profession
* qualification[FEL].code.coding.code = #FEL
* qualification[PIEL].identifier.system = $ids-npwz-nurse
* qualification[PIEL].identifier.value 1..1
* qualification[PIEL].code.coding.system = $medical-profession
* qualification[PIEL].code.coding.code = #PIEL
* qualification[POL].identifier.system = $ids-npwz-nurse
* qualification[POL].identifier.value 1..1
* qualification[POL].code.coding.system = $medical-profession
* qualification[POL].code.coding.code = #POL
* qualification[DLAB].identifier.system = $ids-npwz-lab
* qualification[DLAB].identifier.value 1..1
* qualification[DLAB].code.coding.system = $medical-profession
* qualification[DLAB].code.coding.code = #DLAB
* qualification[TFARM].code.coding.system = $medical-profession
* qualification[TFARM].code.coding.code = #TFARM
* qualification[specialty].identifier 0..0
* qualification[specialty].code.coding.system = $practitioner-specialty
* qualification[specialty].code.coding.code 1..1
