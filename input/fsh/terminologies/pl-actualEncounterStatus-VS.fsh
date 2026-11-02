ValueSet: PLActualEncounterStatusVS
Id: pl-actualEncounterStatus-VS
Title: "Status wizyty lub pobytu (Encounter)"
Description: "Status wizyty lub pobytu, które już się odbyły"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* $encounter-status#in-progress
* $encounter-status#on-hold
// FIX (IG Publisher QA): code "discharge" does not exist in http://hl7.org/fhir/encounter-status ("Unknown code 'discharge'");
// the FHIR R5 code is "discharged".
* $encounter-status#discharged
* $encounter-status#completed
* $encounter-status#discontinued
* $encounter-status#entered-in-error
* $encounter-status#unknown