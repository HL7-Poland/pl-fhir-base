# CORRECTIONS.en.md

## Target repository
- **Name:** pl-fhir-base
- **URL:** https://github.com/HL7-Poland/pl-fhir-base
- **Default branch (upstream):** main-r5
- **Base commit analyzed:** 6398d74
- **Date of preparation:** 2026-11-08 (local time)
- **Author:** admeduardovieira (Kilo, REA 6.7.0)

---

## Corrections implemented

No code corrections were implemented, as the repository is a FHIR IG/SUSHI project with configuration files and FSH definitions, not executable source code. The improvements identified are build infrastructure and documentation.

## Improvements identified (not implemented)

### REA-PLBASE-001 — Missing LICENSE file
**Problem:** No LICENSE file at repository root (`license: CC0-1.0` commented out in sushi-config.yaml).
**Proposed correction:** Add LICENSE file and uncomment/configure the license in sushi-config.yaml.
**Files:** LICENSE (new), sushi-config.yaml

### REA-PLBASE-002 — No CI/CD
**Problem:** No GitHub Actions workflow configured.
**Proposed correction:** Add .github/workflows/ for automated IG build via IG Publisher.
**Files:** .github/workflows/*.yml (new)

### REA-PLBASE-003 — No automated tests
**Problem:** No validation tests for FSH files or generated IG.
**Proposed correction:** Add validation tests for FSH files and generated IG.
**Files:** new test files

### REA-PLBASE-004 — Network call to api.github.com in build scripts
**Problem:** _build.bat makes curl to GitHub API to get latest publisher version.
**Proposed correction:** Document this behavior in README.
**Files:** README.md, _build.bat

### REA-PLBASE-005 — TODO_List.md not linked to issues
**Problem:** Task list in input/TODO_List.md not linked to GitHub Issues.
**Proposed correction:** Link TODO_List.md tasks to GitHub Issues for proper tracking.
**Files:** input/TODO_List.md, GitHub Issues

---

*This document records build infrastructure improvements identified, without source code changes.*
