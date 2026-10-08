// UML: PLDomainHelathProfessionalRole (name corrected) specialises EHDSHealthProfessional.professionalRole,
// a backbone element of EHDSHealthProfessional, which cannot be used as a parent of a logical model
Logical: PLDomainHealthProfessionalRole
Id: pl-domain-healthProfessionalRole
Title: "HealthProfessionalRole: Rola zawodowa pracownika medycznego (model domenowy)"
Description: "Domain model of a professional role of a health professional in an organisation or a place of providing healthcare services. Corresponds to the professionalRole element of EHDSHealthProfessional from the EHDS Common Logical Models."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy roli zawodowej pracownika medycznego w organizacji lub miejscu udzielania świadczeń. Odpowiada elementowi professionalRole klasy EHDSHealthProfessional z modeli logicznych EHDS (EHDS Common Logical Models).]])

* role 0..* Coding "Role" "Role of the health professional, i.e. the function performed in the organisation."
* role insert PLTranslation([[Rola]], [[Rola pracownika medycznego, czyli funkcja pełniona w organizacji.]])

* specialty 0..* Coding "Specialty" "Medical specialty in which the health professional performs the role."
* specialty insert PLTranslation([[Specjalność]], [[Specjalność medyczna, w ramach której pracownik medyczny pełni rolę.]])

* serviceLocation 0..1 PLDomainServiceLocation "Place of providing services" "Place of providing healthcare services where the health professional performs the role."
* serviceLocation insert PLTranslation([[Miejsce udzielania świadczeń]], [[Miejsce udzielania świadczeń, w którym pracownik medyczny pełni rolę.]])

// UML: two alternative organization associations joined by an "OR" note
* organization 0..1 PLDomainOrganisation "Organisation" "Organisational cell of a medical entity or medical professional practice in which the health professional performs the role."
* organization only PLDomainMedicalEntityCell or PLDomainMedicalPractice
* organization insert PLTranslation([[Organizacja]], [[Komórka organizacyjna podmiotu leczniczego albo medyczna praktyka zawodowa, w której pracownik medyczny pełni rolę.]])
