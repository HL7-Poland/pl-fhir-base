Profile: PLBaseMedicalFacilityType
Parent: Location
Id: pl-base-location-medicalFacilityType
Title: "Location: Typ placówki medycznej"
Description: "Typ placówki medycznej"
* ^version = "0.1.0"
* mode 1..1 MS
* mode = #kind
* type 1..1 MS
* type.coding 1..1 MS
* type.coding.system 1..1 MS
* type.coding.version 0..0
* type.coding.code 1..1 MS
* type.coding.display 1..1 MS
* type.coding.userSelected 0..0
* type.text 0..0
* type from PLMedicalEntityCellTypeVS