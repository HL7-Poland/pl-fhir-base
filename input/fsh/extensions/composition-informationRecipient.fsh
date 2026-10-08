Extension: CompositionInformationRecipient
Id: composition-informationRecipient
Title: "Composition: Information Recipient"
Description: "Odbiorca informacji zawartej w dokumencie medycznym"
Context: Composition
* ^version = "0.1.0"
// FIX: the PLBaseInformationRecipient profile (pl-base-practitionerRole-informationRecipient) was removed from the IG, which
// caused the SUSHI error "No definition for the type PLBaseInformationRecipient could be found". The general
// PLBasePractitionerRole profile is used instead.
* value[x] only Reference(PLBasePractitionerRole)
