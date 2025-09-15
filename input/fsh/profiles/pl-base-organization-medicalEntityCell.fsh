Profile: PLBaseMedicalEntityCell
Parent: Organization
Id: pl-base-organization-medicalEntityCell
Title: "Organization: Medical Entity Cell (PL)"
Description: "Komórka organizacyjna podmiotu leczniczego"
* ^version = "0.1.0"
* extension contains
  MedicalEntityCompanyIdentity named companyIdentity 0..1 and
  MedicalEntityUnitReference named unitReference 0..1
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntityCell
* identifier.value 1..1 MS
* name 1..1 MS
* contact 1..* MS
* contact.telecom 1..* MS
* contact.address 0..1 MS
* partOf 1..1 MS
* partOf only PLBaseMedicalEntityIdentity or Reference(PLBaseMedicalEntity)

