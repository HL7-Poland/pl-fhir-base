Profile: PLBaseRelatedArtifactRelatedDocument
Parent: RelatedArtifact
Id: PLBaseRelatedArtifactRelatedDocument
Title: "RelatedArtifact: Related Document (PL)"
Description: "Dane poprzedniej wersji dokumentu medycznego"
* type 1..1 MS
* type 1..1 = #replaced-with
* resourceReference 1..1 MS
* resourceReference only Reference(PLBaseDocumentReferenceRelatedDocument)
