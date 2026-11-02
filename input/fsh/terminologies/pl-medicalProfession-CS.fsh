CodeSystem: PLMedicalProfessionCS
Id: pl-medicalProfession-CS
Title: "Zawód medyczny (PL)"
Description: "Zawód medyczny"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableCodeSystem profile, in which
// CodeSystem.experimental is mandatory; it was missing ("element CodeSystem.experimental is mandatory, but it is not present").
* ^experimental = false
// FIX (IG Publisher QA): ShareableCodeSystem requires CodeSystem.caseSensitive; it was missing
// ("element CodeSystem.caseSensitive is mandatory, but it is not present"). The codes are case sensitive.
* ^caseSensitive = true
// QA ERROR (not fixed, needs a decision): this CodeSystem URL is outside the IG canonical http://hl7.org.pl/fhir/ig/pl-base
// ("URL Mismatch ... does not match the URL"); the IG Publisher expects http://hl7.org.pl/fhir/ig/pl-base/CodeSystem/pl-medicalProfession-CS.
// The URL is the global identifier of the code system, so changing it breaks existing data and references using it.
* ^url = "http://hl7.org.pl/fhir/CodeSystem/pl-medicalProfession-CS"
* #LEK "Lekarz"
* #FEL "Felczer"
* #LEKD "Lekarz dentysta"
* #PIEL "Pielęgniarka"
* #POL "Położna"
* #FARM "Farmaceuta"
* #DLAB "Diagnosta laboratoryjny"
* #TFARM "Technik farmaceutyczny"
