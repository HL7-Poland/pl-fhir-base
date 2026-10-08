// FIX: the definition was declared with the "Resource:" keyword, which defines a new resource type and caused the SUSHI error
// "Invalid parent Encounter specified for resource PLBaseEncounter. The parent of a resource must be Resource or DomainResource".
// A constraint on Encounter is a profile, so the "Profile:" keyword is used.
Profile: PLBaseEncounter
Parent: Encounter
Id: pl-base-encounter
Title: "Encounter (PL Base)"
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Interakcja między świadczeniodawcą (świadczeniodawcami) a pacjentem (pacjentami) w celu udzielenia świadczeń zdrowotnych lub oceny stanu zdrowia pacjenta (pacjentów).]])

* . ^short = "An interaction during which services are provided to the patient"
* . ^definition = "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.  Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* . insert PLTranslation([[Interakcja, podczas której pacjentowi udzielane są świadczenia]], [[Interakcja między pacjentem a świadczeniodawcą (świadczeniodawcami) w celu udzielenia świadczeń zdrowotnych lub oceny stanu zdrowia pacjenta. Zasób Encounter (wizyta/pobyt) służy przede wszystkim do rejestrowania informacji o faktycznie przeprowadzonych czynnościach, natomiast zasób Appointment służy do rejestrowania czynności zaplanowanych.]])

* identifier insert PLTranslation([[Identyfikator(y), pod którymi znana jest ta wizyta/pobyt]], [[Identyfikator(y), pod którymi znana jest ta wizyta/pobyt.]])
* status insert PLTranslation([[planned | in-progress | on-hold | discharged | completed | cancelled | discontinued | entered-in-error | unknown]], [[Bieżący stan wizyty/pobytu (nie stan pacjenta w trakcie wizyty/pobytu – określa go subjectState).]])
* class insert PLTranslation([[Klasyfikacja kontekstu kontaktu z pacjentem – np. stacjonarny, ambulatoryjny]], [[Pojęcia reprezentujące klasyfikację kontaktu pacjenta, np. ambulatoryjny, stacjonarny (szpitalny), w trybie nagłym, opieka domowa lub inne, wynikające z lokalnych uwarunkowań.]])
* priority insert PLTranslation([[Wskazuje pilność wizyty/pobytu]], [[Wskazuje pilność wizyty/pobytu.]])

* type 0..1
* type from PLMedicalEntityCellTypeVS
* type insert PLTranslation([[Szczegółowy typ wizyty/pobytu (np. konsultacja e-mailowa, chirurgia jednego dnia, ...)]], [[Szczegółowy typ wizyty/pobytu (np. konsultacja e-mailowa, chirurgia jednego dnia, specjalistyczna opieka pielęgniarska, rehabilitacja).]])

* serviceType insert PLTranslation([[Szczegółowy typ usługi]], [[Ogólna kategoria usługi, która ma zostać udzielona (np. kardiologia).]])

* subject 1..1
* subject only Reference(PLBasePatient)
* subject insert PLTranslation([[Pacjent lub grupa związana z tą wizytą/pobytem]], [[Pacjent lub grupa związana z tą wizytą/pobytem. W niektórych przypadkach użycia pacjent MOŻE nie być obecny, np. podczas konsylium kilku pracowników medycznych lub zespołu opieki dotyczącego pacjenta.]])

* subjectStatus insert PLTranslation([[Bieżący status podmiotu w odniesieniu do wizyty/pobytu]], [[Wartość subjectStatus może służyć do śledzenia statusu pacjenta w ramach wizyty/pobytu. Określa, czy pacjent przybył lub opuścił placówkę, czy przeszedł triaż, czy obecnie oczekuje.]])
* episodeOfCare insert PLTranslation([[Epizod(y) opieki, w ramach których należy zarejestrować tę wizytę/pobyt]], [[Pole to należy stosować, gdy konkretna wizyta/pobyt powinna zostać sklasyfikowana jako część określonego epizodu (epizodów) opieki. Powiązanie to może ułatwić grupowanie powiązanych wizyt/pobytów w określonym celu, np. sprawozdawczości do organów państwowych, śledzenia problemów, powiązania przez wspólny problem zdrowotny. Powiązanie jest rejestrowane w wizycie/pobycie, ponieważ są one zazwyczaj tworzone po epizodzie opieki i grupowane przy wprowadzaniu, zamiast edytowania epizodu opieki w celu dołączenia do niego kolejnej wizyty (epizod opieki może obejmować wiele lat).]])
* basedOn insert PLTranslation([[Zlecenie, które zainicjowało tę wizytę/pobyt]], [[Zlecenie realizowane przez tę wizytę/pobyt (np. przychodzące skierowanie lub zlecenie procedury).]])
* careTeam insert PLTranslation([[Grupa (grupy) przydzielone do udziału w tej wizycie/pobycie]], [[Grupa (grupy) osób lub organizacji przydzielonych do udziału w tej wizycie/pobycie. Element szkieletowy participant rejestruje faktyczne informacje o tym, kiedy te osoby uczestniczyły w wizycie/pobycie.]])

* partOf only Reference(PLBaseEncounter)
* partOf insert PLTranslation([[Inna wizyta/pobyt, której częścią jest ta wizyta/pobyt]], [[Inna wizyta/pobyt, której częścią (administracyjnie lub czasowo) jest ta wizyta/pobyt.]])

* serviceProvider only Reference(PLBaseMedicalEntity or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell or PLBaseMedicalPractice)
* serviceProvider insert PLTranslation([[Organizacja (placówka) odpowiedzialna za tę wizytę/pobyt]], [[Organizacja ponosząca główną odpowiedzialność za świadczenia udzielane w ramach tej wizyty/pobytu. MOŻE to być ta sama organizacja co w danych pacjenta, ale może być też inna, np. gdy wykonawca świadczeń pochodził z organizacji zewnętrznej (która może być rozliczana oddzielnie) w ramach konsultacji zewnętrznej. Zob. przykład kolonoskopii na zakładce przykładów zasobu Encounter.]])

* participant insert PLTranslation([[Lista uczestników wizyty/pobytu]], [[Lista osób odpowiedzialnych za udzielenie świadczenia.]])
* participant.type insert PLTranslation([[Rola uczestnika w wizycie/pobycie]], [[Rola uczestnika w wizycie/pobycie.]])
* participant.period insert PLTranslation([[Okres w trakcie wizyty/pobytu, w którym uczestnik brał udział]], [[Okres, w którym wskazany uczestnik brał udział w wizycie/pobycie. Okresy te mogą się nakładać lub być podzbiorami całkowitego okresu wizyty/pobytu.]])

// FIX: typo "PLBAsePractitionerRole" caused the SUSHI error "No definition for the type PLBAsePractitionerRole could be found";
// corrected to PLBasePractitionerRole.
* participant.actor only Reference(PLBasePatient or Group or RelatedPerson or PLBasePractitioner or PLBasePractitionerRole or Device or HealthcareService)
* participant.actor insert PLTranslation([[Osoba, urządzenie lub usługa uczestnicząca w wizycie/pobycie]], [[Osoba zaangażowana w wizytę/pobyt; podaje się tu również pacjenta/grupę, aby wskazać, że pacjent faktycznie uczestniczył w wizycie. Pominięcie pacjenta obejmuje przypadki użycia takie jak konsylium pracowników medycznych dotyczące pacjenta – czas bez kontaktu z pacjentem.]])

* appointment insert PLTranslation([[Wizyta umówiona, w ramach której zaplanowano tę wizytę/pobyt]], [[Wizyta umówiona (Appointment), w ramach której zaplanowano tę wizytę/pobyt.]])
* virtualService insert PLTranslation([[Dane połączenia usługi wirtualnej (np. telekonferencji)]], [[Dane połączenia usługi wirtualnej (np. telekonferencji).]])

* actualPeriod 1..1 
* actualPeriod insert PLTranslation([[Rzeczywisty czas rozpoczęcia i zakończenia wizyty/pobytu]], [[Rzeczywisty czas rozpoczęcia i zakończenia wizyty/pobytu.]])

* plannedStartDate insert PLTranslation([[Planowana data/godzina rozpoczęcia (lub data przyjęcia) wizyty/pobytu]], [[Planowana data/godzina rozpoczęcia (lub data przyjęcia) wizyty/pobytu.]])
* plannedEndDate insert PLTranslation([[Planowana data/godzina zakończenia (lub data wypisu) wizyty/pobytu]], [[Planowana data/godzina zakończenia (lub data wypisu) wizyty/pobytu.]])
* length insert PLTranslation([[Rzeczywisty czas trwania wizyty/pobytu (bez czasu nieobecności)]], [[Rzeczywisty czas trwania wizyty/pobytu. Nie obejmuje czasu przepustek. W przypadku braku jest to czas między wartościami start i end.]])

* reason insert PLTranslation([[Lista przyczyn medycznych, które mają zostać zaopatrzone w trakcie epizodu opieki]], [[Lista przyczyn medycznych, które mają zostać zaopatrzone w trakcie epizodu opieki.]])
* reason.use insert PLTranslation([[Do czego/jako co należy użyć wartości przyczyny]], [[Jako co należy użyć wartości przyczyny, np. główna dolegliwość, problem zdrowotny, profilaktyka zdrowotna (w tym badania przesiewowe).]])
* reason.value insert PLTranslation([[Przyczyna wizyty/pobytu (kod lub odwołanie)]], [[Przyczyna wizyty/pobytu wyrażona jako kod lub odwołanie do innego zasobu. W przypadku przyjęć może służyć do podania kodowanego rozpoznania przy przyjęciu.]])

* diagnosis 1..*
* diagnosis insert PLTranslation([[Lista rozpoznań istotnych dla tej wizyty/pobytu]], [[Lista rozpoznań istotnych dla tej wizyty/pobytu.]])

* diagnosis.condition 1..1
// FIX: the PLBaseDiagnosis profile (pl-base-condition-diagnosis) was removed from the IG, which caused the SUSHI error
// "No definition for the type PLBaseDiagnosis could be found". The base FHIR Condition resource is used instead.
* diagnosis.condition only CodeableReference(Condition)

* diagnosis.condition insert PLTranslation([[Rozpoznanie istotne dla wizyty/pobytu]], [[Kodowane rozpoznanie lub odwołanie do zasobu Condition (z innymi zasobami wskazanymi w evidence.detail); właściwość use wskazuje cel tego konkretnego rozpoznania.]])
* diagnosis.use insert PLTranslation([[Rola tego rozpoznania w ramach wizyty/pobytu (np. przy przyjęciu, rozliczeniowe, przy wypisie …)]], [[Rola tego rozpoznania w ramach wizyty/pobytu (np. przy przyjęciu, rozliczeniowe, przy wypisie …).]])

* account insert PLTranslation([[Zestaw kont, które mogą być użyte do rozliczenia tej wizyty/pobytu]], [[Zestaw kont, które mogą być użyte do rozliczenia tej wizyty/pobytu.]])
* dietPreference insert PLTranslation([[Preferencje dietetyczne zgłoszone przez pacjenta]], [[Preferencje dietetyczne zgłoszone przez pacjenta.]])
* specialArrangement insert PLTranslation([[Wózek inwalidzki, tłumacz, nosze itp.]], [[Wszelkie szczególne prośby zgłoszone dla tej wizyty/pobytu, np. zapewnienie określonego sprzętu lub innych rzeczy.]])
* specialCourtesy insert PLTranslation([[Szczególne udogodnienia (VIP, członek zarządu)]], [[Szczególne udogodnienia, które mogą zostać zapewnione pacjentowi podczas wizyty/pobytu (VIP, członek zarządu, uprzejmość zawodowa).]])

* admission insert PLTranslation([[Szczegóły przyjęcia do świadczenia zdrowotnego]], [[Szczegóły pobytu, podczas którego udzielane jest świadczenie zdrowotne. Nie opisuje zdarzenia przyjęcia pacjenta, lecz wszelkie informacje istotne od momentu przyjęcia do momentu wypisu.]])
* admission.preAdmissionIdentifier insert PLTranslation([[Identyfikator przedprzyjęciowy]], [[Identyfikator przedprzyjęciowy.]])
* admission.origin insert PLTranslation([[Lokalizacja/organizacja, z której pacjent przybył przed przyjęciem]], [[Lokalizacja/organizacja, z której pacjent przybył przed przyjęciem.]])
* admission.admitSource insert PLTranslation([[Skąd pacjent został przyjęty (skierowanie lekarskie, przeniesienie)]], [[Skąd pacjent został przyjęty (skierowanie lekarskie, przeniesienie).]])
* admission.reAdmission insert PLTranslation([[Wskazuje, że pacjent jest przyjmowany ponownie]], [[Wskazuje, że ta wizyta/pobyt jest bezpośrednio związana z wcześniejszym przyjęciem, często dlatego, że problemy zdrowotne zaopatrywane podczas wcześniejszego przyjęcia nie zostały w pełni rozwiązane.]])
* admission.destination insert PLTranslation([[Lokalizacja/organizacja, do której pacjent zostaje wypisany]], [[Lokalizacja/organizacja, do której pacjent zostaje wypisany.]])

* admission.dischargeDisposition from PLDischargeDispositionVS
* admission.dischargeDisposition insert PLTranslation([[Kategoria lub rodzaj miejsca po wypisie]], [[Kategoria lub rodzaj miejsca po wypisie.]])

* location insert PLTranslation([[Lista lokalizacji, w których przebywał pacjent]], [[Lista lokalizacji, w których pacjent przebywał podczas tej wizyty/pobytu.]])

* location.location only Reference(PLBaseLocation)
* location.location insert PLTranslation([[Lokalizacja, w której odbywa się wizyta/pobyt]], [[Lokalizacja, w której odbywa się wizyta/pobyt.]])

* location.status insert PLTranslation([[planned | active | reserved | completed]], [[Status obecności uczestników we wskazanej lokalizacji w podanym okresie. Jeśli uczestnik nie przebywa już w danej lokalizacji, okres będzie miał datę/godzinę zakończenia.]])
* location.form insert PLTranslation([[Fizyczny typ lokalizacji (zwykle poziom w hierarchii lokalizacji – łóżko, sala, oddział, lokalizacja wirtualna itp.)]], [[Służy do określenia wymaganych poziomów (łóżko/oddział/sala itp.), które mają być rejestrowane w celu uproszczenia wymiany komunikatów lub zapytań.]])
* location.period insert PLTranslation([[Okres, w którym pacjent przebywał w lokalizacji]], [[Okres, w którym pacjent przebywał w lokalizacji.]])
