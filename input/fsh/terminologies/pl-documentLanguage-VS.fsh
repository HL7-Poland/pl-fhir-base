ValueSet: PLDocumentLanguageVS
Id:	pl-documentLanguage-VS
Title: "Język dokumentu medycznego (Language)"
Description: "Dopuszczalny język dokumentu medycznego wystawianego w Polsce"
* $bcp-47#en-GB "British English"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "angielski (UK)"
* $bcp-47#en-US "American English"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "angielski (US)"
* $bcp-47#pl-PL "Polish"
  * ^designation[0].language = #pl-PL
  * ^designation[=].value = "polski"