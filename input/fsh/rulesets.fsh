RuleSet: PLTranslation(short, definition)
* ^short.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^short.extension[=].extension[+].url = "lang"
* ^short.extension[=].extension[=].valueCode = #pl-PL
* ^short.extension[=].extension[+].url = "content"
* ^short.extension[=].extension[=].valueString = "{short}"
* ^definition.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^definition.extension[=].extension[+].url = "lang"
* ^definition.extension[=].extension[=].valueCode = #pl-PL
* ^definition.extension[=].extension[+].url = "content"
* ^definition.extension[=].extension[=].valueMarkdown = "{definition}"

RuleSet: PLShortTranslation(short)
* ^short.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^short.extension[=].extension[+].url = "lang"
* ^short.extension[=].extension[=].valueCode = #pl-PL
* ^short.extension[=].extension[+].url = "content"
* ^short.extension[=].extension[=].valueString = "{short}"

RuleSet: PLDefinitionTranslation(definition)
* ^definition.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^definition.extension[=].extension[+].url = "lang"
* ^definition.extension[=].extension[=].valueCode = #pl-PL
* ^definition.extension[=].extension[+].url = "content"
* ^definition.extension[=].extension[=].valueMarkdown = "{definition}"

RuleSet: PLDescriptionTranslation(description)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #pl-PL
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueMarkdown = "{description}"

RuleSet: PLSlicingDescriptionTranslation(description)
* ^slicing.description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^slicing.description.extension[=].extension[+].url = "lang"
* ^slicing.description.extension[=].extension[=].valueCode = #pl-PL
* ^slicing.description.extension[=].extension[+].url = "content"
* ^slicing.description.extension[=].extension[=].valueString = "{description}"

RuleSet: PLHumanTranslation(human)
* human.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* human.extension[=].extension[+].url = "lang"
* human.extension[=].extension[=].valueCode = #pl-PL
* human.extension[=].extension[+].url = "content"
* human.extension[=].extension[=].valueString = "{human}"
