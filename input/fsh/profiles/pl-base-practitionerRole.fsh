Profile: PLBasePractitionerRole
Parent: PractitionerRoleEu
Id: pl-base-practitionerRole
Title: "PractitionerRole (PL Base)"
Description: "Professional role of a health professional performed in a medical professional practice or in an organisational cell of a medical entity."
* ^version = "0.2.0"
* insert PLDescriptionTranslation([[Rola zawodowa pracownika medycznego pełniona w medycznej praktyce zawodowej lub w komórce organizacyjnej podmiotu leczniczego.]])

* . ^short = "Professional role of a health professional"
* . ^definition = "Professional role of a health professional, i.e. the medical profession and specialty in which the health professional provides services in a given organisation."
* . insert PLTranslation([[Rola zawodowa pracownika medycznego]], [[Rola zawodowa pracownika medycznego, czyli zawód medyczny i specjalność, w ramach których pracownik medyczny udziela świadczeń w danej organizacji.]])

* extension contains
  PractitionerRoleReimbursementContractIdentifier named reimbursementContractIdentifier 0..1
* extension[reimbursementContractIdentifier] ^short = "Reimbursement contract identifier"
* extension[reimbursementContractIdentifier] ^definition = "Identifier of the contract for the provision of healthcare services financed from public funds (e.g. a contract with the National Health Fund, NFZ), under which the health professional performs the role."
* extension[reimbursementContractIdentifier] insert PLTranslation([[Identyfikator umowy refundacyjnej]], [[Identyfikator umowy o udzielanie świadczeń opieki zdrowotnej finansowanych ze środków publicznych (np. umowy z Narodowym Funduszem Zdrowia, NFZ), w ramach której pracownik medyczny pełni rolę.]])

* identifier 1..*
* identifier ^short = "Identifiers of the health professional in the role"
* identifier ^definition = "Identifiers of the health professional performing the role, in particular professional licence numbers (NPWZ) from the registers of the relevant professional self-governments."
* identifier insert PLTranslation([[Identyfikatory pracownika medycznego w roli]], [[Identyfikatory pracownika medycznego pełniącego rolę, w szczególności numery prawa wykonywania zawodu (NPWZ) z rejestrów właściwych samorządów zawodowych.]])
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

* practitioner 1..1
* practitioner only Reference(PLBasePractitioner)
* practitioner ^short = "Health professional performing the role"
* practitioner ^definition = "Reference to the health professional who performs the role."
* practitioner insert PLTranslation([[Pracownik medyczny pełniący rolę]], [[Odwołanie do pracownika medycznego, który pełni rolę.]])

* organization 1..1
* organization only Reference(PLBaseMedicalPractice or PLBaseMedicalEntityCell)
* organization ^short = "Medical practice or medical entity organisational cell where the role is performed"
* organization ^definition = "Reference to the medical professional practice or the medical entity organisational cell of a medical entity in which the health professional performs the role."
* organization insert PLTranslation([[Praktyka zawodowa lub komórka organizacyjna podmiotu leczniczego, w której pełniona jest rola]], [[Odwołanie do medycznej praktyki zawodowej albo komórki organizacyjnej podmiotu leczniczego, w której pracownik medyczny pełni rolę.]])

* code 1..1
* code from PLMedicalProfessionVS
* code ^short = "Medical profession practised in the role"
* code ^definition = "Medical profession practised by the health professional in this role, coded from the medical professions value set."
* code insert PLTranslation([[Zawód medyczny wykonywany w roli]], [[Zawód medyczny wykonywany przez pracownika medycznego w tej roli, zakodowany wartością ze zbioru zawodów medycznych.]])

* specialty from PLPractitionerSpecialtyVS
* specialty ^short = "Medical specialty in the role"
* specialty ^definition = "Medical specialty in which the health professional performs the role, coded from the medical specialties value set."
* specialty insert PLTranslation([[Specjalność medyczna w roli]], [[Specjalność medyczna, w ramach której pracownik medyczny pełni rolę, zakodowana wartością ze zbioru specjalności medycznych.]])
