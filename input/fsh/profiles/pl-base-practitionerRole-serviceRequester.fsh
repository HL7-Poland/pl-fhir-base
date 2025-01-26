Profile: PLBasePractitionerRoleServiceRequester
Parent: PractitionerRole
Id: pl-base-practitionerrole-servicerequester
Title: "PractitionerRole: Service Requester (PL)"
Description: "Zlecający usługę medyczną"
* ^version = "0.0.1"
* practitioner 1..
* practitioner only Reference(PLBasePractitioner)
* location only Reference(PLBaseLocationMedicalFacility)