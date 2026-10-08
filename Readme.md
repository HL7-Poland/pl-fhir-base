# HL7 Poland FHIR Base IG

## Languages

The IG is authored in Polish (`pl`) and also published in English (`en`).
The IG Publisher writes each language to its own folder (`output/pl/`, `output/en/`).

- `sushi-config.yaml`: `language`, `i18n-default-lang`, `i18n-lang` and `translation-sources` parameters
- `ig-template-pl/`: based on `fhir2.base.template` (the multi-language HL7 base template); Polish template strings are in `ig-template-pl/translations/*-pl.po`
- `input/translations/en/`: English translations
  - `pagecontent/*.md`: English versions of the pages in `input/pagecontent` (same file names)
  - `includes/menu.xml`: English menu (Polish menu is in `input/includes/menu.xml`)
  - `[ResourceType]-[id].po`: translations of resource texts (titles, descriptions, element definitions, code displays, page titles)

To translate resources: run the build, copy the generated file from
`translations/en/po/` (not committed) to `input/translations/en/`, fill in
the `msgstr` values and rebuild. Existing translations are kept when the
files are regenerated.
