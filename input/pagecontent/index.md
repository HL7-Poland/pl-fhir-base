Polska specyfikacja bazowa standardu HL7 FHIR (HL7 FHIR PL Base) została opracowana przez [Polskie Stowarzyszenie HL7](https://hl7.org.pl), które jest oficjalną krajową organizacją [HL7 International](https://hl7.org). Specyfikacja ma charakter roboczy i została udostępniona do konsultacji, w wyniku których powstanie wersja stanowiąca oficjalną rekomendację dla implementatorów.

# Wstęp

Specyfikacja zawiera bazowe reguły wymiany danych pomiędzy systemami stosowanymi w polskiej ochronie zdrowia. W skład specyfikacji wchodzą definicje struktur wymienianych obiektów danych (w postaci profili zasobów FHIR, profili typów danych i definicji rozszerzeń) oraz definicje zbiorów wartości słownikowych i definicje słowników własnych. Zawarte w specyfikacji reguły wymiany danych są oparte na regułach określonych w [Polskiej Implementacji Krajowej standardu HL7 CDA (PIK HL7 CDA)](https://www.cez.gov.pl/HL7POL-1.3.2/plcda-html-1.3.2/plcda-html/) oraz są wstępnie zharmonizowane z powstającymi specyfikacjami europejskimi (EEHRxF) standardu [HL7 FHIR](https://hl7.org/fhir/), które będą podstawą wymiany danych w ramach Europejskiej Przestrzeni Danych o Zdrowiu (EHDS).

# Polskie specyfikacje HL7 FHIR

W kontekście uznania HL7 FHIR jako głównego standardu na potrzeby definicji europejskiego formatu wymiany danych EHR, Polskie Stowarzyszenie HL7 rozpoczęło inicjatywę tworzenia specyfikacji interoperacyjności HL7 FHIR na poziomie krajowym. Podobnie jak w przypadku specyfikacji tworzonych na poziomie europejskim, architektura polskich specyfikacji również zakłada układ hierarchiczny, z wyodrębnieniem bazowych specyfikacji, zawierających podstawowe definicje struktur, oraz specyfikacje dziedzinowe, które doprecyzowują wymagania dotyczące określonych obiektów danych pod kątem określonej domeny i przypadków użycia wymiany danych medycznych.
Na potrzeby tworzenia poszczególnych specyfikacji lub grup specyfikacji powołano, w obrębie Polskiego Stowarzyszenia HL7, grupy robocze, których zadaniem jest planowanie procesu tworzenia specyfikacji, wykonywanie prac technicznych związanych z tworzeniem artefaktów specyfikacyjnych oraz komentowanie i zatwierdzanie gotowych produkcyjnych części specyfikacji przy wsparciu całej społeczności polskiego HL7. Pierwszą powołaną w tym celu jest grupa robocza ds. polskiej specyfikacji bazowej HL7 FHIR.
Na poziomie technicznym, polskie specyfikacje standardu HL7 FHIR tworzone są przy pomocy tych samych narzędzi jak specyfikacje europejskie, z wykorzystaniem notacji FHIR Shorthand (FSH), oraz z zachowaniem tych samych konwencji. Dla każdej specyfikacji tworzone jest dedykowane publiczne repozytorium GitHub zawierające definicje artefaktów specyfikacyjnych. Proces tworzenia specyfikacji wykorzystuje mechanizmy CI Build oraz ogólnodostępną infrastrukturę tworzenia wydań specyfikacji build.fhir.org, gdzie każda zmiana w repozytorium kodu specyfikacji skutkuje automatycznym wygenerowaniem nowego roboczego wydania specyfikacji. W procesie tym, na potrzeby publikacji specyfikacji, wykorzystywane jest oficjalne narzędzie IG Publisher aktywnie rozwijane przez ekspertów z HL7. Poszczególne specyfikacje publikowane są jako pakiety NPM z zachowaniem powiązań z pakietami źródłowymi innych specyfikacji. Zasady wersjonowania specyfikacji są zgodnie z zasadami SEMVER z rozszerzeniami HL7, które są powszechnie używane w specyfikacjach europejskich i innych specyfikacjach na poziomie krajowym.

![Polskie specyfikacje HL7 FHIR](diagrams/pl-fhir-ig-layout.png)

W ramach bazowych specyfikacji pochodnych standardu HL7 FHIR zdefiniowano trzy specyfikacje:
- `pl-base` – bazowa specyfikacja w zakresie implementacji standardu HL7 FHIR w Polsce, zawierająca podstawowy zbiór reguł dotyczących obiektów wymiany danych, wspólnych dla wszystkich specyfikacji, domen medycznych i przypadków użycia wymiany danych medycznych w Polsce.
- `pl-extensions` – specyfikacja zawierająca definicję rozszerzeń standardu HL7 FHIR, które zostały utworzone na potrzeby adaptacji tego standardu w warunkach polskich wymagań dotyczących wymiany danych medycznych.
- `pl-terminology` – specyfikacja zawierająca definicję słowników terminologicznych oraz zbiorów wartości opartych na tych słownikach, jak również na zewnętrznych, globalnych słownikach terminologicznych, które są powszechnie wykorzystywane w zakresie wszystkich specyfikacji pochodnych standardów interoperacyjności w Polsce.

W zakresie dziedzinowych specyfikacji pochodnych standardu HL7 FHIR w Polsce zdefiniowano:
- `pl-lab` – specyfikacja obejmująca swoim zakresem definicję struktur w zakresie zleceń oraz wyników badań laboratoryjnych, z uwzględnieniem dokumentu sprawozdania z badania laboratoryjnego.
- `pl-imaging` – specyfikacja w zakresie domeny badań diagnostyki obrazowej, obejmujące przede wszystkim strukturę zlecenia badania obrazowego, wynik tego badania oraz dokumentu raportu z badania obrazowego.

Specyfikacje dziedzinowe tworzone są na podstawie specyfikacji bazowej, doprecyzowując poszczególne struktury danych, w kontekście określonych, specyficznych dla domeny medycznej, przypadków użycia wymiany danych pomiędzy systemami informatycznymi.

# Harmonizacja polskich specyfikacji HL7 FHIR ze specyfikacjami europejskimi w kontekście EHDS

Polskie specyfikacje bazowe i pochodne specyfikacje dziedzinowe dla standardu HL7 FHIR stanowią podstawę dla implementacji tego standardu w Polsce. Aby mogły być one wykorzystane w ramach powszechnej wymiany informacji pomiędzy systemami informatycznymi ochrony zdrowia, w zgodności z europejskim formatem wymiany danych EHR (EEHRxF), należy uwspólnić wymagania dotyczące definicji struktur wymienianych danych oraz stosowanych terminologii, w procesie harmonizacji specyfikacji. Powszechna praktyka stosowana w krajach europejskich w ramach przygotowań do EHDS, polega na dostosowywaniu dotychczas tworzonych specyfikacji HL7 FHIR lub tworzenie nowych, w pełnej zgodności ze specyfikacjami tworzonymi na poziomie europejskim przez HL7 Europe, z zachowaniem lokalnych wymagań, rozszerzeń oraz decyzji dotyczących wykorzystywanych słowników terminologicznych.

![Harmonizacja specyfikacji HL7 FHIR](diagrams/pl-fhir-ig-harmonization.png)

Pierwszą specyfikacją w Polsce, która jest harmonizowana ze specyfikacjami europejskimi, jest Polska specyfikacja bazowa HL7 FHIR (pl-base). Proces dotyczy uwspólniania podstawowych struktur danych oraz wykorzystanych powiązań terminologicznych zgodnie ze specyfikacją EU Base/Core, przy założeniu, że nie jest to proces jednorazowy, z uwagi na aktywny rozwój obu specyfikacji. Istotnym ułatwieniem procesu harmonizacji jest oparcie polskiej specyfikacji bazowej na wspólnym modelu logicznym danych, który również jest adaptacją modeli logicznych tworzonych na poziomie europejskim. Skuteczny proces harmonizacji specyfikacji sprawi, że obiekty (dokumenty medyczne lub zasoby) tworzone w pełnej zgodności z polską specyfikacją, będą jednocześnie w pełni zgodne z wymaganiami zapisanymi w specyfikacji europejskiej, przez co możliwe będzie zachowanie zgodności z europejskim formatem wymiany danych EHR w zakresie podstawowego zakresu informacji jaki jest niezbędny do powszechnej, bezpiecznej wymiany danych pomiędzy systemami w Europie.

# Proponowane kolejne kroki

Następujące kolejne kroki powinny być rozważone przy planowaniu i realizowaniu prac nad krajowymi specyfikacjami standardu HL7 FHIR w Polsce:
- uruchomienie serwera terminologii dla polskich bazowych słowników i zbiorów wartości 
- inwentaryzacja istniejących polskich specyfikacji FHIR
- przygotowanie publikacji specyfikacji dla domeny diagnostyki laboratoryjnej (PL Lab)
- przygotowanie publikacji specyfikacji dla domeny diagnostyki obrazowej (PL Imaging)
- przegląd innych polskich specyfikacji o zasięgu krajowym (np. Zdarzenie medyczne)
- przygotowanie dla MZ rekomendacji dopuszczenia wystawiania dokumentów medycznych również w standardzie HL7 FHIR
- analiza potrzeb i możliwości integracji istniejących mechanizmów wymiany dokumentów w oparciu o profil IHE XDS.b z zastosowaniem standardu HL7 FHIR
- identyfikacja innych obszarów, o które warto uzupełnić krajowe specyfikacje HL7 FHIR (np. zdalna rezerwacja wizyt?)
- publikacja wersji 1.0 polskiej specyfikacji bazowej jako rekomendacji dla implementatorów

