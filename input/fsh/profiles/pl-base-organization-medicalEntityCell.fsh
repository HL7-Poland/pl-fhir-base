Profile: PLBaseOrganizationMedicalEntityCell
Parent: PLBaseOrganization
Id: pl-base-organization-medicalentitycell
Title: "Organization: Medical Entity Cell (PL)"
Description: "Komórka organizacyjna podmiotu leczniczego"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntityCell
* identifier.value 1..1 MS
* name 1..1 MS
* contact 1..1 MS
* contact.telecom 1..1 MS
* address 1..1 MS
* partOf 1..2 MS
* partOf ^slicing.discriminator.type = #type
* partOf ^slicing.discriminator.path = "{$this}"
* partOf ^slicing.rules = #closed
* partOf ^slicing.description = "Identyfikator jednostki lub przedsiębiorstwa podmiotu leczeniczego"
* partOf ^slicing.ordered = false
* partOf contains
    medicalEntityUnitRef 0..1 MS and
    medicalEntityCompanyRef 1..1 MS 
* partOf[medicalEntityUnitRef] only PLBaseReferenceMedicalEntityUnit
* partOf[medicalEntityCompanyRef] only PLBaseReferenceMedicalEntityCompany 

