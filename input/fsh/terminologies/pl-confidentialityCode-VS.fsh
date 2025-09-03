ValueSet: PLConfidentialityCodeVS
Id: pl-confidentialityCode-VS
Title: "Poziom poufności (ConfidentialityCode)"
Description: "Kod poziomu poufności danych (dokumentu lub innego zasobu)"
* $v3-confidentiality#N "normal"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "podstawowy"
* $v3-confidentiality#R "restricted"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "podwyższony"
* $v3-confidentiality#V "very restricted"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "najwyższy"
