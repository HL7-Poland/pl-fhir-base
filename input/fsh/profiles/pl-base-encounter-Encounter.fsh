Profile: PLBaseEncounter
Parent: Encounter
Id: pl-base-Encounter
Title: "Encounter: Wizyta/pobyt"
Description: "Bazowy profil wizyty lub pobytu"
* ^version = "0.1.0"
* type 0..1 MS
* type from PLMedicalEntityCellTypeVS
* subject 1..1 MS
* subject only Reference(PLBasePatient)
* basedOn ^slicing.discriminator.type = #value
* basedOn ^slicing.discriminator.path = "profile"
* basedOn ^slicing.rules = #open
* basedOn ^slicing.description = "PLBaseServiceOrder"
* basedOn ^slicing.ordered = false
* basedOn contains
    serviceOrder 0..* MS
* basedOn[serviceOrder] only Reference(PLBaseServiceOrder)
* partOf only Reference(PLBaseEncounter)
* serviceProvider only Reference(PLBaseMedicalEntity or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell)
* actualPeriod 1..1 MS
* diagnosis 1..* MS
* diagnosis.condition 1..1
* diagnosis.condition only CodeableReference(PLBaseDiagnosis)
* diagnosis.condition.concept 0..0
* admission 0..1 MS
* admission.dischargeDisposition 0..1 MS
* admission.dischargeDisposition from PLDischargeDispositionVS
* location.location only Reference(PLBaseMedicalFacility)