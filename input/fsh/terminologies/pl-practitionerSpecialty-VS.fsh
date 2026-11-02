ValueSet: PLPractitionerSpecialtyVS
Id: pl-practitionerSpecialty-VS
// FIX (IG Publisher QA): the title was identical to the title of the CodeSystem, which produced duplicate entries
// in the table of contents ("There are multiple resources with the same title [Specjalność lekarska (PL)]").
Title: "Specjalność lekarska – zbiór wartości (PL)"
Description: "Specjalność lekarska"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* include codes from system http://hl7.org.pl/fhir/CodeSystem/pl-practitionerSpecialty-CS
