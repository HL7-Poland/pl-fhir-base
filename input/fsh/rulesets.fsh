// FIX: the translation language code must be "pl", the same code as the IG language (sushi-config: language: pl,
// i18n-default-lang: pl). With "pl-PL" the IG Publisher did not match the translations to the Polish pages, so profiles
// showed only the English text when the Polish language was selected (verified with a test IG: "pl" works, "pl-PL" does not).

RuleSet: PLTranslation(short, definition)
* ^short.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^short.extension[=].extension[+].url = "lang"
* ^short.extension[=].extension[=].valueCode = #pl
* ^short.extension[=].extension[+].url = "content"
* ^short.extension[=].extension[=].valueString = "{short}"
* ^definition.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^definition.extension[=].extension[+].url = "lang"
* ^definition.extension[=].extension[=].valueCode = #pl
* ^definition.extension[=].extension[+].url = "content"
* ^definition.extension[=].extension[=].valueMarkdown = "{definition}"

RuleSet: PLShortTranslation(short)
* ^short.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^short.extension[=].extension[+].url = "lang"
* ^short.extension[=].extension[=].valueCode = #pl
* ^short.extension[=].extension[+].url = "content"
* ^short.extension[=].extension[=].valueString = "{short}"

RuleSet: PLDefinitionTranslation(definition)
* ^definition.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^definition.extension[=].extension[+].url = "lang"
* ^definition.extension[=].extension[=].valueCode = #pl
* ^definition.extension[=].extension[+].url = "content"
* ^definition.extension[=].extension[=].valueMarkdown = "{definition}"

RuleSet: PLDescriptionTranslation(description)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #pl
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueMarkdown = "{description}"

RuleSet: PLSlicingDescriptionTranslation(description)
* ^slicing.description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^slicing.description.extension[=].extension[+].url = "lang"
* ^slicing.description.extension[=].extension[=].valueCode = #pl
* ^slicing.description.extension[=].extension[+].url = "content"
* ^slicing.description.extension[=].extension[=].valueString = "{description}"

RuleSet: PLHumanTranslation(human)
* human.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* human.extension[=].extension[+].url = "lang"
* human.extension[=].extension[=].valueCode = #pl
* human.extension[=].extension[+].url = "content"
* human.extension[=].extension[=].valueString = "{human}"
