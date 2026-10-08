Logical: PLDomainLocation
Parent: EHDSLocation
Id: pl-domain-location
Title: "Location: Lokalizacja (model domenowy)"
Description: "Domain model of a location in Polish medical records, i.e. a physical place where healthcare services may be provided. Specialises EHDSLocation from the EHDS Common Logical Models."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy lokalizacji w polskiej dokumentacji medycznej, czyli fizycznego miejsca, w którym mogą być udzielane świadczenia opieki zdrowotnej. Specjalizacja klasy EHDSLocation z modeli logicznych EHDS (EHDS Common Logical Models).]])

* identifier 0..*
* identifier ^short = "Identifiers of the location"
* identifier ^definition = "Identifiers of the location."
* identifier insert PLTranslation([[Identyfikatory lokalizacji]], [[Identyfikatory lokalizacji.]])

* name 1..1
* name ^short = "Name of the location"
* name ^definition = "Name of the location. Mandatory."
* name insert PLTranslation([[Nazwa lokalizacji]], [[Nazwa lokalizacji. Obowiązkowa.]])

// UML: type: Coding[0..*]; the inherited EHDS element is a CodeableConcept, which cannot be constrained to Coding
* type 0..*
* type ^short = "Type of the location"
* type ^definition = "Type of the location, coded with values from a code system."
* type insert PLTranslation([[Rodzaj lokalizacji]], [[Rodzaj lokalizacji, zakodowany wartościami ze słownika.]])

* address 1..1
* address only PLDomainAddress
* address ^short = "Address of the location"
* address ^definition = "Address of the location. Mandatory."
* address insert PLTranslation([[Adres lokalizacji]], [[Adres lokalizacji. Obowiązkowy.]])

* telecom 0..* PLDomainTelecom "Contact details of the location" "Contact details of the location, e.g. phone number or e-mail address."
* telecom insert PLTranslation([[Dane kontaktowe lokalizacji]], [[Dane kontaktowe lokalizacji, np. numer telefonu lub adres e-mail.]])

// FIX: "managingOrganisation" is already defined in the parent EHDSLocation (EHDSOrganisation); it was redefined here, which caused the SUSHI error
// "Cannot define element managingOrganisation ... because it has already been defined". It is now a constraint on the inherited element.
* managingOrganisation 0..1
* managingOrganisation only PLDomainOrganisation
* managingOrganisation ^short = "Organisation responsible for the location"
* managingOrganisation ^definition = "Organisation responsible for the provisioning and upkeep of the location."
* managingOrganisation insert PLTranslation([[Organizacja odpowiedzialna za lokalizację]], [[Organizacja odpowiedzialna za udostępnianie i utrzymanie lokalizacji.]])
