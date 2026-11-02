ValueSet: PLMedicalEntityCellTypeVS
Id:	pl-medicalEntityCellType-VS
// FIX (IG Publisher QA): the title was identical to the title of the CodeSystem, which produced duplicate entries
// in the table of contents ("There are multiple resources with the same title [Specjalność komórki organizacyjnej (PL)]").
Title: "Specjalność komórki organizacyjnej – zbiór wartości (PL)"
Description: "Specjalność komórki organizacyjnej podmiotu medycznego (cz. VIII SKR)"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* include codes from system http://hl7.org.pl/fhir/CodeSystem/pl-medicalEntityCellType-CS
