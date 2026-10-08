Logical: PLDomainOrganisation
Parent: EHDSOrganisation
Id: pl-domain-organisation
Title: "Organisation: Organizacja (model domenowy)"
Description: "Domain model of an organisation in Polish medical records, being the common base of medical entities, their organisational parts and medical practices. Specialises EHDSOrganisation from the EHDS Common Logical Models."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy organizacji w polskiej dokumentacji medycznej, stanowiący wspólną podstawę dla podmiotów medycznych, ich części organizacyjnych oraz praktyk zawodowych. Specjalizacja klasy EHDSOrganisation z modeli logicznych EHDS (EHDS Common Logical Models).]])

* identifier 0..*
* identifier ^short = "Identifiers of the organisation"
* identifier ^definition = "Identifiers of the organisation."
* identifier insert PLTranslation([[Identyfikatory organizacji]], [[Identyfikatory organizacji.]])

* name 1..1
* name ^short = "Name of the organisation"
* name ^definition = "Name of the organisation. Mandatory."
* name insert PLTranslation([[Nazwa organizacji]], [[Nazwa organizacji. Obowiązkowa.]])

// UML: type: Coding[0..*]; the inherited EHDS element is a CodeableConcept, which cannot be constrained to Coding
* type 0..*
* type ^short = "Type of the organisation"
* type ^definition = "Type of the organisation, coded with values from a code system."
* type insert PLTranslation([[Rodzaj organizacji]], [[Rodzaj organizacji, zakodowany wartościami ze słownika.]])

* address only PLDomainAddress
* address ^short = "Address of the organisation"
* address ^definition = "Addresses of the organisation."
* address insert PLTranslation([[Adres organizacji]], [[Adresy organizacji.]])

* telecom only PLDomainTelecom
* telecom ^short = "Contact details of the organisation"
* telecom ^definition = "Contact details of the organisation, e.g. phone number or e-mail address."
* telecom insert PLTranslation([[Dane kontaktowe organizacji]], [[Dane kontaktowe organizacji, np. numer telefonu lub adres e-mail.]])

* partOf only PLDomainOrganisation
* partOf ^short = "Organisation this organisation is part of"
* partOf ^definition = "Organisation of which this organisation is a part."
* partOf insert PLTranslation([[Organizacja nadrzędna]], [[Organizacja, której częścią jest ta organizacja.]])
