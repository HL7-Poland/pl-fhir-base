Profile: PLBaseCatalogService
Parent: ActivityDefinition
Id: pl-base-activityDefinition-catalogService
Title: "ActivityDefinition: Usługa katalogowa"
Description: "Definicja usługi katalogowej podmiotu medycznego"
* extension contains
  ActivityDefinitionResponsibleOrganization named responsibleOrganization 0..1 MS
* url 1..1 MS
* title 1..1 MS
* status 1..1 MS
* subject[x] 0..0
* kind 1..1 MS
* kind = #Task
* code 1..1 MS
* code.coding 1..* MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Service type code choice"
* code.coding ^slicing.ordered = false
* code.coding contains
    loincCode 0..1 MS and
    icd9plCode 0..* MS
* code.coding[loincCode].system 1..1 MS
* code.coding[loincCode].system = $loinc
* code.coding[loincCode].code 1..1 MS
* code.coding[icd9plCode].system 1..1 MS
* code.coding[icd9plCode].system = $icd-9-pl
* code.coding[icd9plCode].code 1..1 MS
* intent 1..1 MS
* intent = #proposal
