Profile: PLBasePractitioner
Parent: PractitionerEu
Id: pl-base-practitioner
Title: "Practitioner (PL Base)"
Description: "Data of a health professional."
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Dane pracownika medycznego.]])

* . ^short = "Health professional"
* . ^definition = "Person who is directly or indirectly involved in the provisioning of healthcare, in particular a member of a medical profession with the right to practise the profession (NPWZ)."
* . insert PLTranslation([[Pracownik medyczny]], [[Osoba bezpośrednio lub pośrednio zaangażowana w udzielanie świadczeń opieki zdrowotnej, w szczególności przedstawiciel zawodu medycznego posiadający prawo wykonywania zawodu (NPWZ).]])

* identifier 1..*
* identifier ^short = "Identifiers of the health professional"
* identifier ^definition = "Identifiers of the health professional, in particular professional licence numbers (NPWZ) from the registers of the relevant professional self-governments."
* identifier insert PLTranslation([[Identyfikatory pracownika medycznego]], [[Identyfikatory pracownika medycznego, w szczególności numery prawa wykonywania zawodu (NPWZ) z rejestrów właściwych samorządów zawodowych.]])
* identifier.system ^short = "Identifier system (OID of the register)"
* identifier.system ^definition = "OID of the register in which the identifier was issued, e.g. the register of professional licence numbers (NPWZ) of the given medical profession."
* identifier.system insert PLTranslation([[System identyfikatorów (OID rejestru)]], [[OID rejestru, w którym nadano identyfikator, np. rejestru numerów prawa wykonywania zawodu (NPWZ) danego zawodu medycznego.]])
* identifier.value ^short = "Identifier value, e.g. NPWZ number"
* identifier.value ^definition = "Value of the identifier, e.g. the professional licence number (NPWZ), written without separators."
* identifier.value insert PLTranslation([[Wartość identyfikatora, np. numer NPWZ]], [[Wartość identyfikatora, np. numer prawa wykonywania zawodu (NPWZ), zapisana bez znaków rozdzielających.]])

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Pools of professional licence numbers (NPWZ) of different medical professions"
* identifier insert PLSlicingDescriptionTranslation([[Pule identyfikatorów praw wykonywania zawodu różnych zawodów medycznych]])
* identifier ^slicing.ordered = false
* identifier contains
  pharmacistId 0..1 and
  physicianId 0..1 and
  nurseId 0..1 and
  labDiagnosticianId 0..1

* identifier[pharmacistId] ^short = "Pharmacist licence number (NPWZ)"
* identifier[pharmacistId] ^definition = "Number of the right to practise the profession (NPWZ) from the register of pharmacists."
* identifier[pharmacistId] insert PLTranslation([[Numer prawa wykonywania zawodu farmaceuty (NPWZ)]], [[Numer prawa wykonywania zawodu (NPWZ) z rejestru farmaceutów.]])
* identifier[pharmacistId].system = $npwzPharmIds

* identifier[physicianId] ^short = "Physician licence number (NPWZ)"
* identifier[physicianId] ^definition = "Number of the right to practise the profession (NPWZ) from the register of physicians, dentists and feldshers."
* identifier[physicianId] insert PLTranslation([[Numer prawa wykonywania zawodu lekarza (NPWZ)]], [[Numer prawa wykonywania zawodu (NPWZ) z rejestru lekarzy, lekarzy dentystów i felczerów.]])
* identifier[physicianId].system = $npwzDocIds

* identifier[nurseId] ^short = "Nurse or midwife licence number (NPWZ)"
* identifier[nurseId] ^definition = "Number of the right to practise the profession (NPWZ) from the register of nurses and midwives."
* identifier[nurseId] insert PLTranslation([[Numer prawa wykonywania zawodu pielęgniarki lub położnej (NPWZ)]], [[Numer prawa wykonywania zawodu (NPWZ) z rejestru pielęgniarek i położnych.]])
* identifier[nurseId].system = $npwzNurseIds

* identifier[labDiagnosticianId] ^short = "Laboratory diagnostician licence number (NPWZ)"
* identifier[labDiagnosticianId] ^definition = "Number of the right to practise the profession (NPWZ) from the register of laboratory diagnosticians."
* identifier[labDiagnosticianId] insert PLTranslation([[Numer prawa wykonywania zawodu diagnosty laboratoryjnego (NPWZ)]], [[Numer prawa wykonywania zawodu (NPWZ) z rejestru diagnostów laboratoryjnych.]])
* identifier[labDiagnosticianId].system = $npwzLabIds

* name 1..1
* name ^short = "Name of the health professional"
* name ^definition = "Name of the health professional: family name and given name(s). Exactly one name is required."
* name insert PLTranslation([[Imię i nazwisko pracownika medycznego]], [[Imię i nazwisko pracownika medycznego: nazwisko oraz imię (imiona). Wymagane jest dokładnie jedno.]])

* qualification ^short = "Medical professions and specialties"
* qualification ^definition = "Medical professions practised by the health professional, with the corresponding professional licence numbers (NPWZ), and medical specialties held."
* qualification insert PLTranslation([[Zawody i specjalności medyczne]], [[Zawody medyczne wykonywane przez pracownika medycznego wraz z odpowiadającymi im numerami prawa wykonywania zawodu (NPWZ) oraz posiadane specjalności medyczne.]])
* qualification.identifier ^short = "Professional licence number (NPWZ) of the qualification"
* qualification.identifier ^definition = "Number of the right to practise the profession (NPWZ) confirming the qualification, if applicable."
* qualification.identifier insert PLTranslation([[Numer prawa wykonywania zawodu (NPWZ) dla kwalifikacji]], [[Numer prawa wykonywania zawodu (NPWZ) potwierdzający kwalifikację, jeżeli dotyczy.]])
* qualification.identifier.system ^short = "Identifier system (OID of the register)"
* qualification.identifier.system ^definition = "OID of the register of professional licence numbers (NPWZ) of the given medical profession."
* qualification.identifier.system insert PLTranslation([[System identyfikatorów (OID rejestru)]], [[OID rejestru numerów prawa wykonywania zawodu (NPWZ) danego zawodu medycznego.]])
* qualification.identifier.value ^short = "NPWZ number"
* qualification.identifier.value ^definition = "Professional licence number (NPWZ), written without separators."
* qualification.identifier.value insert PLTranslation([[Numer NPWZ]], [[Numer prawa wykonywania zawodu (NPWZ), zapisany bez znaków rozdzielających.]])
* qualification.code ^short = "Code of the medical profession or specialty"
* qualification.code ^definition = "Coded medical profession or medical specialty of the qualification."
* qualification.code insert PLTranslation([[Kod zawodu lub specjalności medycznej]], [[Zakodowany zawód medyczny lub specjalność medyczna kwalifikacji.]])
* qualification.code.coding.system ^short = "Code system of medical professions or specialties"
* qualification.code.coding.system ^definition = "Code system of medical professions or code system of medical specialties."
* qualification.code.coding.system insert PLTranslation([[Słownik zawodów lub specjalności medycznych]], [[Słownik zawodów medycznych albo słownik specjalności medycznych.]])
* qualification.code.coding.code ^short = "Code of the medical profession or specialty"
* qualification.code.coding.code ^definition = "Code of the medical profession or medical specialty from the given code system."
* qualification.code.coding.code insert PLTranslation([[Kod zawodu lub specjalności medycznej]], [[Kod zawodu medycznego lub specjalności medycznej z danego słownika.]])

// qualification: slicing
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #open
* qualification ^slicing.description = "Medical professions and specialties"
* qualification insert PLSlicingDescriptionTranslation([[Zawody i specjalności medyczne]])
* qualification ^slicing.ordered = false
* qualification contains
  pharmacistCode 0..1 and
  physicianCode 0..1 and
  dentistCode 0..1 and
  feldsherCode 0..1 and
  nurseCode 0..1 and
  midwifeCode 0..1 and
  labDiagnosticianCode 0..1 and
  pharmacyTechnicianCode 0..1 and
  specialty 0..*

* qualification[pharmacistCode] ^short = "Profession: pharmacist"
* qualification[pharmacistCode] ^definition = "Qualification to practise the medical profession of pharmacist, with the professional licence number (NPWZ) from the register of pharmacists."
* qualification[pharmacistCode] insert PLTranslation([[Zawód: farmaceuta]], [[Kwalifikacja do wykonywania zawodu medycznego farmaceuty wraz z numerem prawa wykonywania zawodu (NPWZ) z rejestru farmaceutów.]])
* qualification[pharmacistCode].identifier.system = $npwzPharmIds
* qualification[pharmacistCode].identifier.value 1..1
* qualification[pharmacistCode].code.coding.system = $medical-profession
* qualification[pharmacistCode].code.coding.code = #FARM

* qualification[physicianCode] ^short = "Profession: physician"
* qualification[physicianCode] ^definition = "Qualification to practise the medical profession of physician, with the professional licence number (NPWZ) from the register of physicians, dentists and feldshers."
* qualification[physicianCode] insert PLTranslation([[Zawód: lekarz]], [[Kwalifikacja do wykonywania zawodu medycznego lekarza wraz z numerem prawa wykonywania zawodu (NPWZ) z rejestru lekarzy, lekarzy dentystów i felczerów.]])
* qualification[physicianCode].identifier.system = $npwzDocIds
* qualification[physicianCode].identifier.value 1..1
* qualification[physicianCode].code.coding.system = $medical-profession
* qualification[physicianCode].code.coding.code = #LEK

* qualification[dentistCode] ^short = "Profession: dentist"
* qualification[dentistCode] ^definition = "Qualification to practise the medical profession of dentist, with the professional licence number (NPWZ) from the register of physicians, dentists and feldshers."
* qualification[dentistCode] insert PLTranslation([[Zawód: lekarz dentysta]], [[Kwalifikacja do wykonywania zawodu medycznego lekarza dentysty wraz z numerem prawa wykonywania zawodu (NPWZ) z rejestru lekarzy, lekarzy dentystów i felczerów.]])
* qualification[dentistCode].identifier.system = $npwzDocIds
* qualification[dentistCode].identifier.value 1..1
* qualification[dentistCode].code.coding.system = $medical-profession
* qualification[dentistCode].code.coding.code = #LEKD

* qualification[feldsherCode] ^short = "Profession: feldsher"
* qualification[feldsherCode] ^definition = "Qualification to practise the medical profession of feldsher."
* qualification[feldsherCode] insert PLTranslation([[Zawód: felczer]], [[Kwalifikacja do wykonywania zawodu medycznego felczera.]])
* qualification[feldsherCode].code.coding.system = $medical-profession
* qualification[feldsherCode].code.coding.code = #FEL

* qualification[nurseCode] ^short = "Profession: nurse"
* qualification[nurseCode] ^definition = "Qualification to practise the medical profession of nurse, with the professional licence number (NPWZ) from the register of nurses and midwives."
* qualification[nurseCode] insert PLTranslation([[Zawód: pielęgniarka]], [[Kwalifikacja do wykonywania zawodu medycznego pielęgniarki wraz z numerem prawa wykonywania zawodu (NPWZ) z rejestru pielęgniarek i położnych.]])
* qualification[nurseCode].identifier.system = $npwzNurseIds
* qualification[nurseCode].identifier.value 1..1
* qualification[nurseCode].code.coding.system = $medical-profession
* qualification[nurseCode].code.coding.code = #PIEL

* qualification[midwifeCode] ^short = "Profession: midwife"
* qualification[midwifeCode] ^definition = "Qualification to practise the medical profession of midwife, with the professional licence number (NPWZ) from the register of nurses and midwives."
* qualification[midwifeCode] insert PLTranslation([[Zawód: położna]], [[Kwalifikacja do wykonywania zawodu medycznego położnej wraz z numerem prawa wykonywania zawodu (NPWZ) z rejestru pielęgniarek i położnych.]])
* qualification[midwifeCode].identifier.system = $npwzNurseIds
* qualification[midwifeCode].identifier.value 1..1
* qualification[midwifeCode].code.coding.system = $medical-profession
* qualification[midwifeCode].code.coding.code = #POL

* qualification[labDiagnosticianCode] ^short = "Profession: laboratory diagnostician"
* qualification[labDiagnosticianCode] ^definition = "Qualification to practise the medical profession of laboratory diagnostician, with the professional licence number (NPWZ) from the register of laboratory diagnosticians."
* qualification[labDiagnosticianCode] insert PLTranslation([[Zawód: diagnosta laboratoryjny]], [[Kwalifikacja do wykonywania zawodu medycznego diagnosty laboratoryjnego wraz z numerem prawa wykonywania zawodu (NPWZ) z rejestru diagnostów laboratoryjnych.]])
* qualification[labDiagnosticianCode].identifier.system = $npwzLabIds
* qualification[labDiagnosticianCode].identifier.value 1..1
* qualification[labDiagnosticianCode].code.coding.system = $medical-profession
* qualification[labDiagnosticianCode].code.coding.code = #DLAB

* qualification[pharmacyTechnicianCode] ^short = "Profession: pharmacy technician"
* qualification[pharmacyTechnicianCode] ^definition = "Qualification to practise the medical profession of pharmacy technician."
* qualification[pharmacyTechnicianCode] insert PLTranslation([[Zawód: technik farmaceutyczny]], [[Kwalifikacja do wykonywania zawodu medycznego technika farmaceutycznego.]])
* qualification[pharmacyTechnicianCode].code.coding.system = $medical-profession
* qualification[pharmacyTechnicianCode].code.coding.code = #TFARM

* qualification[specialty] ^short = "Medical specialty"
* qualification[specialty] ^definition = "Medical specialty held by the health professional."
* qualification[specialty] insert PLTranslation([[Specjalność medyczna]], [[Specjalność medyczna posiadana przez pracownika medycznego.]])
* qualification[specialty].identifier 0..0
* qualification[specialty].identifier ^short = "Not used for specialties"
* qualification[specialty].identifier ^definition = "Not used, as a medical specialty is not identified by a separate number in this profile."
* qualification[specialty].identifier insert PLTranslation([[Nieużywany dla specjalności]], [[Nieużywany, ponieważ specjalność medyczna nie jest w tym profilu identyfikowana odrębnym numerem.]])
* qualification[specialty].code.coding.system = $practitioner-specialty
* qualification[specialty].code.coding.code 1..1
