Mapping: PLBaseMedicalEntityCellToPLDomainMedicalEntityCell
Source: PLBaseMedicalEntityCell
Target: "http://hl7.org.pl/fhir/ig/pl-base/StructureDefinition/pl-domain-medicalEntityCell"
Id: pl-domain-medicalEntityCell
Title: "PL Domain Model: Medical Entity Cell"
Description: "Mapping of the PLBaseMedicalEntityCell profile to the PLDomainMedicalEntityCell logical model."

* -> "PLDomainMedicalEntityCell"
* identifier -> "PLDomainMedicalEntityCell.identifier"
* identifier[entityCellIdentifier] -> "PLDomainMedicalEntityCell.entityCellIdentifier"
* name -> "PLDomainMedicalEntityCell.name"
* type -> "PLDomainMedicalEntityCell.type" "Specialty type of the organisational cell (part VIII of the departmental code)"
* contact.telecom -> "PLDomainMedicalEntityCell.telecom"
* contact.telecom.system -> "PLDomainTelecom.type" "Organization.contact.telecom.system (code) is represented as a Coding with system http://hl7.org/fhir/contact-point-system"
* contact.address -> "PLDomainMedicalEntityCell.address"
* contact.address.line -> "PLDomainAddress.streetName, PLDomainAddress.houseNumber, PLDomainAddress.unitId, PLDomainAddress.postBox" "Mapped from the ISO 21090 ADXP extensions on Address.line (streetName, houseNumber, unitID, postBox)"
* contact.address.city -> "PLDomainAddress.city"
* contact.address.postalCode -> "PLDomainAddress.postalCode"
* contact.address.country -> "PLDomainAddress.country"
* contact.address.extension -> "PLDomainAddress.administrativeUnitIdentifier, PLDomainAddress.localityIdentifier" "Mapped from the TERYT extension (TERC and SIMC codes)"
* contact.address.text -> "PLDomainAddress.text"
* partOf -> "PLDomainMedicalEntityCell.partOf" "Reference to the organisational unit of the medical entity (PLDomainMedicalEntityUnit)"
* partOf.identifier -> "PLDomainMedicalEntityUnit.entityUnitIdentifier" "Logical reference to the organisational unit by its identifier (parts I and V of the departmental code)"
