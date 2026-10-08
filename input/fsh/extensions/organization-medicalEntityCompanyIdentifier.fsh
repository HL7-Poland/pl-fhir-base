Extension: MedicalEntityCompanyIdentifier
Id: organization-medicalEntityCompanyIdentifier
Title: "Organization: Medical Entity Company Identifier"
Description: "Identyfikator przedsiębiorstwa podmiotu leczniczego (REGON)"
Context: Organization
* value[x] only Identifier
* valueIdentifier.system 1..1 MS
* valueIdentifier.system = $regonLocalUnitIds
* valueIdentifier.value 1..1 MS