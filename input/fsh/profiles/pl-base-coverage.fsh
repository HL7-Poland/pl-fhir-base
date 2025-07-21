Profile: PLBaseCoverage
Parent: Coverage
Id: pl-base-coverage
Title: "Coverage (PL)"
Description: "Profil bazowy dla produktu medycznego/modelu rozliczeń/ubezpieczenia"
* ^version = "0.1.0"
* identifier 1..*
* beneficiary only Reference(PLBasePatient)
* insurer only Reference(PLBaseOrganizationInsurer)
* contract only Reference(PLBaseContract)