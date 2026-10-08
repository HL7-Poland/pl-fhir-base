Logical: PLDomainMedicalEntityUnit
Parent: PLDomainOrganisation
Id: pl-domain-medicalEntityUnit
Title: "MedicalEntityUnit: Jednostka organizacyjna (model domenowy)"
Description: "Domain model of an organisational unit of a medical entity (according to RPWDL), identified by parts I and V of the departmental identification code."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy jednostki organizacyjnej podmiotu leczniczego (wg RPWDL), identyfikowanej częściami I i V systemu resortowych kodów identyfikacyjnych.]])

* entityUnitIdentifier 1..1 Identifier "Organisational unit identifier (parts I and V of the departmental code)" "Identifier of the organisational unit of the medical entity in the RPWDL register, i.e. parts I and V of the departmental identification code."
* entityUnitIdentifier insert PLTranslation([[Identyfikator jednostki organizacyjnej (część I i V kodu resortowego)]], [[Identyfikator jednostki organizacyjnej podmiotu leczniczego w rejestrze RPWDL, czyli część I i V systemu resortowych kodów identyfikacyjnych.]])

* address 1..1
* address ^short = "Address of the organisational unit"
* address ^definition = "Address of the organisational unit of the medical entity."
* address insert PLTranslation([[Adres jednostki organizacyjnej]], [[Adres jednostki organizacyjnej podmiotu leczniczego.]])

* telecom 1..*
* telecom ^short = "Contact details of the organisational unit"
* telecom ^definition = "Contact details of the organisational unit, e.g. phone number or e-mail address."
* telecom insert PLTranslation([[Dane kontaktowe jednostki organizacyjnej]], [[Dane kontaktowe jednostki organizacyjnej, np. numer telefonu lub adres e-mail.]])

* partOf 1..1
* partOf only PLDomainMedicalEntityFacility
* partOf ^short = "Facility the organisational unit belongs to"
* partOf ^definition = "Facility of the medical entity of which this organisational unit is a part."
* partOf insert PLTranslation([[Zakład, do którego należy jednostka organizacyjna]], [[Zakład podmiotu medycznego, którego częścią jest ta jednostka organizacyjna.]])
