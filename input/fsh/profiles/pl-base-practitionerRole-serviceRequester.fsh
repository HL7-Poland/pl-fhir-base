Profile: PLBasePractitionerRoleServiceRequester
Parent: PLBasePractitionerRole
Id: pl-base-practitionerrole-servicerequester
Title: "PractitionerRole: Service Requester (PL)"
Description: "Zlecający usługę medyczną"
* ^version = "0.1.0"
* practitioner 1..
* practitioner only Reference(PLBasePractitioner)
* location only Reference(PLBaseLocationMedicalFacility)