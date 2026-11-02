ValueSet: PLConfidentialityCodeVS
Id: pl-confidentialityCode-VS
Title: "Poziom poufności (ConfidentialityCode)"
Description: "Kod poziomu poufności danych (dokumentu lub innego zasobu)"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* $v3-confidentiality#N "normal"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "podstawowy"
* $v3-confidentiality#R "restricted"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "podwyższony"
* $v3-confidentiality#V "very restricted"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "najwyższy"
