Logical: PLDomainServiceLocation
Parent: PLDomainLocation
Id: pl-domain-serviceLocation
Title: "ServiceLocation: Miejsce udzielania świadczeń (model domenowy)"
Description: "Domain model of a place of providing healthcare services, managed by an organisational cell of a medical entity or by a medical professional practice."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy miejsca udzielania świadczeń, którym zarządza komórka organizacyjna podmiotu leczniczego albo medyczna praktyka zawodowa.]])

* identifier 1..*
* identifier ^short = "Identifiers of the place of providing services"
* identifier ^definition = "Identifiers of the place of providing healthcare services. At least one is mandatory."
* identifier insert PLTranslation([[Identyfikatory miejsca udzielania świadczeń]], [[Identyfikatory miejsca udzielania świadczeń. Co najmniej jeden jest obowiązkowy.]])

// UML: specialtyCode: Coding[1.1], interpreted as [1..1]
* specialtyCode 1..1 Coding "Specialty code" "Code of the medical specialty of the healthcare services provided in this place."
* specialtyCode insert PLTranslation([[Kod specjalności]], [[Kod specjalności medycznej świadczeń udzielanych w tym miejscu.]])

* managingOrganisation only PLDomainMedicalEntityCell or PLDomainMedicalPractice
* managingOrganisation ^short = "Organisational cell or medical practice managing the place"
* managingOrganisation ^definition = "Organisational cell of a medical entity or medical professional practice that manages this place of providing healthcare services."
* managingOrganisation insert PLTranslation([[Komórka organizacyjna lub praktyka zawodowa zarządzająca miejscem]], [[Komórka organizacyjna podmiotu leczniczego albo medyczna praktyka zawodowa, która zarządza tym miejscem udzielania świadczeń.]])
