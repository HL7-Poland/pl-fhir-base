Mapping: PLBaseAddressToPLDomainAddress
Source: PLBaseAddress
Target: "http://hl7.org.pl/fhir/ig/pl-base/StructureDefinition/pl-domain-address"
Id: pl-domain-address
Title: "PL Domain Model: Address"
Description: "Mapping of the PLBaseAddress profile to the PLDomainAddress logical model."

* -> "PLDomainAddress"
* line.extension[streetName] -> "PLDomainAddress.streetName"
* line.extension[houseNumber] -> "PLDomainAddress.houseNumber"
* line.extension[unitID] -> "PLDomainAddress.unitId"
* line.extension[postBox] -> "PLDomainAddress.postBox"
* city -> "PLDomainAddress.city"
* postalCode -> "PLDomainAddress.postalCode"
* country -> "PLDomainAddress.country" "Address.country (string) holds the ISO 3166 code or country name; coded forms are available in the isoAlpha3CountryCode and isoNumericCountryCode extensions"
* country.extension[isoAlpha3CountryCode] -> "PLDomainAddress.country" "ISO 3166-1 alpha-3 coding of the country"
* country.extension[isoNumericCountryCode] -> "PLDomainAddress.country" "ISO 3166-1 numeric coding of the country"
* extension[teryt].extension[tercIdentifier] -> "PLDomainAddress.administrativeUnitIdentifier" "TERC code (valueCoding) represented as an Identifier"
* extension[teryt].extension[simcIdentifier] -> "PLDomainAddress.localityIdentifier" "SIMC code (valueCoding) represented as an Identifier"
* text -> "PLDomainAddress.text"
