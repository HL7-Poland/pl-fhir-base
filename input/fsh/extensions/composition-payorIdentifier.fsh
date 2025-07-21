Extension: CompositionPayorIdentifier
Id: composition-payoridentifier
Title: "Composition: Payor Identifier"
Description: "Identyfikator ubezpieczyciela publicznego"
Context: Composition
* ^version = "0.1.0"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension ^slicing.ordered = false
* extension contains 
    nationalHealthFundDepartmentId 0..1 MS and
    ehicOrganizationId 0..1 MS
* extension[nationalHealthFundDepartmentId].value[x] only Identifier
* extension[nationalHealthFundDepartmentId].valueIdentifier.system = "urn:oid:2.16.840.1.113883.3.44.value[x]24.3.1"
* extension[nationalHealthFundDepartmentId].valueIdentifier.value 1..1 MS
* extension[ehicOrganizationId].value[x] only Identifier
* extension[ehicOrganizationId]..valueIdentifier.system = "urn:oid:2.16.840.1.113883.3.4424.1.value[x]1.1.49"
* extension[ehicOrganizationId].valueIdentifier.value 1..1 MS