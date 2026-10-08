Logical: PLDomainTelecom
Parent: EHDSTelecom
Id: pl-domain-telecom
Title: "Telecom: Dane kontaktowe (model domenowy)"
Description: "Domain model of contact details in Polish medical records. Specialises EHDSTelecom from the EHDS Common Logical Models, which holds the contact value (phone number, e-mail address)."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy danych kontaktowych w polskiej dokumentacji medycznej. Specjalizacja klasy EHDSTelecom z modeli logicznych EHDS (EHDS Common Logical Models), w której zapisana jest wartość kontaktu (numer telefonu, adres e-mail).]])

// FIX: "type" is already defined in the parent EHDSTelecom (CodeableConcept); it was redefined here, which caused the SUSHI error
// "Cannot define element type ... because it has already been defined". It is now a constraint on the inherited element. UML type Coding cannot constrain the inherited CodeableConcept; a single code is expressed as coding 1..1.
* type 1..1
* type.coding 1..1
* type ^short = "Contact type"
* type ^definition = "Mandatory code of the contact type, distinguishing a phone number from an e-mail address."
* type insert PLTranslation([[Rodzaj kontaktu]], [[Obowiązkowy kod rodzaju kontaktu, pozwalający odróżnić numer telefonu od adresu e-mail.]])
