Profile: PLBaseMedicalPractice
Parent: Organization
Id: pl-base-organization-medicalPractice
Title: "Organization: Medyczna praktyka zawodowa"
Description: "Medyczna prakytka zawodowa (lekarska lub pielęgniarki/położnej)"
* ^version = "0.1.0"
* identifier 1..1 MS
* identifier.system from PLMedicalPracticeIdentifierPoolVS
* identifier.value 1..1 MS
* name 1..1 MS