# Patient data {#patient}

![Patient data model](diagrams/pl-domain-patient.png)

The model with the PLDomain prefix describes the identification and contact data of a patient in Polish medical records and consists of four classes.

**PLDomainPatient** is the main class of the model and represents the patient. The `nationalIdentifier` attribute carries the PESEL number and is optional, because the regulations require it only if one has been assigned. The `identityCardNumber` and `passportNumber` attributes hold the series and number of the identity card or passport, i.e. the document confirming the identity of a person without a PESEL number. The `motherIdentifier` attribute is the mother's PESEL number, used to identify a newborn. The `administrativeGender` attribute records sex as a single code from a code system. All five attributes have a cardinality of 0..1, and together they correspond to the patient designation in Art. 25(1)(1) of the Act on Patient Rights and the Patient Ombudsman. The class is linked to the other three classes through associations: `name` with a cardinality of 1..1, meaning exactly one surname with given names, and `telecom` and `address` with a cardinality of 0..*, i.e. any number of contact details and addresses.

**PLDomainHumanName** describes the patient's surname and given names. The `family` attribute is mandatory and occurs exactly once, so a surname, including a double-barrelled one, is recorded as a single string. The `given` attribute has a cardinality of 1..2, meaning a mandatory first given name and an optional second one, in line with the limit of two given names in the Civil Status Records Act.

**PLDomainTelecom** describes contact details. The class declares one mandatory attribute, `type`, a code of the contact type that distinguishes a telephone number from an e-mail address. Both kinds of data are listed in Art. 4(3) of the Act on the Healthcare Information System (SIOZ).

**PLDomainAddress** describes an address in a structured form. Four attributes are mandatory: `streetName` (street name), `houseNumber` (building number), `city` (city or town) and `postalCode` (postal code). Optional are `unitId`, i.e. the flat/unit number, and `postBox`, i.e. the PO box. The `country` attribute indicates the country, and the «binding» stereotype means that its value comes from a specific set of codes. The `administrativeUnitIdentifier` and `localityIdentifier` attributes are identifiers from the TERYT register: the first indicates the territorial division unit (TERC code), the second the locality (SIMC code). They serve the verification of address data against reference databases, which is required by the Act on the Healthcare Information System. The `text` attribute allows the whole address to be recorded as a single text string when it cannot be split into fields.

# Health professional data {#health-professional}

![Health professional data](diagrams/pl-domain-healthProfessional.png)

The diagram presents the national model of a health professional. Its central class is **PLDomainHealthProfessional**, describing a person practising a medical profession. It has three attributes: a mandatory, single professional licence number (professionalLicenceNumber, type Identifier, cardinality 1..1), an optional authorisation identifier (authorizationIdentifier, Identifier, 0..1) and at least one professional qualification code (qualificationCode, Coding, 1..*). A health professional has exactly one name, any number of addresses and contact details, and any number of professional roles. The roles are linked to the health professional by composition, i.e. they are part of it and do not exist on their own.

The name is described by the **PLDomainHumanName** class with two text attributes: family, i.e. exactly one surname (1..1), and given, i.e. one or two given names (1..2). Contact details are represented by **PLDomainTelecom**, whose only national attribute is the mandatory contact type code (type, Coding, 1..1).

The **PLDomainHealthProfessionalRole** class describes the role in which the health professional acts in a specific place. It contains two optional, repeating coded attributes: role, i.e. the functions performed, and specialty, i.e. the specialisations (both Coding, 0..*). A role can indicate an organisation in two ways, each with a cardinality of 0..1: as an organisational cell of a medical entity or as a professional practice. The "OR" note connecting both associations means that they are alternative variants. A role can also indicate one place of providing healthcare services (serviceLocation, 0..1).

Organisations form a simple hierarchy. **PLDomainOrganisation** is the common national supertype, and its two specialisations are **PLDomainMedicalEntityCell**, i.e. an organisational cell of a medical entity, and **PLDomainMedicalPractice**, i.e. a professional practice.

The last class is **PLDomainServiceLocation**, describing a place of providing healthcare services. It requires at least one place identifier (identifier, Identifier, 1..*) and exactly one specialty code (specialtyCode, Coding, 1..1).

The diagram itself shows a few editorial flaws: typos in the names "HelathProfessionalRole" and "qualiicationCode", the cardinality of specialtyCode written as "1.1" instead of "1..1", and a leftover empty "Text" label next to one of the arrows.

# Data of entities performing medical activities and professional practices {#organisation}

![Organisation data model](diagrams/pl-domain-organisation.png)

**PLDomainOrganisation** is the central element of the model and serves as the general description of an organisation in the Polish domain. It has three attributes of its own: identifier, i.e. any number of identifiers, a mandatory name with the name of the organisation, and type, i.e. any number of codes specifying its kind. The class is linked to any number of addresses and contact details, and the optional partOf relationship makes it possible to indicate a parent organisation. Five specific classes inherit from it and narrow these general rules.

**PLDomainMedicalEntity** describes a medical entity. It requires exactly one entityIdentifier, which corresponds to the register book number in the Register of Entities Performing Medical Activities, one regonEntityIdentifier with the REGON number of the entity, and one taxIdentificationNumber, i.e. the NIP (tax identification number). The address is mandatory and single here, and contact details must occur at least once.

**PLDomainMedicalEntityFacility** is a medical facility, i.e. an organised set of assets by means of which the entity performs a specific type of medical activity. Its only own identifier is regonLocalUnitIdentifier, corresponding to the 14-digit REGON number of the facility. A facility has one address, at least one contact and must belong to exactly one medical entity.

**PLDomainMedicalEntityUnit** represents an organisational unit of a facility. The entityUnitIdentifier attribute corresponds to the 2-character departmental code from part V, and the remaining attributes, i.e. the address and contact details, have the same cardinalities as in the facility. A unit is part of exactly one medical facility.

**PLDomainMedicalEntityCell** is an organisational cell, the lowest level of the structure. Besides the address and contact, it has entityCellIdentifier, i.e. the 3-character code from part VII, and a mandatory type, which corresponds to the 4-character specialty code of the cell from part VIII. In the model a cell always belongs to exactly one organisational unit, although the regulations also allow a cell operating in a facility outside a unit.

**PLDomainMedicalPractice** describes a professional practice, i.e. a form of practising the profession by a physician, nurse, physiotherapist or laboratory diagnostician. It is the simplest class in the model: it requires at least one identifier and a name.

Two auxiliary classes describe address and contact data. **PLDomainAddress** requires the street name (streetName), building number (houseNumber), city or town (city) and postal code (postalCode). Optional are the flat/unit number (unitId), PO box (postBox), country code bound to a code system (country), identifiers of the territorial division unit and of the locality (administrativeUnitIdentifier, localityIdentifier) and the address as a single string (text). **PLDomainTelecom** adds a mandatory type, i.e. a code of the contact channel type, for example telephone or e-mail.

# Data of the place of providing healthcare services (MUŚ) {#service-location}

The basic class of the model is **PLDomainLocation**, which in meaning corresponds to the Location resource in the FHIR standard, i.e. it describes a physical place. It has a mandatory name (name, string 1..1) and any number of identifiers (identifier, Identifier 0..\*) and types (type, Coding 0..\*). It must have exactly one address **PLDomainAddress** (address, 1..1), may have any number of contacts **PLDomainTelecom** (telecom, 0..\*) and may indicate at most one managing organisation **PLDomainOrganisation** (managingOrganisation, 0..1).

**PLDomainServiceLocation** inherits from **PLDomainLocation** and represents a place of providing healthcare services within the meaning of Polish legislation. It requires at least one identifier (identifier, 1..\*) and exactly one specialty code (specialtyCode, Coding; the diagram shows "[1.1]", which should be read as 1..1). Its managing organisation (managingOrganisation, 0..1) is either **PLDomainMedicalPractice** or **PLDomainMedicalEntityCell**. Both associations are connected by an "OR" note, so only one of them applies to a given place.

**PLDomainOrganisation** represents an organisation. It has a mandatory name (name, string 1..1) and any number of identifiers (identifier, Identifier 0..\*) and types (type, Coding 0..\*). It can be linked to any number of addresses **PLDomainAddress** (address, 0..\*).

Two classes inherit from **PLDomainOrganisation**. **PLDomainMedicalPractice** tightens the requirements: at least one identifier (identifier, 1..\*) and a mandatory name (name, 1..1). **PLDomainMedicalEntityCell** adds a mandatory cell identifier (entityCellIdentifier, Identifier 1..1), exactly one type (type, Coding 1..1), exactly one address (address, **PLDomainAddress** 1..1) and at least one contact (telecom, **PLDomainTelecom** 1..\*).

**PLDomainAddress** describes an address. It requires the street name (streetName), building number (houseNumber), city or town (city) and postal code (postalCode), all of type string with a cardinality of 1..1. Optionally (0..1) the flat/unit number (unitId), PO box (postBox), country (country) as a CodeableConcept marked with the «binding» stereotype, i.e. bound to a value set, and the address in text form (text) can be provided. The class also contains two optional attributes of type Identifier: the administrative unit identifier (administrativeUnitIdentifier) and the locality identifier (localityIdentifier).

**PLDomainTelecom** represents contact details and defines one attribute: a mandatory contact type (type, Coding 1..1).
