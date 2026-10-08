Profile: PLBaseAddress
Parent: AddressEu
Id: pl-base-address
Title: "Address (PL)"
Description: "Address structure in the European Union, including Polish extensions."
* ^version = "0.1.0"
* insert PLDescriptionTranslation([[Struktura adresu w Unii Europejskiej z uwzględnieniem polskich rozszerzeń.]])

* . ^short = "An address expressed using postal conventions"
* . ^definition = "An address expressed using postal conventions (as opposed to GPS or other location definition formats), including Polish extensions: TERYT codes and structured address line parts."
* . insert PLTranslation([[Adres zapisany zgodnie z konwencjami pocztowymi]], [[Adres zapisany zgodnie z konwencjami pocztowymi (w odróżnieniu od współrzędnych GPS lub innych formatów określania położenia), z uwzględnieniem polskich rozszerzeń: kodów TERYT i ustrukturyzowanych części linii adresu.]])

* extension contains
    Teryt named teryt 0..1
* extension[teryt] ^short = "TERYT code"
* extension[teryt] ^definition = "Codes from the Polish National Official Register of the Territorial Division of the Country (TERYT): TERC code of the territorial division unit and SIMC code of the locality."
* extension[teryt] insert PLTranslation([[Kod TERYT]], [[Kody z Krajowego Rejestru Urzędowego Podziału Terytorialnego Kraju (TERYT): kod TERC jednostki podziału terytorialnego i kod SIMC miejscowości.]])

* line insert PLTranslation([[Linia adresu (ulica, numer budynku, numer lokalu, skrytka pocztowa)]], [[Część adresu zawierająca nazwę ulicy, numer budynku, numer lokalu lub skrytkę pocztową. Poszczególne części mogą być dodatkowo zapisane w rozszerzeniach.]])
// FIX: the slicing of line.extension (discriminator value on url, rules open) is already defined in the parent AddressEu;
// repeating it here duplicated the parent rules, so only the slicing description is set in this profile.
* line.extension ^slicing.description = "Structured parts of the address line"
* line.extension insert PLSlicingDescriptionTranslation([[Ustrukturyzowane części linii adresu]])
// FIX: the slices streetName, houseNumber and postBox (with the same ISO 21090 extensions and cardinality 0..*) are already
// defined in the parent AddressEu, which caused the SUSHI warnings "Slice named ... already exists on element Address.line.extension".
// Only the unitID slice, not present in AddressEu, is added here; the inherited slices are constrained and described below.
* line.extension contains
    $iso21090-ADXP-unitID named unitID 0..*
* line.extension[streetName] ^short = "Street name"
* line.extension[streetName] ^definition = "Name of the street."
* line.extension[streetName] insert PLTranslation([[Nazwa ulicy]], [[Nazwa ulicy.]])
* line.extension[streetName].value[x] only string
* line.extension[houseNumber] ^short = "House number"
* line.extension[houseNumber] ^definition = "Number of the building."
* line.extension[houseNumber] insert PLTranslation([[Numer budynku]], [[Numer budynku.]])
* line.extension[houseNumber].value[x] only string
* line.extension[unitID] ^short = "Unit number"
* line.extension[unitID] ^definition = "Number of the apartment or premises within the building."
* line.extension[unitID] insert PLTranslation([[Numer lokalu]], [[Numer lokalu w budynku.]])
* line.extension[unitID].value[x] only string
* line.extension[postBox] ^short = "Post box"
* line.extension[postBox] ^definition = "Post box number, relevant for a correspondence address."
* line.extension[postBox] insert PLTranslation([[Skrytka pocztowa]], [[Numer skrytki pocztowej, istotny dla adresu do korespondencji.]])
* line.extension[postBox].value[x] only string

* country insert PLTranslation([[Kraj]], [[Kraj, w którym znajduje się adres. Może być zapisany jako kod ISO 3166 dwu- lub trzyliterowy albo jako pełna nazwa kraju.]])
* country.extension contains
    IsoAlpha3CountryCode named isoAlpha3CountryCode 0..1 and
    IsoNumericCountryCode named isoNumericCountryCode 0..1
* country.extension[isoAlpha3CountryCode] ^short = "ISO 3166 alpha-3 country code"
* country.extension[isoAlpha3CountryCode] ^definition = "Three-letter country code according to ISO 3166-1 alpha-3."
* country.extension[isoAlpha3CountryCode] insert PLTranslation([[Trzyliterowy kod kraju wg ISO 3166]], [[Trzyliterowy kod kraju zgodny z ISO 3166-1 alpha-3.]])
* country.extension[isoNumericCountryCode] ^short = "ISO 3166 numeric country code"
* country.extension[isoNumericCountryCode] ^definition = "Numeric country code according to ISO 3166-1 numeric."
* country.extension[isoNumericCountryCode] insert PLTranslation([[Numeryczny kod kraju wg ISO 3166]], [[Numeryczny kod kraju zgodny z ISO 3166-1 numeric.]])
