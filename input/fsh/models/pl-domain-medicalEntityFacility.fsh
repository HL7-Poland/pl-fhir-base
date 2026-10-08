Logical: PLDomainMedicalEntityFacility
Parent: PLDomainOrganisation
Id: pl-domain-medicalEntityFacility
Title: "MedicalEntityFacility: Zakład podmiotu medycznego (model domenowy)"
Description: "Domain model of a facility (local unit) of a medical entity, identified by its own 14-digit REGON number."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy zakładu (jednostki lokalnej) podmiotu medycznego, identyfikowanego własnym 14-znakowym numerem REGON.]])

* regonLocalUnitIdentifier 1..1 Identifier "REGON number (14 digits)" "14-digit REGON statistical number of the local unit of the medical entity in the National Official Business Register (REGON)."
* regonLocalUnitIdentifier insert PLTranslation([[Numer REGON (14-znakowy)]], [[14-znakowy numer identyfikacyjny REGON jednostki lokalnej podmiotu medycznego w Krajowym Rejestrze Urzędowym Podmiotów Gospodarki Narodowej (REGON).]])

* address 1..1
* address ^short = "Address of the facility"
* address ^definition = "Address of the facility of the medical entity."
* address insert PLTranslation([[Adres zakładu]], [[Adres zakładu podmiotu medycznego.]])

* telecom 1..*
* telecom ^short = "Contact details of the facility"
* telecom ^definition = "Contact details of the facility, e.g. phone number or e-mail address."
* telecom insert PLTranslation([[Dane kontaktowe zakładu]], [[Dane kontaktowe zakładu, np. numer telefonu lub adres e-mail.]])

* partOf 1..1
* partOf only PLDomainMedicalEntity
* partOf ^short = "Medical entity the facility belongs to"
* partOf ^definition = "Medical entity of which this facility is a part."
* partOf insert PLTranslation([[Podmiot medyczny, do którego należy zakład]], [[Podmiot medyczny, którego częścią jest ten zakład.]])
