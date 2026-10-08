Profile: PLBaseMedicalEntity
Parent: PLBaseOrganization
Id: pl-base-organization-medicalEntity
Title: "Organization: Medical Entity (PL)"
Description: "Data of a medical entity (healthcare provider)."
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Dane podmiotu medycznego (świadczeniodawcy).]])

* . ^short = "Medical entity (healthcare provider)"
* . ^definition = "Medical entity (healthcare provider) registered in the Register of Entities Performing Medical Activities (RPWDL), identified by part I of the departmental identification code."
* . insert PLTranslation([[Podmiot medyczny (świadczeniodawca)]], [[Podmiot medyczny (świadczeniodawca) wpisany do Rejestru Podmiotów Wykonujących Działalność Leczniczą (RPWDL), identyfikowany częścią I systemu resortowych kodów identyfikacyjnych.]])

* identifier 1..*
* identifier ^short = "Identifiers of the medical entity"
* identifier ^definition = "Identifiers of the medical entity. Part I of the departmental identification code is mandatory; the REGON and NIP numbers are optional."
* identifier insert PLTranslation([[Identyfikatory podmiotu medycznego]], [[Identyfikatory podmiotu medycznego. Obowiązkowa jest część I kodu resortowego; numery REGON i NIP są opcjonalne.]])
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Medical entity identifiers"
* identifier insert PLSlicingDescriptionTranslation([[Identyfikatory podmiotu medycznego]])
* identifier ^slicing.ordered = false
* identifier contains
  entityIdentifier 1..1 and
  regonEntityIdentifier 0..1 and
  taxIdentificationNumber 0..1

* identifier[entityIdentifier] ^short = "Medical entity identifier (part I of the departmental code)"
* identifier[entityIdentifier] ^definition = "Identifier of the medical entity in the Register of Entities Performing Medical Activities (RPWDL), i.e. part I of the departmental identification code (kod resortowy)."
* identifier[entityIdentifier] insert PLTranslation([[Identyfikator podmiotu medycznego (część I kodu resortowego)]], [[Identyfikator podmiotu medycznego w Rejestrze Podmiotów Wykonujących Działalność Leczniczą (RPWDL), czyli część I systemu resortowych kodów identyfikacyjnych (kodu resortowego).]])
* identifier[entityIdentifier].system = $medicalEntityIds
* identifier[entityIdentifier].system ^short = "Identifier system of medical entities (RPWDL)"
* identifier[entityIdentifier].system ^definition = "OID of the identifier system of medical entities in the RPWDL register (part I of the departmental code)."
* identifier[entityIdentifier].system insert PLTranslation([[System identyfikatorów podmiotów medycznych (RPWDL)]], [[OID systemu identyfikatorów podmiotów medycznych w rejestrze RPWDL (część I kodu resortowego).]])
* identifier[entityIdentifier].value 1..1
* identifier[entityIdentifier].value ^short = "Part I of the departmental code"
* identifier[entityIdentifier].value ^definition = "Number of the medical entity in the RPWDL register, i.e. part I of the departmental identification code."
* identifier[entityIdentifier].value insert PLTranslation([[Część I kodu resortowego]], [[Numer księgi rejestrowej podmiotu medycznego w rejestrze RPWDL, czyli część I systemu resortowych kodów identyfikacyjnych.]])

* identifier[regonEntityIdentifier] ^short = "REGON number (9 digits)"
* identifier[regonEntityIdentifier] ^definition = "9-digit REGON statistical number of the medical entity in the National Official Business Register (REGON)."
* identifier[regonEntityIdentifier] insert PLTranslation([[Numer REGON (9-znakowy)]], [[9-znakowy numer identyfikacyjny REGON podmiotu medycznego w Krajowym Rejestrze Urzędowym Podmiotów Gospodarki Narodowej (REGON).]])
* identifier[regonEntityIdentifier].system = $regonEntityIds
* identifier[regonEntityIdentifier].system ^short = "Identifier system of 9-digit REGON numbers"
* identifier[regonEntityIdentifier].system ^definition = "OID of the identifier system of 9-digit REGON numbers."
* identifier[regonEntityIdentifier].system insert PLTranslation([[System identyfikatorów 9-znakowych numerów REGON]], [[OID systemu identyfikatorów 9-znakowych numerów REGON.]])
* identifier[regonEntityIdentifier].value 1..1
* identifier[regonEntityIdentifier].value obeys Regon9Identifier
* identifier[regonEntityIdentifier].value ^short = "REGON number value"
* identifier[regonEntityIdentifier].value ^definition = "9-digit REGON number of the medical entity, written without separators."
* identifier[regonEntityIdentifier].value insert PLTranslation([[Wartość numeru REGON]], [[9-znakowy numer REGON podmiotu medycznego, zapisany bez znaków rozdzielających.]])

* identifier[taxIdentificationNumber] ^short = "Tax identification number (NIP)"
* identifier[taxIdentificationNumber] ^definition = "Tax identification number (NIP) of the medical entity."
* identifier[taxIdentificationNumber] insert PLTranslation([[Numer identyfikacji podatkowej (NIP)]], [[Numer identyfikacji podatkowej (NIP) podmiotu medycznego.]])
* identifier[taxIdentificationNumber].system = $taxIdentificationNumberIds
* identifier[taxIdentificationNumber].system ^short = "Identifier system of NIP numbers"
* identifier[taxIdentificationNumber].system ^definition = "OID of the identifier system of tax identification numbers (NIP)."
* identifier[taxIdentificationNumber].system insert PLTranslation([[System identyfikatorów numerów NIP]], [[OID systemu identyfikatorów numerów identyfikacji podatkowej (NIP).]])
* identifier[taxIdentificationNumber].value 1..1
* identifier[taxIdentificationNumber].value obeys NipIdentifier
* identifier[taxIdentificationNumber].value ^short = "NIP number value"
* identifier[taxIdentificationNumber].value ^definition = "10-digit tax identification number (NIP) of the medical entity, written without separators."
* identifier[taxIdentificationNumber].value insert PLTranslation([[Wartość numeru NIP]], [[10-cyfrowy numer identyfikacji podatkowej (NIP) podmiotu medycznego, zapisany bez znaków rozdzielających.]])

* contact ^short = "Contact details of the medical entity"
* contact ^definition = "Contact details of the medical entity."
* contact insert PLTranslation([[Dane kontaktowe podmiotu medycznego]], [[Dane kontaktowe podmiotu medycznego.]])
* contact.address 1..1
* contact.address ^short = "Address of the medical entity"
* contact.address ^definition = "Address of the registered office of the medical entity."
* contact.address insert PLTranslation([[Adres podmiotu medycznego]], [[Adres siedziby podmiotu medycznego.]])
* contact.telecom 1..*
* contact.telecom ^short = "Telecommunication details of the medical entity"
* contact.telecom ^definition = "Telecommunication details of the medical entity, e.g. phone number or e-mail address."
* contact.telecom insert PLTranslation([[Dane teleinformatyczne podmiotu medycznego]], [[Dane teleinformatyczne podmiotu medycznego, np. numer telefonu lub adres e-mail.]])

* partOf 0..0
* partOf ^short = "Not used: the medical entity is the top-level organization"
* partOf ^definition = "Not used, as the medical entity is the top-level organization and is not a part of another organization."
* partOf insert PLTranslation([[Nieużywany: podmiot medyczny jest organizacją najwyższego poziomu]], [[Nieużywany, ponieważ podmiot medyczny jest organizacją najwyższego poziomu i nie jest częścią innej organizacji.]])