# REVERSE_ENGINEERING_REPORT.en.md

## Target repository
- **Name:** pl-fhir-base
- **URL:** https://github.com/HL7-Poland/pl-fhir-base
- **Default branch (upstream):** main-r5
- **Base commit analyzed:** 6398d74 (Changed IG template version to 0.2.3)
- **Project version:** 0.2.0 (sushi-config.yaml), status active
- **Local working folder:** C:\Users\User\audit-repos\pl-fhir-base
- **Audit folder:** C:\Users\User\audit-repos\audit-work
- **Audit date/time:** 2026-11-08 (local time)
- **Environment:** Windows, PowerShell 5.1, Git 2.49.0, Python 3.12.14 (without SUSHI/IG Publisher installed)

---

## A. General diagnosis

### Architecture identified
Polish FHIR R5 Implementation Guide (HL7 FHIR PL Base), built with SUSHI. Polish national base specification for the HL7 FHIR standard, including profiles, extensions, terminologies, logical models and mappings.

Structure:
- `sushi-config.yaml` — IG configuration (id hl7.fhir.pl.base.r5, canonical http://hl7.org.pl/fhir/ig/pl-base, version 0.2.0, status active, releaseLabel ci-build, fhirVersion 5.0.0, language pl, i18n-default-lang pl, i18n-lang en, translation-sources input/translations/en, dependencies xtehr.eu.ehds.models 1.0.0 and hl7.fhir.eu.base-r5 2.0.1)
- `ig.ini` — points to generated ImplementationGuide in fsh-generated/resources/, template hl7.fhir.pl.template#0.2.3
- `input/fsh/` — FSH files organized in subfolders: aliases.fsh, invariants.fsh, rulesets.fsh, and subfolders extensions/, mapping/, models/, profiles/, terminologies/
- `input/pagecontent/` — Markdown pages (index, logical, translationinfo)
- `input/translations/en/` — English translations (pagecontent, includes/menu.xml, resource .po files)
- `input/ig-template-pl/` — custom template based on fhir2.base.template, with Polish translation strings (*-pl.po)
- `input/images/` — images
- `input/TODO_List.md` — task list (mostly marked as Done)
- `input/ignoreWarnings.txt` — nearly empty (header only)
- Build scripts: _build.bat/.sh, _genonce.bat/.sh, _gencontinuous.bat/.sh, _updatePublisher.bat/.sh
- `Readme.md` — documentation (languages, translation)
- `Requirements-fromNarrative.json` — requirements extracted from narrative
- `.gitignore` — ignores /fsh-generated, /input-cache, /output, /temp, /template, /translations, /resources, /backlog
- No LICENSE file at root
- No .github (no CI/CD configured)

### Technologies and dependencies
- SUSHI (FHIR Shorthand)
- FHIR R5 (fhirVersion: 5.0.0)
- Dependencies: xtehr.eu.ehds.models 1.0.0, hl7.fhir.eu.base-r5 2.0.1
- Template: hl7.fhir.pl.template#0.2.3
- IG Publisher (downloaded via _build scripts, not versioned in Git)
- Java (to run publisher.jar)
- License: not declared (`license: CC0-1.0` commented out in sushi-config.yaml:16)

### Maintenance status
- Active: version 0.2.0, status active, releaseLabel ci-build
- Last commit: 6398d74 (Changed IG template version to 0.2.3)
- Active history (template version updated, logical models added, profiles refined and harmonized with EU Base/Core IG)
- No CI/CD configured (no .github/workflows)
- No automated tests visible

### Existing test mechanisms
- No automated code tests for FSH files
- Validation via IG Publisher (external, would run manually via _build scripts)
- ignoreWarnings.txt nearly empty (header only)

### Investigation limitations
- SUSHI and IG Publisher not installed → impossible to execute IG build locally
- Analysis based on static inspection of YAML configuration, FSH files, build scripts and documentation

---

## B. Problems found

| ID | Location | Problem | Status | Severity | Evidence |
|----|----------|---------|--------|----------|-----------|
| REA-PLBASE-001 | Absent | No LICENSE file at repository root (`license: CC0-1.0` commented out in sushi-config.yaml:16) | CONFIRMED (static) | P2 | sushi-config.yaml line 16: `# license: CC0-1.0`; root directory listing does not contain LICENSE |
| REA-PLBASE-002 | Absent | No CI/CD configured (no .github/workflows) | CONFIRMED (static) | P3 | No .github directory in repository |
| REA-PLBASE-003 | Absent | No automated tests for FSH files | CONFIRMED (static) | P3 | No test files found in repository |
| REA-PLBASE-004 | `_build.bat:51,66`, `_updatePublisher.bat` | Build scripts make network call (curl to api.github.com) to get latest publisher version | CONFIRMED (static) | P3 | _build.bat line 51: `curl -s https://api.github.com/repos/HL7/fhir-ig-publisher/releases/latest` |
| REA-PLBASE-005 | `input/TODO_List.md` | Task list with pending and completed items, but not linked to GitHub Issues | HYPOTHESIS | P3 | input/TODO_List.md (tasks marked Done, no link to issues) |

### No P0 or P1 problems
No critical problem confirmed.

---

## C. Recurring problems
Open GitHub issues (in Polish):
- #26: "Opracować profil dla CodeSystemu i dla ValueSetu" (OPEN)
- #24: "Zbadać dostępność żródła słownika ICD-10 dla ICD-10-PL" (OPEN)
- #23: "Opracować specyfikację PL Scheduling" (OPEN)
- #22: "Zaprojektować rozszerzenie FHIR dla wymagalności skierowania" (OPEN)
- #21: "Address: Współrzędne geograficzne" (OPEN)
- #20: "ServiceRequest: powiązanie z eSkierowaniem" (OPEN)
- #19: "Patient: Brak obsługi innych identyfikatorów" (OPEN)
- #18: "Coverage: Brakuje danych" (OPEN)
- #17: "Contract: Numer umowy i inne dane z UMX" (OPEN)
- #16: "Condition: Inne słowniki niż ICD-10-PL" (OPEN)
- #15: "Composition: Podpis wystawcy dokumentu" (OPEN)
- #14: "ActivityDefinition: Dodanie możliwości kodowania SNOMED CT" (OPEN)
- #13: "ActivityDefinition: Powiązanie z procedurą rozliczeniową" (OPEN)
- #8: "Profil ActivityDefinition:usługa katalogowa Title/Subtitle" (OPEN)
- #6: "Mapowanie PL Base na PIK HL7 CDA" (OPEN)
- #5: "Skierowanie, zlecenie, wynik" (OPEN)
- #4: "Organization vs Location" (OPEN)

No open or closed PRs. Many open issues indicate a significant backlog of functionality to implement.

---

## D. Undocumented errors
REA-PLBASE-001 to REA-PLBASE-005 were not documented in issues/PRs.

---

## E. Performance
No relevant performance opportunities in a FHIR IG (build executed externally via IG Publisher).

---

## F. Technical improvements
1. Add LICENSE file at root (REA-PLBASE-001)
2. Configure CI/CD (GitHub Actions) for automated IG build (REA-PLBASE-002)
3. Add automated FSH/IG validation tests (REA-PLBASE-003)
4. Document network call to api.github.com in build scripts (REA-PLBASE-004)
5. Link TODO_List.md to GitHub Issues for tracking (REA-PLBASE-005)
6. Uncomment and configure license in sushi-config.yaml

---

## G. Execution plan
All improvements are independent and low risk, but there is no complex source code to fix. These are build infrastructure and documentation improvements.

---

## H. Expected result
IG with declared license, automated CI/CD, validation tests, documented network call, TODO linked to issues.

---

## Malware and threat analysis (static)
**Result:** No indicator identified by the static analysis performed.
- Only configuration files (YAML, INI, FSH, MD, JSON), build scripts (BAT, SH) and images
- Build scripts make curl to api.github.com (official GitHub API to get publisher version) — legitimate network call
- No credentials, keys, tokens or passwords embedded
- No suspicious shell commands, subprocess, exec, eval, persistence, obfuscation or data exfiltration
- It is not stated that the project is free of malware.

---

## Mandatory final questions
1. **Which critical bugs were confirmed?** None P0/P1.
2. **Which recurring problems have developers not yet resolved?** Many open issues in Polish (functionality to implement), no PRs — indicates backlog without PR-based fix tracking.
3. **Which important errors were not documented?** Absence of LICENSE, no CI/CD, no automated tests, network call to api.github.com, TODO_List.md not linked to issues.
4. **Which performance opportunities were found?** None relevant.
5. **Which security and reliability improvements are justifiable?** Add LICENSE, add CI/CD, add tests, document network call, link TODO to issues.
6. **Which fixes can be made quickly?** Add LICENSE, uncomment license in sushi-config.yaml, document network call.
7. **Which are the three contributions with highest technical value?** (a) Add LICENSE, (b) Configure CI/CD for IG build, (c) Add FSH validation tests.
8. **Which fixes should be avoided for lack of evidence?** None — all are well-founded build infrastructure improvements.
9. **Which modifications do you recommend implementing first?** Add LICENSE and configure CI/CD (low risk, high impact on compliance and reproducibility).
