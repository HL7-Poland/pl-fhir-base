Profile: PLBaseServiceOrder
Parent: ServiceRequest
Id: pl-base-serviceRequest-order
Title: "Service Request: Order (PL)"
Description: "Zlecenie usługi medycznej"
* ^version = "0.1.0"
* identifier 1..* MS
* intent = #order
* code 1..1 MS
* code.reference 0..1 MS
* code.concept 0..1 MS
* code.concept.coding ^slicing.discriminator.type = #value
* code.concept.coding ^slicing.discriminator.path = "system"
* code.concept.coding ^slicing.rules = #open
* code.concept.coding ^slicing.description = "Kod zlecanej usługi medycznej"
* code.concept.coding ^slicing.ordered = false
* code.concept.coding contains
    loincCode 0..1 MS and
    icd9plCode 0..1 MS
* code.concept.coding[loincCode].system 1..1 MS
* code.concept.coding[loincCode].system = $loinc
* code.concept.coding[loincCode].version 0..1 MS
* code.concept.coding[loincCode].code 1..1 MS
* code.concept.coding[loincCode].display 1..1 MS
* code.concept.coding[icd9plCode].system 1..1 MS
* code.concept.coding[icd9plCode].system = $icd-9-pl
* code.concept.coding[icd9plCode].version 0..1 MS
* code.concept.coding[icd9plCode].code 1..1 MS
* code.concept.coding[icd9plCode].display 1..1 MS
* subject only Reference(PLBasePatient)
* encounter only Reference(PLBaseActualEncounter)
* authoredOn 1..1 MS
* requester 1..1 MS
* requester only Reference(PLBaseServiceRequester)
* insurance only Reference(PLBaseCoverage)
