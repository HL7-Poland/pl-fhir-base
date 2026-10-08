Mapping: PLBaseMedicalEntityFacilityToPLDomainMedicalEntityFacility
Source: PLBaseMedicalEntityFacility
Target: "http://hl7.org.pl/fhir/ig/pl-base/StructureDefinition/pl-domain-medicalEntityFacility"
Id: pl-domain-medicalEntityFacility
Title: "PL Domain Model: Medical Entity Facility"
Description: "Mapping of the PLBaseMedicalEntityFacility profile to the PLDomainMedicalEntityFacility logical model."

* -> "PLDomainMedicalEntityFacility"
* identifier -> "PLDomainMedicalEntityFacility.identifier"
* identifier[regonLocalUnitIdentifier] -> "PLDomainMedicalEntityFacility.regonLocalUnitIdentifier"
* name -> "PLDomainMedicalEntityFacility.name"
* type -> "PLDomainMedicalEntityFacility.type"
* contact.telecom -> "PLDomainMedicalEntityFacility.telecom"
* contact.telecom.system -> "PLDomainTelecom.type" "Organization.contact.telecom.system (code) is represented as a Coding with system http://hl7.org/fhir/contact-point-system"
* contact.address -> "PLDomainMedicalEntityFacility.address"
* contact.address.line -> "PLDomainAddress.streetName, PLDomainAddress.houseNumber, PLDomainAddress.unitId, PLDomainAddress.postBox" "Mapped from the ISO 21090 ADXP extensions on Address.line (streetName, houseNumber, unitID, postBox)"
* contact.address.city -> "PLDomainAddress.city"
* contact.address.postalCode -> "PLDomainAddress.postalCode"
* contact.address.country -> "PLDomainAddress.country"
* contact.address.extension -> "PLDomainAddress.administrativeUnitIdentifier, PLDomainAddress.localityIdentifier" "Mapped from the TERYT extension (TERC and SIMC codes)"
* contact.address.text -> "PLDomainAddress.text"
* partOf -> "PLDomainMedicalEntityFacility.partOf" "Reference to the medical entity (PLDomainMedicalEntity)"
