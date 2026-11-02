ValueSet: PLMedicalPracticeLocationIdentifierPoolVS
Id: pl-medicalPracticeLocationIdentifierPool-VS
// FIX (IG Publisher QA): the title was identical to the title of the CodeSystem, which produced duplicate entries
// in the table of contents ("There are multiple resources with the same title [Pule identyfikatorów miejsc udzielania świadczeń w ramach praktyk zawodowych (PL)]").
Title: "Pule identyfikatorów miejsc udzielania świadczeń w ramach praktyk zawodowych – zbiór wartości (PL)"
Description: "Pule identyfikatorów miejsc udzielania świadczeń w ramach praktyk zawodowych nadawane przez izby zawodowe"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
// QA ERROR (not fixed, needs a decision): this ValueSet URL is outside the IG canonical http://hl7.org.pl/fhir/ig/pl-base
// ("URL Mismatch ... does not match the URL"); the IG Publisher expects http://hl7.org.pl/fhir/ig/pl-base/ValueSet/pl-medicalPracticeLocationIdentifierPool-VS.
// The URL is the global identifier of the value set, so changing it breaks existing data and references using it. Note: this ValueSet URL also contains
// the path segment "/CodeSystem/" instead of "/ValueSet/", which looks like a copy-paste error.
* ^url = "http://hl7.org.pl/fhir/CodeSystem/pl-medicalPracticeLocationIdentifierPool-VS"
* include codes from system http://hl7.org.pl/fhir/CodeSystem/pl-medicalPracticeLocationIdentifierPool-CS