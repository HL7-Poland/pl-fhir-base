Extension: CompositionBasedOnOrder
Id: composition-basedOnOrder
Title: "Composition: Based On Order"
Description: "Zlecenie, w ramach ralizacji którego powstaje dokument"
Context: Composition
* ^version = "0.1.0"
// FIX: the PLBaseServiceOrder profile (pl-base-serviceRequest-order) was removed from the IG, which caused the SUSHI error
// "No definition for the type PLBaseServiceOrder could be found". The base FHIR ServiceRequest resource is used instead.
* value[x] only Reference(ServiceRequest)
