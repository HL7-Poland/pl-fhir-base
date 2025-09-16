Profile: PLBasePlannedEncounter
Parent: Encounter
Id: pl-base-plannedEncounter
Title: "Encounter: Planowana wizyta/pobyt"
Description: "Bazowy profil planowanej wizyty lub pobytu"
* ^version = "0.1.0"
* status from PLPlannedEncounterStatusVS
* type 1..1 MS
* type from PLMedicalEntityCellTypeVS
* subject 1..1 MS
* subject only Reference(PLBasePatient)
* serviceProvider only Reference(PLBaseMedicalEntity or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell)
* location.location only Reference(PLBaseMedicalFacility)