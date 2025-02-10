Extension: CompositionPayorIdentifier
Id: composition-payoridentifier
Title: "Composition: Payor Identifier"
Description: "Identyfikator ubezpieczyciela publicznego"
Context: Composition
* ^version = "0.1.0"
* value[x] only Identifier
* valueIdentifier.system = ("urn:oid:2.16.840.1.113883.3.4424.3.1" or "urn:oid:2.16.840.1.113883.3.4424.11.1.49"))
* valueIdentifier.value 1..1 MS

