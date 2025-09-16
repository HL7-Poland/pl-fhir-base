Profile: PLBaseComposition
Parent: Composition
Id: pl-base-composition
Title: "Composition: Nagłówek dokumentu medycznego"
Description: "Dane nagłówkowe dokumentu medycznego w standardzie HL7 FHIR"
* ^version = "0.1.0"
* language from PLDocumentLanguageVS
* extension contains
    CompositionVersion named version 1..1 MS and
    CompositionInformationRecipient named informationRecipient 0..* MS and
    CompositionBasedOnOrder named basedOnOrder 0..* MS and
    CompositionPayorIdentifier named payorIdentifier 0..1 MS
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* type 1..1 MS
* type.coding 1..* MS
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Typ dokumentu medycznego"
* type.coding ^slicing.ordered = false
* type.coding contains
    loincDocumentType 1..1 MS and
    p1DocumentType 1..1 MS
* type.coding[loincDocumentType].system 1..1 MS
* type.coding[loincDocumentType].system = $loinc
* type.coding[loincDocumentType].code 1..1 MS
* type.coding[loincDocumentType].code from $fhir-document-type
* type.coding[p1DocumentType].system 1..1 MS
* type.coding[p1DocumentType].system = $p1-document-class
* type.coding[p1DocumentType].code 1..1 MS
* type.coding[p1DocumentType].code from PLP1DocumentTypeVS
* subject 1..1 MS
* subject only Reference(PLBasePatient)
* encounter 1..1 MS
* encounter only Reference(PLBaseActualEncounter)
* date 1..1 MS
* author 1..1 MS
* author only Reference(PLBaseDocumentAuthor)
* title 1..1 MS
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
* custodian only Reference(Organization)
* relatesTo 0..* MS
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "type"
* relatesTo ^slicing.rules = #open
* relatesTo ^slicing.description = "Rodzaj dokumentu powiązanego"
* relatesTo ^slicing.ordered = false
* relatesTo contains
    documentPreviousVersion 0..1 MS
* relatesTo[documentPreviousVersion].type 1..1 MS
* relatesTo[documentPreviousVersion].type =  #predecessor
* relatesTo[documentPreviousVersion].resource 0..0
* relatesTo[documentPreviousVersion].resourceReference 1..1 MS
* relatesTo[documentPreviousVersion].resourceReference = Reference(PLBaseDocumentIdentity)
* event 0..* MS
* event.period 0..0
* event.detail 1..1 MS
* event.detail.concept 1..1 MS
* event.detail.concept.coding 1..* MS
* event.detail.concept.coding ^slicing.discriminator.type = #value
* event.detail.concept.coding ^slicing.discriminator.path = "system"
* event.detail.concept.coding ^slicing.rules = #open
* event.detail.concept.coding ^slicing.description = "Typ usługi medycznej"
* event.detail.concept.coding ^slicing.ordered = false
* event.detail.concept.coding contains 
    icd9PLCode 1..1 MS
* event.detail.concept.coding[icd9PLCode] from PLIcd9PLServiceCodeVS
* event.detail.reference 0..0