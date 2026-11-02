CodeSystem: PLDischargeDispositionCS
Id: pl-dischargeDisposition-CS
Title: "Tryb wypisu ze szpitala (PL)"
Description: "Kod trybu wypisu ze szpitala"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableCodeSystem profile, in which
// CodeSystem.experimental is mandatory; it was missing ("element CodeSystem.experimental is mandatory, but it is not present").
* ^experimental = false
// FIX (IG Publisher QA): ShareableCodeSystem requires CodeSystem.caseSensitive; it was missing
// ("element CodeSystem.caseSensitive is mandatory, but it is not present"). The codes are case sensitive.
* ^caseSensitive = true
// QA ERROR (not fixed, needs a decision): this CodeSystem URL is outside the IG canonical http://hl7.org.pl/fhir/ig/pl-base
// ("URL Mismatch ... does not match the URL"); the IG Publisher expects http://hl7.org.pl/fhir/ig/pl-base/CodeSystem/pl-dischargeDisposition-CS.
// The URL is the global identifier of the code system, so changing it breaks existing data and references using it.
* ^url = "http://hl7.org.pl/fhir/CodeSystem/pl-dischargeDisposition-CS"
* #1 "zakończenie procesu terapeutycznego lub diagnostycznego"
* #2 "skierowanie do dalszego leczenia w lecznictwie ambulatoryjnym"
* #3 "skierowanie do dalszego leczenia w innym szpitalu"
* #4 "skierowanie do dalszego leczenia w innym niż szpital, zakładzie opieki stacjonarnej"
* #6 "wypisanie na własne żądanie"
* #7 "osoba leczona samowolnie opuściła zakład opieki stacjonarnej przed zakończeniem procesu terapeutycznego lub diagnostycznego"
* #8 "wypisanie na podstawie art. 22 ust. 1 pkt 3 ustawy o zakładach opieki zdrowotnej"
* #9 "zgon pacjenta"
* #10 "osoba leczona, przyjęta w trybie oznaczonym kodem „9” lub „10”, która samowolnie opuściła podmiot leczniczy"
* #11 "wypisanie na podstawie art. 46 albo 47 ustawy z dnia 22 listopada 2013 r."