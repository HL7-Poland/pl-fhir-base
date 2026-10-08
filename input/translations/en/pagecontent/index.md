The Polish HL7 FHIR Base Specification (HL7 FHIR PL Base) has been developed by [HL7 Poland](https://hl7.org.pl), the official national affiliate of [HL7 International](https://hl7.org). The specification is a working draft and has been made available for consultation, which will result in a version constituting the official recommendation for implementers.

# Introduction

The specification contains the base rules for data exchange between systems used in Polish healthcare. It comprises definitions of the structures of exchanged data objects (in the form of FHIR resource profiles, data type profiles and extension definitions) as well as value set definitions and definitions of local code systems. The data exchange rules contained in the specification are based on the rules defined in the [Polish National Implementation of the HL7 CDA standard (PIK HL7 CDA)](https://www.cez.gov.pl/HL7POL-1.3.2/plcda-html-1.3.2/plcda-html/) and are preliminarily harmonised with the emerging European specifications (EEHRxF) based on the [HL7 FHIR](https://hl7.org/fhir/) standard, which will be the basis for data exchange within the European Health Data Space (EHDS).

# Polish HL7 FHIR specifications

With HL7 FHIR recognised as the main standard for defining the European electronic health record exchange format, HL7 Poland has launched an initiative to develop HL7 FHIR interoperability specifications at the national level. As with the specifications developed at the European level, the architecture of the Polish specifications is hierarchical: it distinguishes base specifications, which contain the fundamental structure definitions, and domain specifications, which refine the requirements for specific data objects for a particular domain and for particular use cases of medical data exchange.
To develop individual specifications or groups of specifications, working groups have been established within HL7 Poland. Their task is to plan the specification development process, carry out the technical work of creating the specification artefacts, and comment on and approve the finished, production-ready parts of the specifications with the support of the whole Polish HL7 community. The first working group established for this purpose is the working group for the Polish HL7 FHIR base specification.
At the technical level, the Polish HL7 FHIR specifications are developed with the same tools as the European specifications, using the FHIR Shorthand (FSH) notation and following the same conventions. For each specification, a dedicated public GitHub repository is created that contains the definitions of the specification artefacts. The development process uses CI builds and the publicly available build.fhir.org infrastructure for building specification releases, where every change in the specification code repository automatically generates a new working release of the specification. For publication, this process uses the official IG Publisher tool, actively developed by HL7 experts. The individual specifications are published as NPM packages that keep their dependencies on the source packages of other specifications. Versioning of the specifications follows the SemVer rules with the HL7 extensions, which are commonly used in European specifications and in other national specifications.

![Polish HL7 FHIR specifications](diagrams/pl-fhir-ig-layout.png)

Three specifications have been defined as base specifications derived from the HL7 FHIR standard:
- `pl-base` – the base specification for implementing the HL7 FHIR standard in Poland, containing the fundamental set of rules for data exchange objects that are common to all specifications, medical domains and use cases of medical data exchange in Poland.
- `pl-extensions` – a specification containing the definitions of HL7 FHIR extensions created to adapt the standard to the Polish requirements for medical data exchange.
- `pl-terminology` – a specification containing the definitions of terminology code systems and of value sets based on these code systems, as well as on external, global terminologies, which are commonly used across all derived interoperability specifications in Poland.

The following domain specifications derived from the HL7 FHIR standard have been defined in Poland:
- `pl-lab` – a specification covering the definitions of structures for laboratory test orders and results, including the laboratory report document.
- `pl-imaging` – a specification for the diagnostic imaging domain, covering primarily the structure of the imaging study order, the result of the study and the imaging report document.

Domain specifications are based on the base specification and refine individual data structures in the context of specific, domain-specific use cases of data exchange between healthcare IT systems.

# Harmonisation of the Polish HL7 FHIR specifications with the European specifications in the context of EHDS

The Polish base specifications and the derived domain specifications for the HL7 FHIR standard form the basis for implementing this standard in Poland. For them to be used in the general exchange of information between healthcare IT systems, in line with the European electronic health record exchange format (EEHRxF), the requirements for the definitions of the structures of exchanged data and for the terminologies used must be aligned in a specification harmonisation process. A common practice in European countries preparing for the EHDS is to adapt the HL7 FHIR specifications developed so far, or to create new ones, in full conformance with the specifications developed at the European level by HL7 Europe, while keeping local requirements, extensions and decisions on the terminologies used.

![Harmonisation of HL7 FHIR specifications](diagrams/pl-fhir-ig-harmonization.png)

The first specification in Poland to be harmonised with the European specifications is the Polish HL7 FHIR Base Specification (pl-base). The process concerns aligning the basic data structures and the terminology bindings used with the EU Base/Core specification, on the assumption that it is not a one-off process, given the active development of both specifications. The harmonisation process is significantly facilitated by basing the Polish base specification on a common logical data model, which is also an adaptation of the logical models developed at the European level. An effective specification harmonisation process will ensure that objects (medical documents or resources) created in full conformance with the Polish specification are at the same time fully conformant with the requirements of the European specification. This will make it possible to remain conformant with the European electronic health record exchange format for the basic scope of information needed for general, secure data exchange between systems in Europe.

# Proposed next steps

The following next steps should be considered when planning and carrying out work on the national HL7 FHIR specifications in Poland:
- launching a terminology server for the Polish base code systems and value sets
- making an inventory of existing Polish FHIR specifications
- preparing the publication of a specification for the laboratory diagnostics domain (PL Lab)
- preparing the publication of a specification for the diagnostic imaging domain (PL Imaging)
- reviewing other Polish national specifications (e.g. Medical Event)
- preparing a recommendation for the Ministry of Health to also allow medical documents to be issued using the HL7 FHIR standard
- analysing the needs and possibilities of integrating the existing document exchange mechanisms based on the IHE XDS.b profile using the HL7 FHIR standard
- identifying other areas worth covering by national HL7 FHIR specifications (e.g. remote appointment booking?)
- publishing version 1.0 of the Polish base specification as a recommendation for implementers
