Logical: PLDomainMedicalPractice
Parent: PLDomainOrganisation
Id: pl-domain-medicalPractice
Title: "MedicalPractice: Medyczna praktyka zawodowa (model domenowy)"
Description: "Domain model of a medical professional practice (of a physician, or of a nurse or midwife)."
* ^status = #draft
* insert PLDescriptionTranslation([[Model domenowy medycznej praktyki zawodowej (lekarskiej lub pielęgniarki/położnej).]])

* identifier 1..*
* identifier ^short = "Identifiers of the medical practice"
* identifier ^definition = "Identifiers of the medical practice, e.g. the entry number in the register kept by the professional self-government. At least one is mandatory."
* identifier insert PLTranslation([[Identyfikatory praktyki zawodowej]], [[Identyfikatory medycznej praktyki zawodowej, np. numer wpisu do rejestru prowadzonego przez samorząd zawodowy. Co najmniej jeden jest obowiązkowy.]])

* name 1..1
* name ^short = "Name of the medical practice"
* name ^definition = "Name of the medical practice."
* name insert PLTranslation([[Nazwa praktyki zawodowej]], [[Nazwa medycznej praktyki zawodowej.]])
