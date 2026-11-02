ValueSet: PLDischargeDispositionVS
Id: pl-discharge-disposition-VS
// FIX (IG Publisher QA): the title was identical to the title of the CodeSystem, which produced duplicate entries
// in the table of contents ("There are multiple resources with the same title [Tryb wypisu ze szpitala (PL)]").
Title: "Tryb wypisu ze szpitala – zbiór wartości (PL)"
Description: "Kod trybu wypisu ze szpitala"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableValueSet profile, in which
// ValueSet.experimental is mandatory; it was missing ("element ValueSet.experimental is mandatory, but it is not present").
* ^experimental = false
* include codes from system http://hl7.org.pl/fhir/CodeSystem/pl-dischargeDisposition-CS