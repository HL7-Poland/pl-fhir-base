- Referencja do dokumentu PIK HL7 CDA z uwzględnieniem metadanych XDS za P1 (jako bazowy profil dla zasobu DocumentReference)

Zrobione:
- Poprawić oidy dla kodu oddziału NFZ i identyfikator karty EKUZ (w rozszerzeniu payorIdentifier) >> Done
- Sprawdzić, czy warto dodać inny atrybut (np. "use"?) do rozszerzenia identifierOfMother >> Nie. Done
- Zrobić binding dla identifier.system w PractitionerRoleReimbursementContractIdentifier >> Done
- Jak zapisac confidentialityCode w Composition? >> Done, ale w PLBaseDocument
- type w DocumentReference i w Composition (slicing na LOINC i na P1) >> Done
- dodać 2 slicingi w PLBaseDocument >> Done

Do obgadania w sobotę:
- type w PLBaseEncounter dodać slicing >> obgadać
- PLBasePatient slicing w extension - warning
- basedOn w ActualEncounter dodać slicing na PLBaseServiceOrder i inne >> Jaki discriminator??

Nowe:
- w jaki sposób zapisujemy "podmiot odpowiedzialny" za definicję CatalogService?
- W PLBaseCatalogService dodałem wymaganie intent = #proposal (jeśłi tak jest, to musimy dostosować się do tego w profilach podrzędnych, bo w ssidl-ig jest w tej chwili zabronione)

