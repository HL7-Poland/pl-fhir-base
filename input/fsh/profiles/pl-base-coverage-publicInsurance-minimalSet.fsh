Profile: PLBaseCoveragePublicInsuranceMinimalSet
Parent: Coverage
Id: pl-base-coverage-publicinsurance-minimalset
Title: "Coverage: Public Insurance Minimal Set (PL)"
Description: "Podstawowe dane publicznego ubezpieczenia zdrowotnego"
* ^version = "0.0.1"
* type 1..1 MS
* type = $v3-actCode#PUBLICPOL
* payor 1..1 MS
* payor only PLBaseReferenceNationalHealthFundDepartment
* contract 0..1 MS
* contract only PLBaseReferenceReimbursementRelatedContract