ValueSet: PLAdministratievGender
Id:	pl-administrativeGender
Title: "Administrative gender (PL)"
Description: "Określenie płci dla celów administracyjnych"
* $adm-gender#male "male"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "mężczyzna"
* $adm-gender#female "female"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "kobieta"
* $adm-gender#other "other"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "inna"
* $adm-gender#unknown "unknow"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "nieznana"

