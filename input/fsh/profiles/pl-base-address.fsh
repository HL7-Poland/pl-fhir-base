Profile: PLBaseAddress
Parent: AddressEu
Id: pl-base-address
Title: "Address (PL)"
Description: "Bazowy adres"
* ^version = "0.1.0"
* extension contains
    Teryt named teryt 0..1
* line.extension ^slicing.discriminator.type = #value
* line.extension ^slicing.discriminator.path = "url"
* line.extension ^slicing.rules = #open
* line.extension contains
    $iso21090-ADXP-unitID named unitID 0..* MS
* line.extension[unitID].value[x] only string
* country.extension contains 
    IsoAlpha3CountryCode named altIsoAlpha3CountryCode 0..1 MS and
    IsoNumericCountryCode named altIsoNumericCountryCode 0..1 MS