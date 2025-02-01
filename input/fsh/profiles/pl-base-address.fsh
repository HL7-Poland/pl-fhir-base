Profile: PLBaseAddress
Parent: AddressEu
Id: pl-base-address
Title: "Address (PL)"
Description: "Bazowy adres"
* extension contains
    Teryt named teryt 0..1
* line.extension contains
    $iso21090-ADXP-unitID named unitID 0..* MS
* line.extension[unitID].value[x] only string
* country.extension contains 
    AlternativeIsoAlpha3CountryCode named altIsoAlpha3CountryCode 0..1 MS and
    AlternativeIsoNumericCountryCode named altIsoNumericCountryCode 0..1 MS
