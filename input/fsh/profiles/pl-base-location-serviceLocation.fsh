Profile: PLBaseServiceLocation
Parent: PLBaseLocation
Id: pl-base-serviceLocation
Title: "Location: Service Location (PL Base)"
Description: "Place of providing healthcare services (Polish: miejsce udzielania świadczeń, MUŚ), i.e. a location where a medical entity or a medical professional practice provides healthcare services."
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Miejsce udzielania świadczeń (MUŚ), czyli lokalizacja, w której podmiot wykonujący działalność leczniczą lub medyczna praktyka zawodowa udziela świadczeń opieki zdrowotnej.]])

* . ^short = "Place of providing healthcare services (MUŚ)"
* . ^definition = "Place of providing healthcare services (Polish: miejsce udzielania świadczeń, MUŚ), i.e. a location where a medical entity or a medical professional practice provides healthcare services."
* . insert PLTranslation([[Miejsce udzielania świadczeń (MUŚ)]], [[Miejsce udzielania świadczeń (MUŚ), czyli lokalizacja, w której podmiot wykonujący działalność leczniczą lub medyczna praktyka zawodowa udziela świadczeń opieki zdrowotnej.]])

* identifier 1..* 
* managingOrganization only Reference(PLBaseOrganization)
