Logical: PLDomainAddress
Parent: EHDSAddress
Id: pl-domain-address
Title: "Address: Adres (model domenowy)"
Description: "Domain model of an address in Polish medical records, including TERYT identifiers. Specialises EHDSAddress from the EHDS Common Logical Models."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy adresu w polskiej dokumentacji medycznej, z uwzględnieniem identyfikatorów TERYT. Specjalizacja klasy EHDSAddress z modeli logicznych EHDS (EHDS Common Logical Models).]])

* streetName 1..1 string "Street name" "Name of the street."
* streetName insert PLTranslation([[Nazwa ulicy]], [[Nazwa ulicy.]])

// FIX: "houseNumber" is already defined in the parent EHDSAddress (string); it was redefined here, which caused the SUSHI error
// "Cannot define element houseNumber ... because it has already been defined". It is now a constraint on the inherited element.
* houseNumber 1..1
* houseNumber ^short = "House number"
* houseNumber ^definition = "Number of the building."
* houseNumber insert PLTranslation([[Numer budynku]], [[Numer budynku.]])

* unitId 0..1 string "Unit number" "Number of the apartment or premises."
* unitId insert PLTranslation([[Numer lokalu]], [[Numer lokalu.]])

// FIX: "city" is already defined in the parent EHDSAddress (string); it was redefined here, which caused the SUSHI error
// "Cannot define element city ... because it has already been defined". It is now a constraint on the inherited element.
* city 1..1
* city ^short = "City"
* city ^definition = "Name of the city or locality."
* city insert PLTranslation([[Miejscowość]], [[Nazwa miejscowości.]])

// FIX: "postalCode" is already defined in the parent EHDSAddress (string); it was redefined here, which caused the SUSHI error
// "Cannot define element postalCode ... because it has already been defined". It is now a constraint on the inherited element.
* postalCode 1..1
* postalCode ^short = "Postal code"
* postalCode ^definition = "Postal code."
* postalCode insert PLTranslation([[Kod pocztowy]], [[Kod pocztowy.]])

// FIX: "postBox" is already defined in the parent EHDSAddress (string); it was redefined here, which caused the SUSHI error
// "Cannot define element postBox ... because it has already been defined". It is now a constraint on the inherited element.
* postBox 0..1
* postBox ^short = "Post box"
* postBox ^definition = "Post box, relevant for a correspondence address."
* postBox insert PLTranslation([[Skrytka pocztowa]], [[Skrytka pocztowa, istotna dla adresu do korespondencji.]])

// FIX: "country" is already defined in the parent EHDSAddress (CodeableConcept); it was redefined here, which caused the SUSHI error
// "Cannot define element country ... because it has already been defined". It is now a constraint on the inherited element.
* country 0..1
* country ^short = "Country"
* country ^definition = "Country, coded with a value from a defined value set."
* country from $iso3166-1-2 (preferred)
* country insert PLTranslation([[Kraj]], [[Kraj, zakodowany wartością z określonego zbioru kodów.]])

* administrativeUnitIdentifier 0..1 Identifier "Administrative unit identifier (TERC)" "Identifier of the territorial division unit (voivodeship, county, municipality), i.e. the TERC code from the TERYT register."
* administrativeUnitIdentifier insert PLTranslation([[Identyfikator jednostki podziału terytorialnego (TERC)]], [[Identyfikator jednostki podziału terytorialnego (województwo, powiat, gmina), czyli kod TERC z rejestru TERYT.]])

* localityIdentifier 0..1 Identifier "Locality identifier (SIMC)" "Identifier of the locality, i.e. the SIMC code from the TERYT register."
* localityIdentifier insert PLTranslation([[Identyfikator miejscowości (SIMC)]], [[Identyfikator miejscowości, czyli kod SIMC z rejestru TERYT.]])

// FIX: "text" is already defined in the parent EHDSAddress (string); it was redefined here, which caused the SUSHI error
// "Cannot define element text ... because it has already been defined". It is now a constraint on the inherited element.
* text 0..1
* text ^short = "Address as text"
* text ^definition = "Address written as a single string, e.g. when it cannot be split into fields."
* text insert PLTranslation([[Adres jako tekst]], [[Adres zapisany jednym ciągiem tekstu, np. gdy nie da się go rozbić na pola.]])
