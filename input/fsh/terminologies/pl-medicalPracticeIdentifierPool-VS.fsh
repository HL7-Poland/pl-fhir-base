ValueSet: PLMedicalPracticeIdentifierPoolVS
Id: pl-medicalPracticeIdentifierPool-VS
// FIX (IG Publisher QA): the title was identical to the title of the CodeSystem, which produced duplicate entries
// in the table of contents ("There are multiple resources with the same title [Pule identyfikatorów praktyk zawodowych (PL)]").
Title: "Pule identyfikatorów praktyk zawodowych – zbiór wartości (PL)"
Description: "Pule identyfikatorów praktyk zawodowych nadawanych przez izby zawodowe"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* include codes from system http://hl7.org.pl/fhir/CodeSystem/pl-medicalPracticeIdentifierPool-CS
