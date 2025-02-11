Profile: PLBaseLocationMedicalFacilityType
Parent: PLBaseLocation
Id: pl-base-location-medicalfacilitytype
Title: "Location: Medical Facility Type (PL)"
Description: "Rodzaj placówki medycznej wyrażony jako specjalność komórki organizacyjnej (wg cz.VIII kodu resortowego)"
* ^version = "0.1.0"
* identifier ..0
* type 1..1
* type ^patternCodeableConcept.coding.system = $ids-medicalEntityCell
* managingOrganization ..0