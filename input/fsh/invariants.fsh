// PLBasePatient profile invariants

Invariant: PeselIdentifier
Description: "Weryfikacja składni identyfikatora pacjenta PESEL w postaci 11 cyfr"
Severity: #error
Expression: "value.matches('^[0-9]{11}$')"

// PLBaseMedicalEntity / PLBaseMedicalEntityFacility profile invariants

Invariant: NipIdentifier
Description: "NIP number must consist of 10 digits with a valid check digit"
Severity: #error
Expression: "$this.matches('^[0-9]{10}$') and (($this.substring(0, 1).toInteger() * 6 + $this.substring(1, 1).toInteger() * 5 + $this.substring(2, 1).toInteger() * 7 + $this.substring(3, 1).toInteger() * 2 + $this.substring(4, 1).toInteger() * 3 + $this.substring(5, 1).toInteger() * 4 + $this.substring(6, 1).toInteger() * 5 + $this.substring(7, 1).toInteger() * 6 + $this.substring(8, 1).toInteger() * 7) mod 11) = $this.substring(9, 1).toInteger()"
* insert PLHumanTranslation([[Numer NIP musi składać się z 10 cyfr z poprawną cyfrą kontrolną]])

Invariant: Regon9Identifier
Description: "9-digit REGON number must consist of 9 digits with a valid check digit"
Severity: #error
Expression: "$this.matches('^[0-9]{9}$') and (($this.substring(0, 1).toInteger() * 8 + $this.substring(1, 1).toInteger() * 9 + $this.substring(2, 1).toInteger() * 2 + $this.substring(3, 1).toInteger() * 3 + $this.substring(4, 1).toInteger() * 4 + $this.substring(5, 1).toInteger() * 5 + $this.substring(6, 1).toInteger() * 6 + $this.substring(7, 1).toInteger() * 7) mod 11) mod 10 = $this.substring(8, 1).toInteger()"
* insert PLHumanTranslation([[9-znakowy numer REGON musi składać się z 9 cyfr z poprawną cyfrą kontrolną]])

Invariant: Regon14Identifier
Description: "14-digit REGON number must consist of 14 digits with a valid check digit"
Severity: #error
Expression: "$this.matches('^[0-9]{14}$') and (($this.substring(0, 1).toInteger() * 2 + $this.substring(1, 1).toInteger() * 4 + $this.substring(2, 1).toInteger() * 8 + $this.substring(3, 1).toInteger() * 5 + $this.substring(5, 1).toInteger() * 9 + $this.substring(6, 1).toInteger() * 7 + $this.substring(7, 1).toInteger() * 3 + $this.substring(8, 1).toInteger() * 6 + $this.substring(9, 1).toInteger() * 1 + $this.substring(10, 1).toInteger() * 2 + $this.substring(11, 1).toInteger() * 4 + $this.substring(12, 1).toInteger() * 8) mod 11) mod 10 = $this.substring(13, 1).toInteger()"
* insert PLHumanTranslation([[14-znakowy numer REGON musi składać się z 14 cyfr z poprawną cyfrą kontrolną]])
