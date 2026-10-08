Logical: PLDomainPatient
Parent: EHDSPatient
Id: pl-domain-patient
Title: "Patient: Pacjent (model domenowy)"
Description: "Domain model of the patient identification data required in Polish medical records. Specialises EHDSPatient from the EHDS Common Logical Models."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy danych identyfikujących pacjenta wymaganych w polskiej dokumentacji medycznej. Specjalizacja klasy EHDSPatient z modeli logicznych EHDS (EHDS Common Logical Models).]])

* nationalIdentifier 0..1 Identifier "PESEL number" "Patient's PESEL number. Optional, as it is required only when it has been assigned."
* nationalIdentifier insert PLTranslation([[Numer PESEL]], [[Numer PESEL pacjenta. Opcjonalny, ponieważ jest wymagany tylko wtedy, gdy został nadany.]])

* identityCardNumber 0..1 Identifier "Identity card number" "Series and number of the identity card, as the document confirming the identity of a person without a PESEL number."
* identityCardNumber insert PLTranslation([[Numer dowodu osobistego]], [[Seria i numer dowodu osobistego jako dokumentu potwierdzającego tożsamość osoby bez numeru PESEL.]])

* passportNumber 0..1 Identifier "Passport number" "Series and number of the passport, as the document confirming the identity of a person without a PESEL number."
* passportNumber insert PLTranslation([[Numer paszportu]], [[Seria i numer paszportu jako dokumentu potwierdzającego tożsamość osoby bez numeru PESEL.]])

* motherIdentifier 0..1 Identifier "Mother's identifier" "PESEL number of the mother, used to identify a newborn."
* motherIdentifier insert PLTranslation([[Identyfikator matki]], [[Numer PESEL matki, którym oznacza się noworodka.]])

// FIX: "administrativeGender" is already defined in the parent EHDSPatient (CodeableConcept); it was redefined here, which caused the SUSHI error
// "Cannot define element administrativeGender ... because it has already been defined". It is now a constraint on the inherited element. UML type Coding cannot constrain the inherited CodeableConcept; a single code is expressed as coding 1..1.
* administrativeGender 0..1
* administrativeGender.coding 1..1
* administrativeGender ^short = "Administrative gender"
* administrativeGender ^definition = "Patient's gender as a single code from a code system."
* administrativeGender insert PLTranslation([[Płeć administracyjna]], [[Oznaczenie płci pacjenta jako pojedynczy kod ze słownika.]])

* multipleBirthNumber 0..1 integer "Multiple birth order" "Birth order of the patient in a multiple birth."
* multipleBirthNumber insert PLTranslation([[Kolejność urodzenia w ciąży mnogiej]], [[Kolejność urodzenia pacjenta w przypadku ciąży mnogiej.]])

// FIX: "name" is already defined in the parent EHDSPatient (EHDSHumanName); it was redefined here, which caused the SUSHI error
// "Cannot define element name ... because it has already been defined". It is now a constraint on the inherited element.
* name 1..1
* name only PLDomainHumanName
* name ^short = "Patient's name"
* name ^definition = "Exactly one family name with one or two given names."
* name insert PLTranslation([[Imię i nazwisko pacjenta]], [[Dokładnie jedno nazwisko z imieniem lub imionami.]])

// FIX: "address" is already defined in the parent EHDSPatient (EHDSAddress); it was redefined here, which caused the SUSHI error
// "Cannot define element address ... because it has already been defined". It is now a constraint on the inherited element.
* address 0..*
* address only PLDomainAddress
* address ^short = "Patient's address"
* address ^definition = "Patient's addresses, e.g. place of residence, correspondence address, registered address or place of stay."
* address insert PLTranslation([[Adres pacjenta]], [[Adresy pacjenta, np. adres miejsca zamieszkania, adres do korespondencji, adres zameldowania lub pobytu.]])

// FIX: "telecom" is already defined in the parent EHDSPatient (EHDSTelecom); it was redefined here, which caused the SUSHI error
// "Cannot define element telecom ... because it has already been defined". It is now a constraint on the inherited element.
* telecom 0..*
* telecom only PLDomainTelecom
* telecom ^short = "Patient's contact details"
* telecom ^definition = "Patient's contact details, i.e. contact phone number and e-mail address."
* telecom insert PLTranslation([[Dane kontaktowe pacjenta]], [[Dane kontaktowe pacjenta, czyli telefon kontaktowy i adres poczty elektronicznej.]])
