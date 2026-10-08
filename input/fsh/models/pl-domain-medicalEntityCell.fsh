Logical: PLDomainMedicalEntityCell
Parent: PLDomainOrganisation
Id: pl-domain-medicalEntityCell
Title: "MedicalEntityCell: Komórka organizacyjna (model domenowy)"
Description: "Domain model of an organisational cell of a medical entity (according to RPWDL), identified by parts I and VII of the departmental identification code."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy komórki organizacyjnej podmiotu leczniczego (wg RPWDL), identyfikowanej częściami I i VII systemu resortowych kodów identyfikacyjnych.]])

* entityCellIdentifier 1..1 Identifier "Organisational cell identifier (parts I and VII of the departmental code)" "Identifier of the organisational cell of the medical entity in the RPWDL register, i.e. parts I and VII of the departmental identification code."
* entityCellIdentifier insert PLTranslation([[Identyfikator komórki organizacyjnej (część I i VII kodu resortowego)]], [[Identyfikator komórki organizacyjnej podmiotu leczniczego w rejestrze RPWDL, czyli część I i VII systemu resortowych kodów identyfikacyjnych.]])

// UML: type: Coding[1..1]; the inherited EHDS element is a CodeableConcept, which cannot be constrained to Coding
* type 1..1
* type ^short = "Type of the organisational cell"
* type ^definition = "Specialty type of the organisational cell (part VIII of the departmental identification code)."
* type insert PLTranslation([[Rodzaj komórki organizacyjnej]], [[Specjalność komórki organizacyjnej (część VIII systemu resortowych kodów identyfikacyjnych).]])

* address 1..1
* address ^short = "Address of the organisational cell"
* address ^definition = "Address of the organisational cell of the medical entity."
* address insert PLTranslation([[Adres komórki organizacyjnej]], [[Adres komórki organizacyjnej podmiotu leczniczego.]])

* telecom 1..*
* telecom ^short = "Contact details of the organisational cell"
* telecom ^definition = "Contact details of the organisational cell, e.g. phone number or e-mail address."
* telecom insert PLTranslation([[Dane kontaktowe komórki organizacyjnej]], [[Dane kontaktowe komórki organizacyjnej, np. numer telefonu lub adres e-mail.]])

* partOf 1..1
* partOf only PLDomainMedicalEntityUnit
* partOf ^short = "Organisational unit the cell belongs to"
* partOf ^definition = "Organisational unit of the medical entity of which this cell is a part."
* partOf insert PLTranslation([[Jednostka organizacyjna, do której należy komórka]], [[Jednostka organizacyjna podmiotu leczniczego, której częścią jest ta komórka.]])
