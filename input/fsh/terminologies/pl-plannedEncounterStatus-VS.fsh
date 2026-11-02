ValueSet: PLPlannedEncounterStatusVS
Id: pl-plannedEncounterStatus-VS
Title: "Status planowanej wizyty lub pobytu (Encounter)"
Description: "Status planowanej wizyty lub pobytu"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* $encounter-status#planned
* $encounter-status#cancelled
* $encounter-status#entered-in-error
* $encounter-status#unknown