ValueSet: PLAdministrativeGenderVS
Id:	pl-administrativeGender-VS
Title: "Płeć pacjenta (AdministrativeGender)"
Description: "Określenie płci pacjenta dla celów administracyjnych"
* $adm-gender#male "male"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "Mężczyzna"
* $adm-gender#female "female"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "Kobieta"
* $adm-gender#other "other"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "Inna"
* $adm-gender#unknown "unknown"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "Nieznana"
