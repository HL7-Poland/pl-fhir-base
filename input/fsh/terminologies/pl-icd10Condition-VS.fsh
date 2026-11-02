ValueSet: PLIcd10ConditionVS
Id:	pl-icd10Condition-VS
// FIX (IG Publisher QA): the title was identical to the title of the CodeSystem, which produced duplicate entries
// in the table of contents ("There are multiple resources with the same title [Kod rozpoznania (PL)]").
Title: "Kod rozpoznania – zbiór wartości (PL)"
Description: "Kod rozpoznania wg słownika ICD-10"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* include codes from system http://hl7.org.pl/fhir/CodeSystem/pl-icd10Condition-CS
