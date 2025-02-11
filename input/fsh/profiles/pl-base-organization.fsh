Profile: PLBaseOrganization
Parent: OrganizationEuCore
Id: pl-base-organization
Title: "Organization (PL)"
Description: "Bazowy profil organizacji (podmiotu)"
* ^version = "0.1.0"
* identifier 1..* MS
* address only PLBaseAddress
* partOf only Reference(PLBaseOrganization)