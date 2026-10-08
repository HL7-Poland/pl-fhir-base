Mapping: PLBasePractitionerRoleToPLDomainHealthProfessionalRole
Source: PLBasePractitionerRole
Target: "http://hl7.org.pl/fhir/ig/pl-base/StructureDefinition/pl-domain-healthProfessionalRole"
Id: pl-domain-healthProfessionalRole
Title: "PL Domain Model: Health Professional Role"
Description: "Mapping of the PLBasePractitionerRole profile to the PLDomainHealthProfessionalRole logical model."

* -> "PLDomainHealthProfessionalRole"
* practitioner -> "PLDomainHealthProfessional.professionalRole" "Inverse direction: the role is an element (professionalRole) of the health professional referenced here"
* identifier -> "PLDomainHealthProfessional.professionalLicenceNumber" "NPWZ number of the health professional performing the role; PLDomainHealthProfessionalRole has no identifier of its own"
* code -> "PLDomainHealthProfessionalRole.role" "Medical profession practised in the role"
* specialty -> "PLDomainHealthProfessionalRole.specialty"
* organization -> "PLDomainHealthProfessionalRole.organization" "Medical professional practice (PLDomainMedicalPractice) or organisational cell (PLDomainMedicalEntityCell)"
* location -> "PLDomainHealthProfessionalRole.serviceLocation" "Place of providing healthcare services (PLDomainServiceLocation)"
