Profile: PLBaseCoverage
Parent: Coverage
Id: pl-base-coverage
Title: "Coverage: Produkt medyczny"
Description: "Dane produktu medycznego/modelu rozliczeń/ubezpieczenia"
* ^version = "0.1.0"
* beneficiary only Reference(PLBasePatient)
* insurer only Reference(PLBasePayer)
* contract only Reference(PLBaseContract)