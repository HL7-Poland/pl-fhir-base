Mapping: PLBaseMedicalEntityUnitToPLDomainMedicalEntityUnit
Source: PLBaseMedicalEntityUnit
Target: "http://hl7.org.pl/fhir/ig/pl-base/StructureDefinition/pl-domain-medicalEntityUnit"
Id: pl-domain-medicalEntityUnit
Title: "PL Domain Model: Medical Entity Unit"
Description: "Mapping of the PLBaseMedicalEntityUnit profile to the PLDomainMedicalEntityUnit logical model."

* -> "PLDomainMedicalEntityUnit"
* identifier -> "PLDomainMedicalEntityUnit.identifier"
* identifier[entityUnitIdentifier] -> "PLDomainMedicalEntityUnit.entityUnitIdentifier"
* name -> "PLDomainMedicalEntityUnit.name"
* type -> "PLDomainMedicalEntityUnit.type"
* contact.telecom -> "PLDomainMedicalEntityUnit.telecom"
* contact.telecom.system -> "PLDomainTelecom.type" "Organization.contact.telecom.system (code) is represented as a Coding with system http://hl7.org/fhir/contact-point-system"
* contact.address -> "PLDomainMedicalEntityUnit.address"
* contact.address.line -> "PLDomainAddress.streetName, PLDomainAddress.houseNumber, PLDomainAddress.unitId, PLDomainAddress.postBox" "Mapped from the ISO 21090 ADXP extensions on Address.line (streetName, houseNumber, unitID, postBox)"
* contact.address.city -> "PLDomainAddress.city"
* contact.address.postalCode -> "PLDomainAddress.postalCode"
* contact.address.country -> "PLDomainAddress.country"
* contact.address.extension -> "PLDomainAddress.administrativeUnitIdentifier, PLDomainAddress.localityIdentifier" "Mapped from the TERYT extension (TERC and SIMC codes)"
* contact.address.text -> "PLDomainAddress.text"
* partOf -> "PLDomainMedicalEntityUnit.partOf" "Reference to the facility of the medical entity (PLDomainMedicalEntityFacility)"
* partOf.identifier -> "PLDomainMedicalEntityFacility.regonLocalUnitIdentifier" "Logical reference to the facility by its 14-digit REGON number"
