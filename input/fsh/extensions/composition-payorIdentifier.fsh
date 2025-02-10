Extension: CompositionPayorIdentifier
Id: composition-payoridentifier
Title: "Composition: Payor Identifier"
Description: "Identyfikator ubezpieczyciela publicznego"
Context: Composition
* ^version = "0.1.0"
* value[x] only Identifier
* valueIdentifier ^slicing.discriminator.type = #value
* valueIdentifier ^slicing.discriminator.path = "system"
* valueIdentifier ^slicing.rules = #closed
* valueIdentifier ^slicing.description = "Identyfikator instytucji ubezpieczyciela publicznego"
* valueIdentifier ^slicing.ordered = false
* valueIdentifier contains 
    nationalHealthFundDepartmentId 0..1 MS and
    ehicOrganizationId 0..1 MS
* valueIdentifier[nationalHealthFundDepartmentId].system = "urn:oid:2.16.840.1.113883.3.4424.3.1"
* valueIdentifier[nationalHealthFundDepartmentId].value 1..1 MS
* valueIdentifier[ehicOrganizationId].system = "urn:oid:2.16.840.1.113883.3.4424.11.1.49"
* valueIdentifier[ehicOrganizationId].value 1..1 MS

