Profile: PLBaseEncounter
Parent: Encounter
Id: pl-base-encounter
Title: "Encounter (PL)"
Description: "Bazowy profil wizyty lub pobytu"
* ^version = "0.1.0"
* type 0..1 MS
* type from PLOrganizationCellType
* actualPeriod 1..1 MS
* admission 0..1 MS
* admission.dischargeDisposition 0..1 MS
* admission.dischargeDisposition from PLDischargeDisposition
