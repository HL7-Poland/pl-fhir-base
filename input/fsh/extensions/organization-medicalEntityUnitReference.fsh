Extension: MedicalEntityUnitReference
Id: organization-medicalEntityUnitReference
Title: "Organization: Medical Entity Unit Reference"
Description: "Referencja do jednostki podmiotu leczniczego"
Context: Organization
* value[x] only Reference(PLBaseMedicalEntityUnit)
* valueReference.reference 0..1 MS
* valueReference.identifier 0..1 MS
* valueReference.identifier.system 1..1 MS
* valueReference.identifier.system = $ids-medicalEntityUnit
* valueReference.identifier.value 1..1 MS