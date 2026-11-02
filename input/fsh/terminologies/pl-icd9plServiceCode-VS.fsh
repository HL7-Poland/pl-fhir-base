ValueSet: PLIcd9PLServiceCodeVS
Id: pl-icd9plServiceCode-VS
// FIX (IG Publisher QA): the title was identical to the title of the CodeSystem, which produced duplicate entries
// in the table of contents ("There are multiple resources with the same title [Kod usługi medycznej wg ICD-9-PL]").
Title: "Kod usługi medycznej wg ICD-9-PL – zbiór wartości"
Description: "Kod usługi medycznej według ICD-9 PL"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* include codes from system http://hl7.org.pl/fhir/CodeSystem/pl-icd9plServiceCode-CS
