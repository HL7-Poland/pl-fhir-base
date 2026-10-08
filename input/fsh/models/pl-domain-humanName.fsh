Logical: PLDomainHumanName
Parent: EHDSHumanName
Id: pl-domain-humanName
Title: "HumanName: Imię i nazwisko (model domenowy)"
Description: "Domain model of a person's name in Polish medical records. Specialises EHDSHumanName from the EHDS Common Logical Models."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy imienia i nazwiska osoby w polskiej dokumentacji medycznej. Specjalizacja klasy EHDSHumanName z modeli logicznych EHDS (EHDS Common Logical Models).]])

// FIX: "family" is already defined in the parent EHDSHumanName (string); it was redefined here, which caused the SUSHI error
// "Cannot define element family ... because it has already been defined". It is now a constraint on the inherited element.
* family 1..1
* family ^short = "Family name"
* family ^definition = "Family name as a single string, also when it consists of two parts."
* family insert PLTranslation([[Nazwisko]], [[Nazwisko jako jeden ciąg znaków, także gdy jest dwuczłonowe.]])

// FIX: "given" is already defined in the parent EHDSHumanName (string); it was redefined here, which caused the SUSHI error
// "Cannot define element given ... because it has already been defined". It is now a constraint on the inherited element.
* given 1..2
* given ^short = "Given names"
* given ^definition = "First given name (mandatory) and optional second given name."
* given insert PLTranslation([[Imiona]], [[Pierwsze imię obowiązkowo, drugie opcjonalnie.]])
