Mapping: PLBaseMedicalEntityToPLDomainMedicalEntity
Source: PLBaseMedicalEntity
Target: "http://hl7.org.pl/fhir/ig/pl-base/StructureDefinition/pl-domain-medicalEntity"
Id: pl-domain-medicalEntity
Title: "PL Domain Model: Medical Entity"
Description: "Mapping of the PLBaseMedicalEntity profile to the PLDomainMedicalEntity logical model."

* -> "PLDomainMedicalEntity"
* identifier -> "PLDomainMedicalEntity.identifier"
* identifier[entityIdentifier] -> "PLDomainMedicalEntity.entityIdentifier"
* identifier[regonEntityIdentifier] -> "PLDomainMedicalEntity.regonEntityIdentifier"
* identifier[taxIdentificationNumber] -> "PLDomainMedicalEntity.taxIdentificationNumber"
* name -> "PLDomainMedicalEntity.name"
* type -> "PLDomainMedicalEntity.type"
* contact.telecom -> "PLDomainMedicalEntity.telecom"
* contact.telecom.system -> "PLDomainTelecom.type" "Organization.contact.telecom.system (code) is represented as a Coding with system http://hl7.org/fhir/contact-point-system"
* contact.address -> "PLDomainMedicalEntity.address"
* contact.address.line -> "PLDomainAddress.streetName, PLDomainAddress.houseNumber, PLDomainAddress.unitId, PLDomainAddress.postBox" "Mapped from the ISO 21090 ADXP extensions on Address.line (streetName, houseNumber, unitID, postBox)"
* contact.address.city -> "PLDomainAddress.city"
* contact.address.postalCode -> "PLDomainAddress.postalCode"
* contact.address.country -> "PLDomainAddress.country"
* contact.address.extension -> "PLDomainAddress.administrativeUnitIdentifier, PLDomainAddress.localityIdentifier" "Mapped from the TERYT extension (TERC and SIMC codes)"
* contact.address.text -> "PLDomainAddress.text"
