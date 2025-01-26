Extension: AltIsoCountryCode
Id: address-altisocountrycode
Title: "Address: Alt ISO Country Code"
Description: "Kod kraju wg ISO 3166 (trzyliterowy lub numeryczny)"
Context: Address
* ^version = "0.0.1"
/*
* value[x] ^slicing.discriminator.type = #value
* value[x] ^slicing.discriminator.path = "value"
* value[x] ^slicing.rules = #open
* value[x] ^slicing.description = ""
* value[x] ^slicing.ordered = false
* value[x] contains
  alpha3 0..1 and
  numerical 0..1
* value[x][alpha3] only Coding
* value[x][alpha3] from $iso3166-1-3 (required)
* value[x][numerical] only Coding
* value[x][numerical] from $iso3166-1-N (required) 
*/