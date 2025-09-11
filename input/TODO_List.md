- Referencja do dokumentu PIK HL7 CDA z uwzględnieniem metadanych XDS za P1 (jako bazowy profil dla zasobu DocumentReference)
- Poprawić oidy dla kodu oddziału NFZ i identyfikator karty EKUZ (w rozszerzeniu payorIdentifier) >> Done
- Sprawdzić, czy warto dodać inny atrybut (np. "use"?) do rozszerzenia identifierOfMother >> Nie. Done
- Zrobić binding dla identifier.system w PractitionerRoleReimbursementContractIdentifier >> Done
- Jak zapisac confidentialityCode w Composition? >> Done
- type w DocumentReference i w Composition (slicing na LOINC i na P1) >> Done
- basedOn w ActualEncounter dodać slicing na PLBaseServiceOrder i inne >> Jaki discriminator??
- dodać 2 slicingi w PLBaseDocument >> Done

- type w PLBaseEncounter dodać slicing >> obgadać
- PLBasePatient slicing w extension - warning

