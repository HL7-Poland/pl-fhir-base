Profile: PLBaseDiagnosis
Parent: Condition
Id: pl-base-condition-diagnosis
Title: "Condition: Rozpoznanie"
Description: "Rozpoznanie"
* ^version = "0.1.0"
* category = #encounter-diagnosis
* code 1..1 MS
* code.coding 1..* MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Diagnosis code system choice"
* code.coding ^slicing.ordered = false
* code.coding contains
    icd10code 1..1 MS
* code.coding[icd10code] from PLIcd10ConditionVS
* code.coding[icd10code].system 1..1 MS
* code.coding[icd10code].system = $icd-10
* code.coding[icd10code].version 0..1 MS
* code.coding[icd10code].code 1..1 MS
* code.coding[icd10code].display 1..1 MS
* code.coding[icd10code].userSelected 0..0