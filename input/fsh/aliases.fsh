// PL Personal
Alias: $peselIds = urn:oid:2.16.840.1.113883.3.4424.1.1.616
// Polish identity card: P1 OID register node for ID cards (2.16.840.1.113883.3.4424.1.2.{ISO 3166-1 numeric});
// the register has no entry for Poland (616), as the Polish ID card is superseded there by PESEL
Alias: $identityCardIds = urn:oid:2.16.840.1.113883.3.4424.1.2.616
// Polish passport: HL7 passport node 2.16.840.1.113883.4.330.{ISO 3166-1 numeric}, used by the P1 OID register
Alias: $passportIds = urn:oid:2.16.840.1.113883.4.330.616
Alias: $npwzPharmIds = urn:oid:2.16.840.1.113883.3.4424.1.6.1
Alias: $npwzDocIds = urn:oid:2.16.840.1.113883.3.4424.1.6.2
Alias: $npwzNurseIds = urn:oid:2.16.840.1.113883.3.4424.1.6.3
Alias: $npwzLabIds = urn:oid:2.16.840.1.113883.3.4424.1.6.4

// PL Organizational
Alias: $taxIdentificationNumberIds = urn:oid:2.16.840.1.113883.3.4424.2.1
Alias: $regonEntityIds = urn:oid:2.16.840.1.113883.3.4424.2.2.1
Alias: $regonLocalUnitIds = urn:oid:2.16.840.1.113883.3.4424.2.2.2
Alias: $medicalEntityIds = urn:oid:2.16.840.1.113883.3.4424.2.3.1
Alias: $medicalEntityUnitIds = urn:oid:2.16.840.1.113883.3.4424.2.3.2
Alias: $medicalEntityCellIds = urn:oid:2.16.840.1.113883.3.4424.2.3.3
Alias: $pharmacyIds = urn:oid:2.16.840.1.113883.3.4424.2.6
Alias: $reimb-contract-pools = http://hl7.org.pl/fhir/CodeSystem/pl-reimbursementContractIdentifierPool-CS
Alias: $practice-identifier-pools = http://hl7.org.pl/fhir/CodeSystem/pl-medicalPracticetIdentifierPool-CS

// UV Teritorial
Alias: $iso3166-1-2 = http://hl7.org/fhir/ValueSet/iso3166-1-2
Alias: $iso3166-1-3 = http://hl7.org/fhir/ValueSet/iso3166-1-3
Alias: $iso3166-1-N = http://hl7.org/fhir/ValueSet/iso3166-1-N

// PL Teritorial
Alias: $tercIds = http://hl7.org.pl/fhir/NamingSystem/teryt-terc
Alias: $simcIds = http://hl7.org.pl/fhir/NamingSystem/teryt-simc

// UV Terminology
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
// Alias: $radiology-playbook = http://fhir.loinc.org/CodeSystem/loinc-rsna-radiology-playbook
Alias: $bcp-47 = urn:ietf:bcp:47
Alias: $ucum = http://unitsofmeasure.org
Alias: $fhir-document-type = http://hl7.org/fhir/ValueSet/doc-typecodes
Alias: $v3-confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $v3-actCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $adm-gender = http://hl7.org/fhir/administrative-gender
Alias: $encounter-status = http://hl7.org/fhir/encounter-status

// PL Terminology
Alias: $icd-10 = http://hl7.org.pl/fhir/CodeSystem/pl-icd10Condition-CS
Alias: $icd-9-pl = http://hl7.org.pl/fhir/CodeSystem/pl-icd9plServiceCode-CS
Alias: $org-cell-type = http://hl7.org.pl/fhir/CodeSystem/pl-medicalEntityCellType-CS
Alias: $mri-fieldStrength = http://hl7.org.pl/fhir/CodeSystem/pl-imaging-mriScannerFieldStrength-cs
Alias: $p1-document-class = http://hl7.org.pl/fhir/CodeSystem/pl-p1DocumentType-CS
Alias: $medical-profession = http://hl7.org.pl/fhir/CodeSystem/pl-medicalProfession-CS
Alias: $practitioner-specialty = http://hl7.org.pl/fhir/CodeSystem/pl-practitionerSpecialty-CS
Alias: $discharge-disposition = http://hl7.org.pl/fhir/CodeSystem/pl-dischargeDisposition-CS

// Extensions
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $iso21090-ADXP-houseNumber = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber
Alias: $iso21090-ADXP-postBox = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox
Alias: $iso21090-ADXP-streetName = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName
Alias: $iso21090-ADXP-unitID = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-unitID
Alias: $iso21090-SC-coding = http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding

// Remove this comment