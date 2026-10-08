# Dane pacjenta {#patient}

![Model danych pacjenta](diagrams/pl-domain-patient.png)

Model z prefiksem PLDomain opisuje dane identyfikacyjne i kontaktowe pacjenta w polskiej dokumentacji medycznej i składa się z czterech klas.

**PLDomainPatient** jest klasą główną modelu i reprezentuje pacjenta. Atrybut `nationalIdentifier` przenosi numer PESEL i jest opcjonalny, ponieważ przepisy wymagają go tylko wtedy, gdy został nadany. Atrybuty `identityCardNumber` i `passportNumber` zawierają serię i numer dowodu osobistego albo paszportu, czyli dokumentu potwierdzającego tożsamość osoby bez numeru PESEL. Atrybut `motherIdentifier` to numer PESEL matki, którym oznacza się noworodka. Atrybut `administrativeGender` zapisuje płeć jako pojedynczy kod ze słownika. Wszystkie pięć atrybutów ma krotność 0..1, a ich zestaw odpowiada oznaczeniu pacjenta z art. 25 ust. 1 pkt 1 ustawy o prawach pacjenta i Rzeczniku Praw Pacjenta. Klasa jest powiązana z pozostałymi trzema asocjacjami: `name` o krotności 1..1, co oznacza dokładnie jedno nazwisko z imionami, oraz `telecom` i `address` o krotności 0..*, czyli dowolną liczbę danych kontaktowych i adresów.

**PLDomainHumanName** opisuje nazwisko i imiona pacjenta. Atrybut `family` jest obowiązkowy i występuje dokładnie raz, więc nazwisko, także dwuczłonowe, zapisuje się jednym ciągiem znaków. Atrybut `given` ma krotność 1..2, co oznacza obowiązkowe pierwsze imię i opcjonalne drugie, zgodnie z limitem dwóch imion z Prawa o aktach stanu cywilnego.

**PLDomainTelecom** opisuje dane kontaktowe. Klasa deklaruje jeden obowiązkowy atrybut `type`, będący kodem rodzaju kontaktu, który pozwala odróżnić numer telefonu od adresu poczty elektronicznej. Oba te rodzaje danych wymienia art. 4 ust. 3 ustawy o systemie informacji w ochronie zdrowia.

**PLDomainAddress** opisuje adres w postaci ustrukturyzowanej. Obowiązkowe są cztery atrybuty: `streetName` (nazwa ulicy), `houseNumber` (numer budynku), `city` (miejscowość) i `postalCode` (kod pocztowy). Opcjonalne są `unitId`, czyli numer lokalu, oraz `postBox`, czyli skrytka pocztowa. Atrybut `country` wskazuje kraj, a stereotyp «binding» oznacza, że jego wartość pochodzi z określonego zbioru kodów. Atrybuty `administrativeUnitIdentifier` i `localityIdentifier` to identyfikatory z rejestru TERYT: pierwszy wskazuje jednostkę podziału terytorialnego (kod TERC), drugi miejscowość (kod SIMC). Służą one weryfikacji danych adresowych w referencyjnych bazach danych, której wymaga ustawa o systemie informacji w ochronie zdrowia. Atrybut `text` pozwala zapisać cały adres jednym ciągiem tekstu, gdy nie da się go rozbić na pola.

# Dane pracownika medycznego {#health-professional}

![Dane pracownika medycznego](diagrams/pl-domain-healthProfessional.png)

Diagram przedstawia krajowy model pracownika medycznego. Jego klasą centralną jest **PLDomainHealthProfessional**, opisująca osobę wykonującą zawód medyczny. Ma ona trzy atrybuty: obowiązkowy i pojedynczy numer prawa wykonywania zawodu (professionalLicenceNumber, typ Identifier, krotność 1..1), opcjonalny identyfikator upoważnienia (authorizationIdentifier, Identifier, 0..1) oraz co najmniej jeden kod kwalifikacji zawodowej (qualificationCode, Coding, 1..*). Pracownik ma dokładnie jedno imię i nazwisko, dowolną liczbę adresów i danych kontaktowych oraz dowolną liczbę ról zawodowych. Role są z nim związane kompozycją, czyli stanowią jego część i nie istnieją samodzielnie.

Imię i nazwisko opisuje klasa **PLDomainHumanName** z dwoma atrybutami tekstowymi: family, czyli dokładnie jedno nazwisko (1..1), oraz given, czyli jedno lub dwa imiona (1..2). Dane kontaktowe reprezentuje **PLDomainTelecom**, w której jedynym atrybutem krajowym jest obowiązkowy kod rodzaju kontaktu (type, Coding, 1..1).

Klasa **PLDomainHealthProfessionalRole** opisuje rolę, w jakiej pracownik występuje w konkretnym miejscu. Zawiera dwa opcjonalne, wielokrotne atrybuty kodowane: role, czyli pełnione funkcje, oraz specialty, czyli specjalizacje (oba Coding, 0..*). Rola może wskazywać organizację na dwa sposoby, każdy o krotności 0..1: jako komórkę organizacyjną podmiotu leczniczego albo jako praktykę zawodową. Notatka „OR” łącząca oba powiązania oznacza, że są to warianty alternatywne. Rola może też wskazywać jedno miejsce udzielania świadczeń (serviceLocation, 0..1).

Organizacje tworzą prostą hierarchię. **PLDomainOrganisation** jest wspólnym krajowym nadtypem, a jego dwiema specjalizacjami są **PLDomainMedicalEntityCell**, czyli komórka organizacyjna podmiotu leczniczego, oraz **PLDomainMedicalPractice**, czyli praktyka zawodowa.

Ostatnią klasą jest **PLDomainServiceLocation**, opisująca miejsce udzielania świadczeń. Wymaga ona co najmniej jednego identyfikatora miejsca (identifier, Identifier, 1..*) oraz dokładnie jednego kodu specjalności (specialtyCode, Coding, 1..1).

Na samym diagramie widać kilka usterek redakcyjnych: literówki w nazwach „HelathProfessionalRole” i „qualiicationCode”, krotność specialtyCode zapisaną jako „1.1” zamiast „1..1” oraz pozostawioną pustą etykietę „Text” przy jednej ze strzałek.

# Dane podmiotu wykonującego działalność leczniczą oraz praktyki zawodowej {#organisation}

![Model danych ogranizacji](diagrams/pl-domain-organisation.png)

**PLDomainOrganisation** jest centralnym elementem modelu i pełni rolę ogólnego opisu organizacji w polskiej domenie. Ma trzy atrybuty własne: identifier, czyli dowolną liczbę identyfikatorów, obowiązkowy name z nazwą organizacji oraz type, czyli dowolną liczbę kodów określających jej rodzaj. Klasa wiąże się z dowolną liczbą adresów i danych kontaktowych, a opcjonalna relacja partOf pozwala wskazać organizację nadrzędną. Dziedziczy po niej pięć klas szczegółowych, które zawężają te ogólne reguły.

**PLDomainMedicalEntity** opisuje podmiot leczniczy. Wymaga dokładnie jednego entityIdentifier, któremu odpowiada numer księgi rejestrowej w rejestrze podmiotów wykonujących działalność leczniczą, jednego regonEntityIdentifier z numerem REGON podmiotu oraz jednego taxIdentificationNumber, czyli NIP. Adres jest tu obowiązkowy i pojedynczy, a dane kontaktowe muszą wystąpić co najmniej raz.

**PLDomainMedicalEntityFacility** to zakład leczniczy, czyli zespół składników majątkowych, za pomocą którego podmiot wykonuje określony rodzaj działalności leczniczej. Jego jedynym własnym identyfikatorem jest regonLocalUnitIdentifier, odpowiadający 14-znakowemu numerowi REGON zakładu. Zakład ma jeden adres, co najmniej jeden kontakt i obowiązkowo należy do dokładnie jednego podmiotu leczniczego.

**PLDomainMedicalEntityUnit** reprezentuje jednostkę organizacyjną zakładu. Atrybut entityUnitIdentifier odpowiada 2-znakowemu kodowi resortowemu z części V, a pozostałe atrybuty, czyli adres i dane kontaktowe, mają takie same liczności jak w zakładzie. Jednostka jest częścią dokładnie jednego zakładu leczniczego.

**PLDomainMedicalEntityCell** to komórka organizacyjna, najniższy poziom struktury. Oprócz adresu i kontaktu ma entityCellIdentifier, czyli 3-znakowy kod z części VII, oraz obowiązkowy type, któremu odpowiada 4-znakowy kod specjalności komórki z części VIII. W modelu komórka zawsze należy do dokładnie jednej jednostki organizacyjnej, choć przepisy dopuszczają też komórkę działającą w zakładzie poza jednostką.

**PLDomainMedicalPractice** opisuje praktykę zawodową, czyli formę wykonywania zawodu przez lekarza, pielęgniarkę, fizjoterapeutę lub diagnostę laboratoryjnego. Klasa jest najprostsza w modelu: wymaga co najmniej jednego identifier i nazwy.

Dwie klasy pomocnicze opisują dane teleadresowe. **PLDomainAddress** wymaga nazwy ulicy (streetName), numeru domu (houseNumber), miejscowości (city) i kodu pocztowego (postalCode). Opcjonalne są numer lokalu (unitId), skrytka pocztowa (postBox), kod kraju z wiązaniem do słownika (country), identyfikatory jednostki podziału terytorialnego i miejscowości (administrativeUnitIdentifier, localityIdentifier) oraz adres w postaci jednego napisu (text). **PLDomainTelecom** dodaje obowiązkowy type, czyli kod rodzaju kanału kontaktu, na przykład telefon lub poczta elektroniczna.

# Dane miejsca udzielania świadczeń (MUŚ) {#service-location}

![Model danych MUŚ](diagrams/pl-domain-location.png)

Podstawową klasą modelu jest **PLDomainLocation**, która znaczeniowo odpowiada zasobowi Location w standardzie FHIR, czyli opisuje fizyczne miejsce. Ma obowiązkową nazwę (name, string 1..1) oraz dowolną liczbę identyfikatorów (identifier, Identifier 0..\*) i typów (type, Coding 0..\*). Musi mieć dokładnie jeden adres **PLDomainAddress** (address, 1..1), może mieć dowolną liczbę kontaktów **PLDomainTelecom** (telecom, 0..\*) i może wskazywać najwyżej jedną organizację zarządzającą **PLDomainOrganisation** (managingOrganisation, 0..1).

**PLDomainServiceLocation** dziedziczy po **PLDomainLocation** i reprezentuje miejsce udzielania świadczeń medycznych w rozumieniu polskiego ustawodawstwa. Wymaga co najmniej jednego identyfikatora (identifier, 1..\*) oraz dokładnie jednego kodu specjalności (specialtyCode, Coding; na diagramie zapisano „[1.1]", co należy czytać jako 1..1). Jej organizacją zarządzającą (managingOrganisation, 0..1) jest albo **PLDomainMedicalPractice**, albo **PLDomainMedicalEntityCell**. Obie asocjacje łączy notatka „OR", więc dla danego miejsca stosuje się tylko jedną z nich.

**PLDomainOrganisation** reprezentuje organizację. Ma obowiązkową nazwę (name, string 1..1) oraz dowolną liczbę identyfikatorów (identifier, Identifier 0..\*) i typów (type, Coding 0..\*). Może być powiązana z dowolną liczbą adresów **PLDomainAddress** (address, 0..\*).

Po **PLDomainOrganisation** dziedziczą dwie klasy. **PLDomainMedicalPractice** zaostrza wymagania: co najmniej jeden identyfikator (identifier, 1..\*) i obowiązkowa nazwa (name, 1..1). **PLDomainMedicalEntityCell** dodaje obowiązkowy identyfikator komórki (entityCellIdentifier, Identifier 1..1), dokładnie jeden typ (type, Coding 1..1), dokładnie jeden adres (address, **PLDomainAddress** 1..1) oraz co najmniej jeden kontakt (telecom, **PLDomainTelecom** 1..\*).

**PLDomainAddress** opisuje adres. Wymagane są w nim nazwa ulicy (streetName), numer budynku (houseNumber), miejscowość (city) i kod pocztowy (postalCode), wszystkie typu string o krotności 1..1. Opcjonalnie (0..1) można podać numer lokalu (unitId), skrytkę pocztową (postBox), kraj (country) jako CodeableConcept oznaczony stereotypem «binding», czyli powiązany ze zbiorem wartości, oraz adres w postaci tekstowej (text). Klasa zawiera też dwa opcjonalne atrybuty typu Identifier: identyfikator jednostki administracyjnej (administrativeUnitIdentifier) i identyfikator miejscowości (localityIdentifier).

**PLDomainTelecom** reprezentuje dane kontaktowe i definiuje jeden atrybut: obowiązkowy typ kontaktu (type, Coding 1..1).