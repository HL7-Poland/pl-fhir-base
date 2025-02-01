Profile: PLBaseCoverage
Parent: Coverage
Id: pl-base-coverage
Title: "Coverage (PL)"
Description: "Profil bazowy dla produktu medycznego/modelu rozliczeń/ubezpieczenia"
* ^version = "0.0.1"
* identifier 1..
* beneficiary only Reference(PLBasePatient)
* payor only Reference(PLBaseOrganizationPayer)
* contract only Reference(PLBaseContract)