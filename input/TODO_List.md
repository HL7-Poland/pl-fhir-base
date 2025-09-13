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

Nowe:
- w jaki sposób zapisujemy "podmiot odpowiedzialny" za definicję CatalogService? >> dodać rozszerzenie w PLBase i zmienić model logiczny w SSIDL
- W PLBaseCatalogService dodałem wymaganie intent = #proposal (jeśli tak jest, to musimy dostosować się do tego w profilach podrzędnych, bo w ssidl-ig jest w tej chwili zabronione) >> Robimy

W PLBasePatient:
// identifier[pesel].value dodać wymaganie 11 cyfr za pomocą FHIRPath
// Warning jeśli identyfikator jest z puli "nadrzędnej", (4424.1.1, 4424.1.2 4424.1.3 4424.1.5)

W PLBasePractitionerRoleDocumentAuthor i w PLBaseInformationRecipient
// "or" w organization

W PLBaseReferenceMedicalPractice:
// zrobić valueSet dla identifier (zamiast choice'a)

