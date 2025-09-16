ValueSet: PLAgeUnitVS
Id: pl-ageUnit-VS
Title: "Kody jednostek wieku (AgeUnit)"
Description: "Kody jednostek wieku oparte na słowniku UCUM"
* $ucum#a "year"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "rok(lat)"
* $ucum#mo "month"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "miesiąc(miesięcy)"
* $ucum#wk "week"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "tydzień(tygodni)"
* $ucum#d "day"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "dzień(dni)"
