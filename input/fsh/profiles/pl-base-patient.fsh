Profile: PLBasePatient
Parent: Patient
Id: pl-base-patient
Title: "Patient (Base PL)"
Description: "Base profile of a patient in Poland: demographic and administrative data of a person receiving health care services. The patient is identified by the PESEL number or, when it is not available, by an identity card or passport number; a newborn may be identified by the mother's identifier. The profile also allows recording an unidentified (NN) patient."
* ^version = "0.2.0"
* ^status = #active
* insert PLDescriptionTranslation([[Bazowy profil pacjenta w Polsce: dane demograficzne i administracyjne osoby otrzymującej świadczenia opieki zdrowotnej. Pacjent identyfikowany jest numerem PESEL, a w przypadku jego braku numerem dowodu osobistego lub paszportu; noworodek może być identyfikowany identyfikatorem matki. Profil umożliwia także zapis danych pacjenta o nieustalonej tożsamości (NN).]])

* . ^short = "Information about an individual or animal receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
* . insert PLTranslation([[Informacje o osobie lub zwierzęciu otrzymującym świadczenia opieki zdrowotnej]], [[Dane demograficzne i inne informacje administracyjne dotyczące osoby lub zwierzęcia otrzymującego opiekę lub inne usługi związane ze zdrowiem.]])

* extension contains
  PatientIdentifierOfMother named identifierOfMother 0..1
* extension[identifierOfMother] ^short = "Identifier of the patient's mother"
* extension[identifierOfMother] ^definition = "Identifier of the patient's mother (e.g. PESEL number), used to identify a newborn who has not yet been assigned their own identifier."
* extension[identifierOfMother] insert PLTranslation([[Identyfikator matki pacjenta]], [[Identyfikator matki pacjenta (np. numer PESEL), wykorzystywany do identyfikacji noworodka, któremu nie nadano jeszcze własnego identyfikatora.]])

* identifier 1..*
* identifier insert PLTranslation([[Identyfikator tego pacjenta]], [[Identyfikator tego pacjenta.]])
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Patient identifiers"
* identifier insert PLSlicingDescriptionTranslation([[Identyfikatory pacjenta]])
* identifier ^slicing.ordered = false
* identifier contains
  nationalIdentifier 0..1 and
  identityCardNumber 0..1 and
  passportNumber 0..1

* identifier[nationalIdentifier] ^short = "PESEL number"
* identifier[nationalIdentifier] ^definition = "Patient identifier in the Polish Universal Electronic System for Registration of the Population (PESEL)."
* identifier[nationalIdentifier] insert PLTranslation([[Numer PESEL]], [[Identyfikator pacjenta w Powszechnym Elektronicznym Systemie Ewidencji Ludności (PESEL).]])
* identifier[nationalIdentifier].system = $peselIds
* identifier[nationalIdentifier].value 1..1
* identifier[nationalIdentifier].value obeys PeselIdentifier

* identifier[identityCardNumber] ^short = "Identity card number"
* identifier[identityCardNumber] ^definition = "Number of the patient's identity card (Polish: dowód osobisty), used to identify the patient when no PESEL number is available."
* identifier[identityCardNumber] insert PLTranslation([[Numer dowodu osobistego]], [[Numer dowodu osobistego pacjenta, wykorzystywany do identyfikacji pacjenta w przypadku braku numeru PESEL.]])
* identifier[identityCardNumber].system = $identityCardIds
* identifier[identityCardNumber].value 1..1

* identifier[passportNumber] ^short = "Passport number"
* identifier[passportNumber] ^definition = "Number of the patient's passport, used to identify the patient when no PESEL number is available."
* identifier[passportNumber] insert PLTranslation([[Numer paszportu]], [[Numer paszportu pacjenta, wykorzystywany do identyfikacji pacjenta w przypadku braku numeru PESEL.]])
* identifier[passportNumber].system = $passportIds
* identifier[passportNumber].value 1..1

* name 1..1
* name insert PLTranslation([[Imię i nazwisko (nazwa) pacjenta]], [[Imię i nazwisko (nazwa) powiązane z osobą.]])

* name ^slicing.discriminator.type = #exists
* name ^slicing.discriminator.path = "extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason')"
* name ^slicing.rules = #open
* name ^slicing.description = "Distinguishes a patient with established identity from an unidentified (NN) patient"
* name insert PLSlicingDescriptionTranslation([[Rozróżnienie pacjenta o ustalonej tożsamości od pacjenta NN]])
* name ^slicing.ordered = false
* name contains
  unknown 0..1 and
  known 0..1

* name[unknown] ^short = "Name of an unidentified (NN) patient"
* name[unknown] ^definition = "Name of a patient whose identity has not been established (NN, Latin: nomen nescio). The name is recorded only as the text \"NN\", and the reason for the missing name is given in the data-absent-reason extension."
* name[unknown] insert PLTranslation([[Nazwa pacjenta o nieustalonej tożsamości (NN)]], [[Nazwa pacjenta, którego tożsamość nie została ustalona (NN, łac. nomen nescio). Nazwa zapisywana jest wyłącznie jako tekst \"NN\", a przyczyna braku danych podawana jest w rozszerzeniu data-absent-reason.]])
* name[unknown].text = "NN"
* name[unknown].use 0..0
* name[unknown].family 0..0
* name[unknown].given 0..0
* name[unknown].prefix 0..0
* name[unknown].suffix 0..0
* name[unknown].period 0..0
* name[unknown].extension contains $data-absent-reason named dataAbsentReason 1..1
* name[unknown].extension[dataAbsentReason].valueCode = #unknown

* name[known] ^short = "Name of a patient with established identity"
* name[known] ^definition = "Name of a patient whose identity has been established, containing the family name and one or two given names."
* name[known] insert PLTranslation([[Imię i nazwisko pacjenta o ustalonej tożsamości]], [[Imię i nazwisko pacjenta, którego tożsamość została ustalona, zawierające nazwisko oraz jedno lub dwa imiona.]])
* name[known].extension contains $data-absent-reason named dataAbsentReason 0..0
* name[known].given 1..2
* name[known].family 1..1

* gender insert PLTranslation([[male | female | other | unknown]], [[Płeć administracyjna – płeć, jaką przypisuje się pacjentowi na potrzeby administracyjne i prowadzenia dokumentacji.]])
* birthDate insert PLTranslation([[Data urodzenia osoby]], [[Data urodzenia osoby.]])
* deceased[x] insert PLTranslation([[Wskazuje, czy osoba zmarła]], [[Wskazuje, czy osoba zmarła.]])

* address only PLBaseAddress
* address insert PLTranslation([[Adres osoby]], [[Adres osoby.]])

* maritalStatus insert PLTranslation([[Stan cywilny pacjenta]], [[Pole to zawiera najnowszy stan cywilny pacjenta.]])

* multipleBirth[x] only integer
* multipleBirth[x] insert PLTranslation([[Czy pacjent pochodzi z ciąży mnogiej]], [[Wskazuje, czy pacjent pochodzi z ciąży mnogiej (wartość logiczna), lub wskazuje rzeczywistą kolejność urodzenia (liczba całkowita).]])

* photo insert PLTranslation([[Zdjęcie pacjenta]], [[Zdjęcie pacjenta.]])

* contact insert PLTranslation([[Osoba kontaktowa pacjenta (np. opiekun prawny, partner, przyjaciel)]], [[Osoba kontaktowa pacjenta (np. opiekun prawny, partner, przyjaciel).]])
* contact.relationship insert PLTranslation([[Rodzaj relacji]], [[Charakter relacji między pacjentem a osobą kontaktową.]])
* contact.name insert PLTranslation([[Imię i nazwisko osoby kontaktowej]], [[Imię i nazwisko osoby kontaktowej.]])
* contact.telecom insert PLTranslation([[Dane kontaktowe osoby]], [[Dane kontaktowe osoby, np. numer telefonu lub adres e-mail.]])
* contact.address insert PLTranslation([[Adres osoby kontaktowej]], [[Adres osoby kontaktowej.]])
* contact.gender insert PLTranslation([[male | female | other | unknown]], [[Płeć administracyjna – płeć, jaką przypisuje się osobie kontaktowej na potrzeby administracyjne i prowadzenia dokumentacji.]])
* contact.organization insert PLTranslation([[Organizacja powiązana z osobą kontaktową]], [[Organizacja, w imieniu której działa osoba kontaktowa lub dla której pracuje.]])
* contact.period insert PLTranslation([[Okres, w którym można kontaktować się z tą osobą lub organizacją w sprawach dotyczących pacjenta]], [[Okres, w którym można kontaktować się z tą osobą lub organizacją w sprawach dotyczących pacjenta.]])

* communication insert PLTranslation([[Język, w którym można komunikować się z pacjentem w sprawach dotyczących jego zdrowia]], [[Język, w którym można komunikować się z pacjentem w sprawach dotyczących jego zdrowia.]])
* communication.language insert PLTranslation([[Język, w którym można komunikować się z pacjentem w sprawach dotyczących jego zdrowia]], [[Kod języka ISO-639-1 alpha 2 zapisany małymi literami, opcjonalnie z myślnikiem i kodem regionu ISO-3166-1 alpha 2 zapisanym wielkimi literami, np. „en” dla języka angielskiego, „en-US” dla amerykańskiej odmiany angielskiego w odróżnieniu od „en-AU” dla australijskiej, „pl-PL” dla języka polskiego.]])
* communication.preferred insert PLTranslation([[Wskaźnik preferencji językowej]], [[Wskazuje, czy pacjent preferuje ten język (w porównaniu z innymi językami, którymi posługuje się na pewnym poziomie).]])

* generalPractitioner only Reference(PLBaseOrganization or PLBasePractitioner or PLBasePractitionerRole)
* generalPractitioner insert PLTranslation([[Wskazany przez pacjenta świadczeniodawca podstawowej opieki zdrowotnej]], [[Wskazany przez pacjenta świadczeniodawca.]])

* managingOrganization only Reference(PLBaseOrganization)
* managingOrganization insert PLTranslation([[Organizacja będąca opiekunem dokumentacji pacjenta]], [[Organizacja będąca opiekunem (podmiotem prowadzącym) dokumentacji pacjenta.]])

* link insert PLTranslation([[Powiązanie z zasobem Patient lub RelatedPerson dotyczącym tej samej rzeczywistej osoby]], [[Powiązanie z zasobem Patient lub RelatedPerson dotyczącym tej samej rzeczywistej osoby.]])
// FIX: there is no PLBaseRelatedPerson profile in the IG, which caused the SUSHI error "No definition for the type
// PLBaseRelatedPerson could be found". The base FHIR RelatedPerson resource is used until a Polish profile is defined.
* link.other only Reference(PLBasePatient or RelatedPerson)
* link.other insert PLTranslation([[Inny zasób pacjenta lub osoby powiązanej, do którego odnosi się powiązanie]], [[Powiązanie z zasobem Patient lub RelatedPerson dotyczącym tej samej rzeczywistej osoby.]])
* link.type insert PLTranslation([[replaced-by | replaces | refer | seealso]], [[Typ powiązania między tym zasobem pacjenta a innym zasobem pacjenta.]])

