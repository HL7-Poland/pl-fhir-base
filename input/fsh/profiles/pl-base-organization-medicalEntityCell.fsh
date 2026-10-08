Profile: PLBaseMedicalEntityCell
Parent: Organization
Id: pl-base-organization-medicalEntityCell
Title: "Organization: Medical Entity Cell"
Description: "Organisational cell of a medical entity (according to RPWDL)."
* ^version = "0.1.0"
* insert PLDescriptionTranslation([[Komórka organizacyjna podmiotu leczniczego (wg RPWDL).]])

* . ^short = "Organisational cell of a medical entity"
* . ^definition = "Organisational cell of a medical entity registered in the Register of Entities Performing Medical Activities (RPWDL), identified by parts I and VII of the departmental identification code."
* . insert PLTranslation([[Komórka organizacyjna podmiotu leczniczego]], [[Komórka organizacyjna podmiotu leczniczego wpisana do Rejestru Podmiotów Wykonujących Działalność Leczniczą (RPWDL), identyfikowana częściami I i VII systemu resortowych kodów identyfikacyjnych.]])
//* extension contains
//  MedicalEntityCompanyIdentifier named companyIdentifier 0..1 and
//  MedicalEntityUnitReference named unitReference 0..1

* identifier 1..*
* identifier ^short = "Identifiers of the organisational cell"
* identifier ^definition = "Identifiers of the organisational cell of the medical entity. The identifier composed of parts I and VII of the departmental code is mandatory."
* identifier insert PLTranslation([[Identyfikatory komórki organizacyjnej]], [[Identyfikatory komórki organizacyjnej podmiotu leczniczego. Obowiązkowy jest identyfikator złożony z części I i VII kodu resortowego.]])
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Organisational cell identifiers"
* identifier insert PLSlicingDescriptionTranslation([[Identyfikatory komórki organizacyjnej]])
* identifier ^slicing.ordered = false
* identifier contains
  entityCellIdentifier 1..1

* identifier[entityCellIdentifier] ^short = "Organisational cell identifier (parts I and VII of the departmental code)"
* identifier[entityCellIdentifier] ^definition = "Identifier of the organisational cell of the medical entity in the Register of Entities Performing Medical Activities (RPWDL), i.e. parts I and VII of the departmental identification code (kod resortowy)."
* identifier[entityCellIdentifier] insert PLTranslation([[Identyfikator komórki organizacyjnej (część I i VII kodu resortowego)]], [[Identyfikator komórki organizacyjnej podmiotu leczniczego w Rejestrze Podmiotów Wykonujących Działalność Leczniczą (RPWDL), czyli część I i VII systemu resortowych kodów identyfikacyjnych (kodu resortowego).]])
* identifier[entityCellIdentifier].system = $medicalEntityCellIds
* identifier[entityCellIdentifier].system ^short = "Identifier system of organisational cells (RPWDL)"
* identifier[entityCellIdentifier].system ^definition = "OID of the identifier system of organisational cells of medical entities in the RPWDL register (parts I and VII of the departmental code)."
* identifier[entityCellIdentifier].system insert PLTranslation([[System identyfikatorów komórek organizacyjnych (RPWDL)]], [[OID systemu identyfikatorów komórek organizacyjnych podmiotów leczniczych w rejestrze RPWDL (część I i VII kodu resortowego).]])
* identifier[entityCellIdentifier].value 1..1
* identifier[entityCellIdentifier].value ^short = "Parts I and VII of the departmental code"
* identifier[entityCellIdentifier].value ^definition = "Identifier of the organisational cell composed of part I (number of the medical entity in the RPWDL register) and part VII (number of the organisational cell) of the departmental identification code."
* identifier[entityCellIdentifier].value insert PLTranslation([[Część I i VII kodu resortowego]], [[Identyfikator komórki organizacyjnej złożony z części I (numer księgi rejestrowej podmiotu w rejestrze RPWDL) i części VII (numer komórki organizacyjnej) systemu resortowych kodów identyfikacyjnych.]])

* name 1..1
* name ^short = "Name of the organisational cell"
* name ^definition = "Name of the organisational cell as recorded in the RPWDL register."
* name insert PLTranslation([[Nazwa komórki organizacyjnej]], [[Nazwa komórki organizacyjnej zgodna z wpisem w rejestrze RPWDL.]])

* contact 1..*
* contact ^short = "Contact details of the organisational cell"
* contact ^definition = "Contact details of the organisational cell of the medical entity."
* contact insert PLTranslation([[Dane kontaktowe komórki organizacyjnej]], [[Dane kontaktowe komórki organizacyjnej podmiotu leczniczego.]])
* contact.telecom 1..*
* contact.telecom ^short = "Telecommunication details of the organisational cell"
* contact.telecom ^definition = "Telecommunication details of the organisational cell, e.g. phone number or e-mail address."
* contact.telecom insert PLTranslation([[Dane teleinformatyczne komórki organizacyjnej]], [[Dane teleinformatyczne komórki organizacyjnej, np. numer telefonu lub adres e-mail.]])
* contact.address 0..1
* contact.address ^short = "Address of the organisational cell"
* contact.address ^definition = "Address of the organisational cell of the medical entity, if different from the address of the organisational unit."
* contact.address insert PLTranslation([[Adres komórki organizacyjnej]], [[Adres komórki organizacyjnej podmiotu leczniczego, jeżeli jest inny niż adres jednostki organizacyjnej.]])

* partOf 1..1
* partOf only Reference(PLBaseMedicalEntityUnit)
* partOf ^short = "Organisational unit the cell belongs to"
* partOf ^definition = "Reference to the organisational unit of the medical entity of which this cell is a part."
* partOf insert PLTranslation([[Jednostka organizacyjna, do której należy komórka]], [[Odwołanie do jednostki organizacyjnej podmiotu leczniczego, której częścią jest ta komórka.]])
* partOf.reference 0..1
* partOf.reference ^short = "Literal reference to the organisational unit"
* partOf.reference ^definition = "Literal reference (relative, internal or absolute URL) to the organisational unit resource."
* partOf.reference insert PLTranslation([[Bezpośrednie odwołanie do jednostki organizacyjnej]], [[Bezpośrednie odwołanie (względny, wewnętrzny lub bezwzględny URL) do zasobu jednostki organizacyjnej.]])
* partOf.identifier 0..1
* partOf.identifier ^short = "Logical reference to the organisational unit by identifier"
* partOf.identifier ^definition = "Logical reference to the organisational unit by its identifier (parts I and V of the departmental code), used when the unit resource is not available directly."
* partOf.identifier insert PLTranslation([[Logiczne odwołanie do jednostki organizacyjnej przez identyfikator]], [[Logiczne odwołanie do jednostki organizacyjnej przez jej identyfikator (część I i V kodu resortowego), stosowane gdy zasób jednostki nie jest bezpośrednio dostępny.]])
* partOf.identifier.system 1..1
* partOf.identifier.system = $medicalEntityUnitIds
* partOf.identifier.system ^short = "Identifier system of organisational units (RPWDL)"
* partOf.identifier.system ^definition = "OID of the identifier system of organisational units of medical entities in the RPWDL register (parts I and V of the departmental code)."
* partOf.identifier.system insert PLTranslation([[System identyfikatorów jednostek organizacyjnych (RPWDL)]], [[OID systemu identyfikatorów jednostek organizacyjnych podmiotów leczniczych w rejestrze RPWDL (część I i V kodu resortowego).]])
* partOf.identifier.value 1..1
* partOf.identifier.value ^short = "Parts I and V of the departmental code"
* partOf.identifier.value ^definition = "Identifier of the organisational unit composed of part I (number of the medical entity in the RPWDL register) and part V (number of the organisational unit) of the departmental identification code."
* partOf.identifier.value insert PLTranslation([[Część I i V kodu resortowego]], [[Identyfikator jednostki organizacyjnej złożony z części I (numer księgi rejestrowej podmiotu w rejestrze RPWDL) i części V (numer jednostki organizacyjnej) systemu resortowych kodów identyfikacyjnych.]])


