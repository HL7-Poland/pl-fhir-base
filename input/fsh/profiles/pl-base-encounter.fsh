Profile: PLBaseEncounter
Parent: Encounter
Id: pl-base-encounter
Title: "Encounter (PL)"
Description: "Bazowy profil wizyty lub pobytu"
* ^version = "0.0.1"
* type 0..1 MS
* type from PLOrganizationCellType
* actualPeriod 1..1 MS
// TODO: dischargeDispositionCode - 2.16.840.1.113883.3.4424.13.11.36 Tryb wypisu ze szpitala
