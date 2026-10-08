Profile: PLBaseLocation
Parent: LocationEuCore
Id: pl-base-location
Title: "Location (PL Baae)"
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Szczegóły i informacje o położeniu miejsca, w którym udzielane są świadczenia oraz w którym mogą być przechowywane, znajdować się, być zawarte lub przebywać zasoby i uczestnicy.]])

* . ^short = "Details and position information for a place"
* . ^definition = "Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated."
* . insert PLTranslation([[Szczegóły i informacje o położeniu miejsca]], [[Szczegóły i informacje o położeniu miejsca, w którym udzielane są świadczenia oraz w którym mogą być przechowywane, znajdować się, być zawarte lub przebywać zasoby i uczestnicy.]])

* identifier insert PLTranslation([[Unikalny kod lub numer identyfikujący lokalizację dla jej użytkowników]], [[Unikalny kod lub numer identyfikujący lokalizację dla jej użytkowników.]])
* status insert PLTranslation([[active | suspended | inactive]], [[Właściwość status dotyczy ogólnej dostępności zasobu, a nie bieżącej wartości, którą może określać operationStatus lub harmonogram/przedziały czasowe, jeśli zostały skonfigurowane dla lokalizacji.]])
* operationalStatus insert PLTranslation([[Status operacyjny lokalizacji (zwykle tylko dla łóżka/sali)]], [[Status operacyjny obejmuje wartości operacyjne najbardziej istotne dla łóżek (ale może dotyczyć również sal/jednostek/foteli itp., np. izolatki/fotela do dializ). Zwykle obejmuje pojęcia takie jak skażenie, sprzątanie oraz inne czynności, np. konserwację.]])

* name 1..1 
* name insert PLTranslation([[Nazwa lokalizacji używana przez ludzi]], [[Nazwa lokalizacji używana przez ludzi. Nie musi być unikalna.]])

* alias insert PLTranslation([[Lista alternatywnych nazw, pod którymi lokalizacja jest lub była znana]], [[Lista alternatywnych nazw, pod którymi lokalizacja jest lub była znana.]])
* description insert PLTranslation([[Dodatkowe szczegóły dotyczące lokalizacji, które mogą być wyświetlane jako informacje dodatkowe identyfikujące lokalizację poza jej nazwą]], [[Opis lokalizacji, który pomaga w odnalezieniu miejsca lub odwołaniu się do niego.]])
* mode insert PLTranslation([[instance | kind]], [[Wskazuje, czy instancja zasobu reprezentuje konkretną lokalizację, czy klasę lokalizacji.]])
* type insert PLTranslation([[Typ wykonywanej funkcji]], [[Wskazuje typ funkcji wykonywanej w lokalizacji.]])
* contact insert PLTranslation([[Oficjalne dane kontaktowe lokalizacji]], [[Dane kontaktowe środków komunikacji dostępnych w lokalizacji. Mogą obejmować adresy, numery telefonów, numery faksów, numery telefonów komórkowych, adresy e-mail i strony internetowe.]])

* address 1..1
* address only PLBaseAddress
* address insert PLTranslation([[Lokalizacja fizyczna]], [[Lokalizacja fizyczna.]])

* form insert PLTranslation([[Fizyczna postać lokalizacji]], [[Fizyczna postać lokalizacji, np. budynek, sala, pojazd, droga, lokalizacja wirtualna.]])

* position insert PLTranslation([[Bezwzględne położenie geograficzne]], [[Bezwzględne położenie geograficzne lokalizacji, wyrażone w układzie odniesienia WGS84 (jest to ten sam układ współrzędnych, który jest używany w KML).]])
* position.longitude insert PLTranslation([[Długość geograficzna w układzie WGS84]], [[Długość geograficzna. Dziedzina wartości i interpretacja są takie same jak dla tekstu elementu longitude w KML (zob. uwagi na stronie głównej zasobu Location).]])
* position.latitude insert PLTranslation([[Szerokość geograficzna w układzie WGS84]], [[Szerokość geograficzna. Dziedzina wartości i interpretacja są takie same jak dla tekstu elementu latitude w KML (zob. uwagi na stronie głównej zasobu Location).]])
* position.altitude insert PLTranslation([[Wysokość w układzie WGS84]], [[Wysokość. Dziedzina wartości i interpretacja są takie same jak dla tekstu elementu altitude w KML (zob. uwagi na stronie głównej zasobu Location).]])

* managingOrganization only Reference(PLBaseOrganization)
* managingOrganization insert PLTranslation([[Organizacja odpowiedzialna za udostępnienie i utrzymanie]], [[Organizacja odpowiedzialna za udostępnienie i utrzymanie lokalizacji.]])

* partOf only Reference(PLBaseLocation)
* partOf insert PLTranslation([[Inna lokalizacja, której fizyczną częścią jest ta lokalizacja]], [[Inna lokalizacja, której fizyczną częścią jest ta lokalizacja.]])

* characteristic insert PLTranslation([[Zbiór cech (atrybutów)]], [[Zbiór cech (atrybutów).]])
* hoursOfOperation insert PLTranslation([[W jakie dni/godziny w tygodniu lokalizacja jest zwykle otwarta (w tym wyjątki)]], [[W jakie dni/godziny w tygodniu lokalizacja jest zwykle otwarta oraz wszelkie wyjątki, gdy lokalizacja jest niedostępna.]])
* virtualService insert PLTranslation([[Dane połączenia usługi wirtualnej (np. telekonferencji)]], [[Dane połączenia usługi wirtualnej (np. wspólnej usługi telekonferencji z dedykowanym numerem/danymi).]])
* endpoint insert PLTranslation([[Techniczne punkty końcowe zapewniające dostęp do usług obsługiwanych dla lokalizacji]], [[Techniczne punkty końcowe zapewniające dostęp do usług obsługiwanych dla lokalizacji.]])
