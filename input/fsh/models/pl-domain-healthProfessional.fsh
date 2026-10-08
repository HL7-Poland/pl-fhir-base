Logical: PLDomainHealthProfessional
Parent: EHDSHealthProfessional
Id: pl-domain-healthProfessional
Title: "HealthProfessional: Pracownik medyczny (model domenowy)"
Description: "Domain model of a health professional in Polish medical records. Specialises EHDSHealthProfessional from the EHDS Common Logical Models."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy pracownika medycznego w polskiej dokumentacji medycznej. Specjalizacja klasy EHDSHealthProfessional z modeli logicznych EHDS (EHDS Common Logical Models).]])

* professionalLicenceNumber 1..1 Identifier "Professional licence number (NPWZ)" "Number of the right to practise the profession (NPWZ) of the health professional, issued by the relevant professional self-government."
* professionalLicenceNumber insert PLTranslation([[Numer prawa wykonywania zawodu (NPWZ)]], [[Numer prawa wykonywania zawodu (NPWZ) pracownika medycznego, nadany przez właściwy samorząd zawodowy.]])

* authorizationIdentifier 0..1 Identifier "Authorisation identifier" "Identifier of an authorisation of the health professional to perform healthcare activities, other than the professional licence number."
* authorizationIdentifier insert PLTranslation([[Identyfikator uprawnień]], [[Identyfikator uprawnień pracownika medycznego do wykonywania czynności w ramach opieki zdrowotnej, inny niż numer prawa wykonywania zawodu.]])

// UML: qualiicationCode, corrected to qualificationCode
* qualificationCode 1..* Coding "Qualification code" "Code of the medical profession and specialties of the health professional."
* qualificationCode insert PLTranslation([[Kod kwalifikacji]], [[Kod zawodu medycznego i specjalności pracownika medycznego.]])

* name 1..1
* name only PLDomainHumanName
* name ^short = "Name of the health professional"
* name ^definition = "Exactly one family name with one or two given names of the health professional."
* name insert PLTranslation([[Imię i nazwisko pracownika medycznego]], [[Dokładnie jedno nazwisko z imieniem lub imionami pracownika medycznego.]])

* address only PLDomainAddress
* address ^short = "Address of the health professional"
* address ^definition = "Addresses of the health professional."
* address insert PLTranslation([[Adres pracownika medycznego]], [[Adresy pracownika medycznego.]])

* telecom only PLDomainTelecom
* telecom ^short = "Contact details of the health professional"
* telecom ^definition = "Contact details of the health professional, e.g. phone number or e-mail address."
* telecom insert PLTranslation([[Dane kontaktowe pracownika medycznego]], [[Dane kontaktowe pracownika medycznego, np. numer telefonu lub adres e-mail.]])

// UML: professionalRole 0..* PLDomainHealthProfessionalRole; the inherited EHDS element is a backbone element,
// whose type cannot be changed - its Polish constraints are defined in PLDomainHealthProfessionalRole
* professionalRole ^short = "Professional roles of the health professional"
* professionalRole ^definition = "Roles of the health professional in organisations and places of providing healthcare services, as defined by the PLDomainHealthProfessionalRole logical model."
* professionalRole insert PLTranslation([[Role zawodowe pracownika medycznego]], [[Role pracownika medycznego w organizacjach i miejscach udzielania świadczeń, zgodnie z modelem logicznym PLDomainHealthProfessionalRole.]])
