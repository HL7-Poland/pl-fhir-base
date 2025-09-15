// PLBasePatient profile invariants

Invariant: PeselIdentifier
Description: "Weryfikacja składni identyfikatora pacjenta PESEL w postaci 11 cyfr"
Severity: #error
Expression: "value.matches('^[0-9]{11}$')"