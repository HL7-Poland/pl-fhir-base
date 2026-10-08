Extension: HealthcareServiceCatalogServiceDefinition
Id: healthcareService-catalogServiceDefinition
Title: "Referencja do usługi katalogowej (PL)"
Description: "Referencja do usługi katalogowej"
Context: HealthcareService
// FIX: the PLBaseCatalogService profile (pl-base-activityDefinition-catalogService) was removed from the IG, which caused
// the SUSHI error "No definition for the type PLBaseCatalogService could be found". The base FHIR ActivityDefinition is used instead.
* value[x] only Canonical(ActivityDefinition)