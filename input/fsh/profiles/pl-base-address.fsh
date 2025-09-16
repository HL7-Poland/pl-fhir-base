Profile: PLBaseAddressEu
Parent: Address
Id: pl-base-address-eu
Title: "Address: Adres"
Description: "Struktura adresu w Unii Europejskiej z uwzględnieniem polskich rozszerzeń"
* ^version = "0.1.0"
* extension contains
    Teryt named teryt 0..1
* line.extension ^slicing.discriminator.type = #value
* line.extension ^slicing.discriminator.path = "url"
* line.extension ^slicing.rules = #open
* line.extension contains
    $iso21090-ADXP-streetName named streetName 0..* MS and
    $iso21090-ADXP-houseNumber named houseNumber 0..* MS and
    $iso21090-ADXP-unitID named unitID 0..* MS and
    $iso21090-ADXP-postBox named postBox 0..* MS
* line.extension[streetName].value[x] only string
* line.extension[houseNumber].value[x] only string
* line.extension[unitID].value[x] only string
* line.extension[postBox].value[x] only string    
* country.extension contains 
    IsoAlpha3CountryCode named isoAlpha3CountryCode 0..1 MS and
    IsoNumericCountryCode named isoNumericCountryCode 0..1 MS