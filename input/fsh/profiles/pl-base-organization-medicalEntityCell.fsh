Profile: PLBaseMedicalEntityCell
Parent: Organization
Id: pl-base-organization-medicalEntityCell
Title: "Organization: Medical Entity Cell (PL)"
Description: "Komórka organizacyjna podmiotu leczniczego"
* ^version = "0.1.0"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = $ids-medicalEntityCell
* identifier.value 1..1 MS
* name 1..1 MS
* contact 1..* MS
* contact.telecom 1..* MS
* contact.address 0..1 MS


