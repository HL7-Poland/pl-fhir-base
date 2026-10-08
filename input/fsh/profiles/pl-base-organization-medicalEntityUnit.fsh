Profile: PLBaseMedicalEntityUnit
Parent: Organization
Id: pl-base-organization-medicalEntityUnit
Title: "Organization: Medical Enity "
Description: "Organisational unit of a medical entity (according to RPWDL)."
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Jednostka organizacyjna podmiotu leczniczego (wg RPWDL).]])

* . ^short = "Organisational unit of a medical entity"
* . ^definition = "Organisational unit of a medical entity registered in the Register of Entities Performing Medical Activities (RPWDL), identified by parts I and V of the departmental identification code."
* . insert PLTranslation([[Jednostka organizacyjna podmiotu leczniczego]], [[Jednostka organizacyjna podmiotu leczniczego wpisana do Rejestru Podmiotów Wykonujących Działalność Leczniczą (RPWDL), identyfikowana częściami I i V systemu resortowych kodów identyfikacyjnych.]])

* identifier 1..*
* identifier ^short = "Identifiers of the organisational unit"
* identifier ^definition = "Identifiers of the organisational unit of the medical entity. The identifier composed of parts I and V of the departmental code is mandatory."
* identifier insert PLTranslation([[Identyfikatory jednostki organizacyjnej]], [[Identyfikatory jednostki organizacyjnej podmiotu leczniczego. Obowiązkowy jest identyfikator złożony z części I i V kodu resortowego.]])
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Organisational unit identifiers"
* identifier insert PLSlicingDescriptionTranslation([[Identyfikatory jednostki organizacyjnej]])
* identifier ^slicing.ordered = false
* identifier contains
  entityUnitIdentifier 1..1

* identifier[entityUnitIdentifier] ^short = "Organisational unit identifier (parts I and V of the departmental code)"
* identifier[entityUnitIdentifier] ^definition = "Identifier of the organisational unit of the medical entity in the Register of Entities Performing Medical Activities (RPWDL), i.e. parts I and V of the departmental identification code (kod resortowy)."
* identifier[entityUnitIdentifier] insert PLTranslation([[Identyfikator jednostki organizacyjnej (część I i V kodu resortowego)]], [[Identyfikator jednostki organizacyjnej podmiotu leczniczego w Rejestrze Podmiotów Wykonujących Działalność Leczniczą (RPWDL), czyli część I i V systemu resortowych kodów identyfikacyjnych (kodu resortowego).]])
* identifier[entityUnitIdentifier].system = $medicalEntityUnitIds
* identifier[entityUnitIdentifier].system ^short = "Identifier system of organisational units (RPWDL)"
* identifier[entityUnitIdentifier].system ^definition = "OID of the identifier system of organisational units of medical entities in the RPWDL register (parts I and V of the departmental code)."
* identifier[entityUnitIdentifier].system insert PLTranslation([[System identyfikatorów jednostek organizacyjnych (RPWDL)]], [[OID systemu identyfikatorów jednostek organizacyjnych podmiotów leczniczych w rejestrze RPWDL (część I i V kodu resortowego).]])
* identifier[entityUnitIdentifier].value 1..1
* identifier[entityUnitIdentifier].value ^short = "Parts I and V of the departmental code"
* identifier[entityUnitIdentifier].value ^definition = "Identifier of the organisational unit composed of part I (number of the medical entity in the RPWDL register) and part V (number of the organisational unit) of the departmental identification code."
* identifier[entityUnitIdentifier].value insert PLTranslation([[Część I i V kodu resortowego]], [[Identyfikator jednostki organizacyjnej złożony z części I (numer księgi rejestrowej podmiotu w rejestrze RPWDL) i części V (numer jednostki organizacyjnej) systemu resortowych kodów identyfikacyjnych.]])

* name 1..1
* name ^short = "Name of the organisational unit"
* name ^definition = "Name of the organisational unit as recorded in the RPWDL register."
* name insert PLTranslation([[Nazwa jednostki organizacyjnej]], [[Nazwa jednostki organizacyjnej zgodna z wpisem w rejestrze RPWDL.]])

* contact 1..*
* contact ^short = "Contact details of the organisational unit"
* contact ^definition = "Contact details of the organisational unit of the medical entity."
* contact insert PLTranslation([[Dane kontaktowe jednostki organizacyjnej]], [[Dane kontaktowe jednostki organizacyjnej podmiotu leczniczego.]])
* contact.telecom 1..*
* contact.telecom ^short = "Telecommunication details of the organisational unit"
* contact.telecom ^definition = "Telecommunication details of the organisational unit, e.g. phone number or e-mail address."
* contact.telecom insert PLTranslation([[Dane teleinformatyczne jednostki organizacyjnej]], [[Dane teleinformatyczne jednostki organizacyjnej, np. numer telefonu lub adres e-mail.]])
* contact.address 1..1
* contact.address ^short = "Address of the organisational unit"
* contact.address ^definition = "Address of the organisational unit of the medical entity."
* contact.address insert PLTranslation([[Adres jednostki organizacyjnej]], [[Adres jednostki organizacyjnej podmiotu leczniczego.]])

* partOf 1..1
* partOf only Reference(PLBaseMedicalEntityFacility)
* partOf ^short = "Facility the organisational unit belongs to"
* partOf ^definition = "Reference to the facility of the medical entity of which this organisational unit is a part."
* partOf insert PLTranslation([[Zakład, do którego należy jednostka organizacyjna]], [[Odwołanie do zakładu podmiotu medycznego, którego częścią jest ta jednostka organizacyjna.]])
* partOf.reference 0..1
* partOf.reference ^short = "Literal reference to the facility"
* partOf.reference ^definition = "Literal reference (relative, internal or absolute URL) to the facility resource."
* partOf.reference insert PLTranslation([[Bezpośrednie odwołanie do zakładu]], [[Bezpośrednie odwołanie (względny, wewnętrzny lub bezwzględny URL) do zasobu zakładu.]])
* partOf.identifier 0..1
* partOf.identifier ^short = "Logical reference to the facility by its REGON number"
* partOf.identifier ^definition = "Logical reference to the facility of the medical entity by its 14-digit REGON number, used when the facility resource is not available directly."
* partOf.identifier insert PLTranslation([[Logiczne odwołanie do zakładu przez numer REGON]], [[Logiczne odwołanie do zakładu podmiotu medycznego przez jego 14-znakowy numer REGON, stosowane gdy zasób zakładu nie jest bezpośrednio dostępny.]])
* partOf.identifier.system 1..1
* partOf.identifier.system = $regonLocalUnitIds
* partOf.identifier.system ^short = "Identifier system of 14-digit REGON numbers"
* partOf.identifier.system ^definition = "OID of the identifier system of 14-digit REGON numbers (local units)."
* partOf.identifier.system insert PLTranslation([[System identyfikatorów 14-znakowych numerów REGON]], [[OID systemu identyfikatorów 14-znakowych numerów REGON (jednostek lokalnych).]])
* partOf.identifier.value 1..1
* partOf.identifier.value ^short = "REGON number of the facility"
* partOf.identifier.value ^definition = "14-digit REGON number of the facility (local unit) of the medical entity, written without separators."
* partOf.identifier.value insert PLTranslation([[Numer REGON zakładu]], [[14-znakowy numer REGON zakładu (jednostki lokalnej) podmiotu medycznego, zapisany bez znaków rozdzielających.]])

