Profile: PLBaseHumanName
Parent: HumanName
Id: pl-base-humanName
Title: "HumanName (PL)"
Description: "Name of a person in the European Union, adapted to Polish medical records."
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Imię i nazwisko osoby w Unii Europejskiej, dostosowane do polskiej dokumentacji medycznej.]])

* . ^short = "Name of a person"
* . ^definition = "Name of a person: family name and given name(s)."
* . insert PLTranslation([[Imię i nazwisko osoby]], [[Imię i nazwisko osoby: nazwisko oraz imię (imiona).]])

* family 1..1
* family ^short = "Family name"
* family ^definition = "Family name as a single string, also when it consists of two parts."
* family insert PLTranslation([[Nazwisko]], [[Nazwisko jako jeden ciąg znaków, także gdy jest dwuczłonowe.]])

* given 1..2
* given ^short = "Given names"
* given ^definition = "First given name and optional second given name."
* given insert PLTranslation([[Imiona]], [[Pierwsze imię oraz opcjonalnie drugie imię.]])
