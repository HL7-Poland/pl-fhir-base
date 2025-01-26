Profile: PLBaseAddress
Parent: AddressEu
Id: pl-base-address
Title: "Address (PL)"
Description: "Bazowy adres"
* extension contains
    Teryt named teryt 0..1
* line.extension contains
    $iso21090-ADXP-unitID named unitID 0..*
* line.extension[unitID].value[x] only string
// * country.extension contains 
//    AltIsoCountryCode named altCountryCode 0..2