Logical: PLDomainMedicalEntity
Parent: PLDomainOrganisation
Id: pl-domain-medicalEntity
Title: "MedicalEntity: Podmiot medyczny (model domenowy)"
Description: "Domain model of a medical entity (healthcare provider) registered in the Register of Entities Performing Medical Activities (RPWDL)."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy podmiotu medycznego (świadczeniodawcy) wpisanego do Rejestru Podmiotów Wykonujących Działalność Leczniczą (RPWDL).]])

* entityIdentifier 1..1 Identifier "Medical entity identifier (part I of the departmental code)" "Identifier of the medical entity in the RPWDL register, i.e. part I of the departmental identification code (kod resortowy)."
* entityIdentifier insert PLTranslation([[Identyfikator podmiotu medycznego (część I kodu resortowego)]], [[Identyfikator podmiotu medycznego w rejestrze RPWDL, czyli część I systemu resortowych kodów identyfikacyjnych (kodu resortowego).]])

* regonEntityIdentifier 1..1 Identifier "REGON number (9 digits)" "9-digit REGON statistical number of the medical entity in the National Official Business Register (REGON)."
* regonEntityIdentifier insert PLTranslation([[Numer REGON (9-znakowy)]], [[9-znakowy numer identyfikacyjny REGON podmiotu medycznego w Krajowym Rejestrze Urzędowym Podmiotów Gospodarki Narodowej (REGON).]])

* taxIdentificationNumber 1..1 Identifier "Tax identification number (NIP)" "Tax identification number (NIP) of the medical entity."
* taxIdentificationNumber insert PLTranslation([[Numer identyfikacji podatkowej (NIP)]], [[Numer identyfikacji podatkowej (NIP) podmiotu medycznego.]])

* address 1..1
* address ^short = "Address of the medical entity"
* address ^definition = "Address of the registered office of the medical entity."
* address insert PLTranslation([[Adres podmiotu medycznego]], [[Adres siedziby podmiotu medycznego.]])

* telecom 1..*
* telecom ^short = "Contact details of the medical entity"
* telecom ^definition = "Contact details of the medical entity, e.g. phone number or e-mail address."
* telecom insert PLTranslation([[Dane kontaktowe podmiotu medycznego]], [[Dane kontaktowe podmiotu medycznego, np. numer telefonu lub adres e-mail.]])
