Profile: PLBaseComposition
Parent: Composition
Id: pl-base-composition
Title: "Composition (PL)"
Description: "Dane nagłówka dokumentu medycznego"
* ^version = "0.1.0"
* language from PLDocumentLanguage
* extension contains
    CompositionVersion named version 1..1 MS and
    CompositionInformationRecipient named informationRecipient 0..* MS and
    CompositionBasedOnOrder named basedOnOrder 0..* MS and
    CompositionPayorIdentifier named payorIdentifier 0..1 MS
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* type 1..1 MS
* type from $fhir-document-type
* category 1..1 MS
* category from PLP1DocumentClassType
* subject 1..1 MS
* subject only Reference(PLBasePatient)
* encounter 1..1 MS
* encounter only Reference(PLBaseEncounter)
* date 1..1 MS
* author 1..1 MS
* author only Reference(PLBasePractitionerRoleDocumentAuthor)
* title 1..1 MS
* confidentiality 1..1 MS
* confidentiality from PLConfidentiality
* attester 1..* MS
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester ^slicing.description = "Wystawca dokumentu"
* attester ^slicing.ordered = false
* attester contains
    legalAuthenticator 1..1 MS and
    authenticator 0..* MS
* attester[legalAuthenticator].mode 1..1 MS    
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time 1..1 MS
* attester[legalAuthenticator].party 1..1 MS
* attester[legalAuthenticator].party only Reference(PLBasePractitioner)
* attester[authenticator].mode 1..1 MS
* attester[authenticator].mode = #professional
* attester[legalAuthenticator].time 1..1 MS
* attester[legalAuthenticator].party 1..1 MS
* attester[legalAuthenticator].party only Reference(PLBasePractitioner)
* custodian 1..1 MS
* custodian only Reference(PLBaseOrganization)
* relatesTo 0..1 MS
* relatesTo.extension contains
    CompositionVersion named version 1..1 MS
* relatesTo.target[x] only Identifier
* event.code 1..* MS
* event.code ^slicing.discriminator.type = #value
* event.code ^slicing.discriminator.path = "system"
* event.code ^slicing.rules = #open
* event.code ^slicing.description = "Typ usługi medycznej"
* event.code ^slicing.ordered = false
* event.code contains 
    icd9PLCode 1..1 MS
* event.code[icd9PLCode] from PLServiceEventType