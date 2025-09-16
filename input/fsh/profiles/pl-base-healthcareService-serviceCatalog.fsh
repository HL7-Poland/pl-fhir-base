Profile: PLBaseServiceCatalog
Parent: HealthcareService
Id: pl-base-healthcareService-serviceCatalog
Title: "HealthcareService: Katalog usług"
Description: "Katalog usług medycznych dostępnych w placówce medycznej"
* ^version = "0.1.0"
* extension contains
    HealthcareServiceCatalogServiceDefinition named serviceDefinition 0..* MS
* identifier 1..* MS 
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* providedBy 1..1 MS
* providedBy only Reference(PLBaseMedicalEntity)
* location only Reference(PLBaseMedicalFacility)
* name 1..1 MS
