Extension: PractitionerRoleReimbursementContractIdentifier
Id: practitionerRole-reimbursementContractIdentifier
Title: "PractitionerRole: Reimbursement Contract Identifier"
Description: "Identyfikator umowy związanej z refundacją świadczeń medycznych"
Context: PractitionerRole
* ^version = "0.1.0"
* value[x] only Identifier
* valueIdentifier.system 1..1 MS
* valueIdentifier.system from PLReimbursementContractIdentifierPoolVS
* valueIdentifier.value 1..1 MS
