- Referencja do dokumentu PIK HL7 CDA z uwzględnieniem metadanych XDS za P1 (jako bazowy profil dla zasobu DocumentReference) >> Done

Zrobione:
- Poprawić oidy dla kodu oddziału NFZ i identyfikator karty EKUZ (w rozszerzeniu payorIdentifier) >> Done
- Sprawdzić, czy warto dodać inny atrybut (np. "use"?) do rozszerzenia identifierOfMother >> Nie. Done
- Zrobić binding dla identifier.system w PractitionerRoleReimbursementContractIdentifier >> Done
- Jak zapisac confidentialityCode w Composition? >> Done, ale w PLBaseDocument
- type w DocumentReference i w Composition (slicing na LOINC i na P1) >> Done
- dodać 2 slicingi w PLBaseDocument >> Done
- Zmienić odwołania na PLBaseAddressEu >> Done
- type w PLBaseEncounter dodać slicing >> Done
- PLBasePatient slicing w extension - warning >> Done
- basedOn w ActualEncounter dodać slicing na PLBaseServiceOrder i inne >> Profile. Done
- Uzupełnić "or" w organization w PLBase DocumentAuthor i PLBase InformationRecipient>> Done
- W PLBaseCatalogService dodać wymaganie intent = #proposal (i usunąć intent 0..0 w ssidl-ig) >> Done
- Rozszerzenie ActivityDefinitionResponsibleOrganization w PLBaseCatalogService >> Done
- W PLBaseReferenceMedicalPractice zrobić valueSet dla identifier (zamiast choice'a) >> Done
- identifier[pesel].value dodać wymaganie 11 cyfr za pomocą FHIRPath >> Done
- W profilu dla Cell i dla Unit - partOf only PLBaseMedicalEntityIdentity or Reference(PLBaseMedicalEntity) >> Done
- Rozszerzenie w Cell - powiązanie z Unit >> Done

W PLBaseMedicalFacility dodać slicing na identyfikator miejsca udzielania świadczeń (urn:oid:2.16.840.1.113883.3.4424.2.4.50.1)
Rozszerzenie w Cell - powiązanie z Unit?
Dodać display do VSetów pul identyfikatorów
