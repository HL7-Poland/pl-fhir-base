Profile: PLBaseMedicalEntityFacility
Parent: PLBaseOrganization
Id: pl-base-organization-medicalEntityFacility
Title: "Organization: Medical Entity Facility (PL)"
Description: "Data of a facility (local unit) of a medical entity."
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Dane zakładu podmiotu medycznego.]])

* . ^short = "Facility of a medical entity"
* . ^definition = "Facility (local unit) of a medical entity, i.e. an organisationally separate part of the medical entity, identified by its own 14-digit REGON number."
* . insert PLTranslation([[Zakład podmiotu medycznego]], [[Zakład (jednostka lokalna) podmiotu medycznego, czyli wyodrębniona organizacyjnie część podmiotu medycznego identyfikowana własnym 14-znakowym numerem REGON.]])

* identifier 1..*
* identifier ^short = "Identifiers of the facility"
* identifier ^definition = "Identifiers of the facility of the medical entity. The 14-digit REGON number of the local unit is mandatory."
* identifier insert PLTranslation([[Identyfikatory zakładu]], [[Identyfikatory zakładu podmiotu medycznego. Obowiązkowy jest 14-znakowy numer REGON jednostki lokalnej.]])
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Medical entity facility identifiers"
* identifier insert PLSlicingDescriptionTranslation([[Identyfikatory zakładu podmiotu medycznego]])
* identifier ^slicing.ordered = false
* identifier contains
  regonLocalUnitIdentifier 1..1

* identifier[regonLocalUnitIdentifier] ^short = "REGON number (14 digits)"
* identifier[regonLocalUnitIdentifier] ^definition = "14-digit REGON statistical number of the local unit of the medical entity in the National Official Business Register (REGON)."
* identifier[regonLocalUnitIdentifier] insert PLTranslation([[Numer REGON (14-znakowy)]], [[14-znakowy numer identyfikacyjny REGON jednostki lokalnej podmiotu medycznego w Krajowym Rejestrze Urzędowym Podmiotów Gospodarki Narodowej (REGON).]])
* identifier[regonLocalUnitIdentifier].system = $regonLocalUnitIds
* identifier[regonLocalUnitIdentifier].system ^short = "Identifier system of 14-digit REGON numbers"
* identifier[regonLocalUnitIdentifier].system ^definition = "OID of the identifier system of 14-digit REGON numbers (local units)."
* identifier[regonLocalUnitIdentifier].system insert PLTranslation([[System identyfikatorów 14-znakowych numerów REGON]], [[OID systemu identyfikatorów 14-znakowych numerów REGON (jednostek lokalnych).]])
* identifier[regonLocalUnitIdentifier].value 1..1
* identifier[regonLocalUnitIdentifier].value obeys Regon14Identifier
* identifier[regonLocalUnitIdentifier].value ^short = "REGON number value"
* identifier[regonLocalUnitIdentifier].value ^definition = "14-digit REGON number of the local unit, written without separators."
* identifier[regonLocalUnitIdentifier].value insert PLTranslation([[Wartość numeru REGON]], [[14-znakowy numer REGON jednostki lokalnej, zapisany bez znaków rozdzielających.]])

* contact ^short = "Contact details of the facility"
* contact ^definition = "Contact details of the facility of the medical entity."
* contact insert PLTranslation([[Dane kontaktowe zakładu]], [[Dane kontaktowe zakładu podmiotu medycznego.]])
* contact.address 1..1
* contact.address ^short = "Address of the facility"
* contact.address ^definition = "Address of the facility of the medical entity."
* contact.address insert PLTranslation([[Adres zakładu]], [[Adres zakładu podmiotu medycznego.]])
* contact.telecom 1..*
* contact.telecom ^short = "Telecommunication details of the facility"
* contact.telecom ^definition = "Telecommunication details of the facility, e.g. phone number or e-mail address."
* contact.telecom insert PLTranslation([[Dane teleinformatyczne zakładu]], [[Dane teleinformatyczne zakładu, np. numer telefonu lub adres e-mail.]])

* partOf only Reference(PLBaseMedicalEntity)
* partOf ^short = "Medical entity the facility belongs to"
* partOf ^definition = "Reference to the medical entity of which this facility is a part."
* partOf insert PLTranslation([[Podmiot medyczny, do którego należy zakład]], [[Odwołanie do podmiotu medycznego, którego częścią jest ten zakład.]])
