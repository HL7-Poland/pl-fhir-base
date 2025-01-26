Profile: PLBaseOrganizationMedicalProvider
Parent: PLBaseOrganization
Id: pl-base-organization-medicalprovider
Title: "Organization: MedicalProvider (PL)"
Description: "Bazowy profil podmiotu medycznego (świadczeniodawcy)"
* ^version = "0.0.1"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identyfikatory podmiotu medycznego"
* identifier ^slicing.ordered = false
* identifier contains
  pwdl 1..1 and
  other 0..1
* identifier[pwdl].system = $ids-pwdl
* name 1..1
* contact 1..