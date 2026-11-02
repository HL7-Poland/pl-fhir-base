CodeSystem: PLP1DocumentTypeCS
Id:	pl-p1DocumentType-CS
Title: "Typ dokumentu medycznego wg P1 (PL)"
Description: "Typ dokumentu medycznego według klasyfikacji typów dokumentów na platfomie P1"

// FIX (IG Publisher QA): terminology published by HL7 SHALL conform to the ShareableCodeSystem profile, in which
// CodeSystem.experimental is mandatory; it was missing ("element CodeSystem.experimental is mandatory, but it is not present").
* ^experimental = false
// FIX (IG Publisher QA): ShareableCodeSystem requires CodeSystem.caseSensitive; it was missing
// ("element CodeSystem.caseSensitive is mandatory, but it is not present"). The codes are case sensitive.
* ^caseSensitive = true
// QA ERROR (not fixed, needs a decision): this CodeSystem URL is outside the IG canonical http://hl7.org.pl/fhir/ig/pl-base
// ("URL Mismatch ... does not match the URL"); the IG Publisher expects http://hl7.org.pl/fhir/ig/pl-base/CodeSystem/pl-p1DocumentType-CS.
// The URL is the global identifier of the code system, so changing it breaks existing data and references using it.
* ^url = "http://hl7.org.pl/fhir/CodeSystem/pl-p1DocumentType-CS"
* #00.20 "Karta informacyjna leczenia szpitalnego"
* #00.60 "Protokół operacyjny"
* #00.65 "Informacja o odmowie przyjęcia"
* #02.10 "Skierowanie na badanie lub leczenie"
* #02.11 "Skierowanie na konsultację"
* #02.12 "Prośba o objęcie opieką"
* #02.81 "Zlecenie na zaopatrzenie w wyroby medyczne"
* #04.01 "Recepta"
* #04.12 "Realizacja recepty elektronicznej"
* #04.13 "Realizacja recepty papierowej"
* #05.00 "Konsultacja lekarska"
* #05.50 "Zalecenia pielęgniarskie"
* #05.70 "Pozostałe dokumenty pielęgniarskie"
* #06.00 "Opis badania diagnostycznego"
* #06.10 "Wynik badania laboratoryjnego"
* #07.61 "Wpis do karty szczepień"
* #08.80 "Dokument anulujący"
* #08.90 "Informacja dla lekarza kierującego/POZ"
