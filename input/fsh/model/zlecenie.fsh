Logical: Zlecenie
Parent: Base
Id: pl-lab-zlecenie
Title: "Zlecenie"
Description: "Zlecenie usługi medycznej"
Characteristics: #can-be-target
* identyfikator 1..1 Identifier "Identyfikator zlecenia" "Identyfikator zlecenia usługi medycznej"
* pacjent 1..1 Reference(Pacjent) "Dane pacjenta" "Dane pacjenta"
