Extension: CompositionBasedOnOrder
Id: composition-basedOnOrder
Title: "Composition: Based On Order"
Description: "Zlecenie, w ramach ralizacji którego powstaje dokument"
Context: Composition
* ^version = "0.1.0"
* value[x] only Reference(PLBaseServiceOrder)
