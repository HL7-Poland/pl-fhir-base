Extension: ActivityDefinitionResponsibleOrganization
Id: activityDefinition-responsibleOrganization
Title: "Activity Definition: Responsible Organization"
Description: "Podmiot odpowiedzialny za definicję usług medycznej"
Context: Composition
* ^version = "0.1.0"
* value[x] only Reference(PLBaseMedicalEntity or PLBaseMedicalPractice or PLBaseMedicalEntityUnit or PLBaseMedicalEntityCell)
