Profile: PLBaseLocationMedicalFacilityType
Parent: Location
Id: pl-base-location-medicalfacilitytype
Title: "Location: Medical Facility Type (PL)"
Description: "Rodzaj placówki medycznej wyrażony jako specjalność komórki organizacyjnej (wg cz.VIII kodu resortowego)"
* ^version = "0.0.1"
* identifier ..0
* type 1..1
* type ^patternCodeableConcept.coding.system = $orgCell-type
* managingOrganization ..0