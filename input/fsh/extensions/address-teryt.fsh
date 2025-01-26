Extension: Teryt
Id: address-teryt
Title: "Address: TERYT Code (PL)"
Description: "Kod TERYT"
Context: Address
* ^version = "0.0.1"
* extension contains
    TERC named tercIdentifier 1..1 and
    SIMC named simcIdentifier 1..1

Extension: TERC
Id: teryt-terc
Title: "Address: TERC Code (PL)"
Description: "Kod TERC"
Context: Teryt
* ^version = "0.0.1"
* value[x] only Coding
* valueCoding.system = $ids-terc

Extension: SIMC
Id: teryt-simc
Title: "Address: SIMC Code (PL)"
Description: "Kod SIMC"
Context: Teryt
* ^version = "0.0.1"
* value[x] only Coding
* valueCoding.system = $ids-simc