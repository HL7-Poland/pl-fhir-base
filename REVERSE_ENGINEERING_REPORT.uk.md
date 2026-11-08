# REVERSE_ENGINEERING_REPORT.uk.md (Українська)

Примітка: переклад технічний, виконаний з автоматичною допомогою; рекомендується перегляд rodsnym мовцем перед використанням як нормативного довідника.

## Цільовий репозиторій
- **Назва:** pl-fhir-base
- **URL:** https://github.com/HL7-Poland/pl-fhir-base
- **Гał diff гałку (upstream):** main-r5
- **Базовий коміт для аналізу:** 6398d74 (Changed IG template version to 0.2.3)
- **Версія проєкту:** 0.2.0 (sushi-config.yaml), статус active
- **Локальна робоча тека:** C:\Users\User\audit-repos\pl-fhir-base
- **Тека аудиту:** C:\Users\User\audit-repos\audit-work
- **Дата/час аудиту:** 2026-11-08 (місний час)
- **Середовище:** Windows, PowerShell 5.1, Git 2.49.0, Python 3.12.14 (без SUSHI/IG Publisher встановлених)

---

## А. Загальний діагноз

### Виявлена архітектура
Польський FHIR R5 Implementation Guide (HL7 FHIR PL Base), побудований з SUSHI. Польська національна базова специфікація для стандарту HL7 FHIR, включаючи профілі, розширення, термінології, логічні моделі та мапінги.

Структура:
- `sushi-config.yaml` — конфігурація IG (id hl7.fhir.pl.base.r5, canonical http://hl7.org.pl/fhir/ig/pl-base, версія 0.2.0, статус active, releaseLabel ci-build, fhirVersion 5.0.0, мова pl, i18n-default-lang pl, i18n-lang en, translation-sources input/translations/en, залежності xtehr.eu.ehds.models 1.0.0 та hl7.fhir.eu.base-r5 2.0.1)
- `ig.ini` — вказує на згенерований ImplementationGuide у fsh-generated/resources/, шаблон hl7.fhir.pl.template#0.2.3
- `input/fsh/` — файли FSH организовані в підпапках: aliases.fsh, invariants.fsh, rulesets.fsh, та підпапки extensions/, mapping/, models/, profiles/, terminologies/
- `input/pagecontent/` — сторінки Markdown (index, logical, translationinfo)
- `input/translations/en/` — англійські переклади (pagecontent, includes/menu.xml, файли .po ресурсів)
- `input/ig-template-pl/` — кастомний шаблон на основі fhir2.base.template, з польськими рядками перекладу (*-pl.po)
- `input/images/` — зображення
- `input/TODO_List.md` — список завдань (завдяки позначені Done)
- `input/ignoreWarnings.txt` — майже порожній (лише заголовок)
- Скрипти збирання: _build.bat/.sh, _genonce.bat/.sh, _gencontinuous.bat/.sh, _updatePublisher.bat/.sh
- `Readme.md` — документація (мови, переклад)
- `Requirements-fromNarrative.json` — вимоги, витягнуті з narrativa
- `.gitignore` — ігнорує /fsh-generated, /input-cache, /output, /temp, /template, /translations, /resources, /backlog
- Файл LICENSE не знайдено в корені
- Немає .github (немає CI/CD)

### Технології та залежності
- SUSHI (FHIR Shorthand)
- FHIR R5 (fhirVersion: 5.0.0)
- Залежності: xtehr.eu.ehds.models 1.0.0, hl7.fhir.eu.base-r5 2.0.1
- Шаблон: hl7.fhir.pl.template#0.2.3
- IG Publisher (завантажується через скрипти _build, не версійований у Git)
- Java (для запуску publisher.jar)
- Ліцензія: не оголошена (`license: CC0-1.0` закоментовано у sushi-config.yaml:16)

### Стан підтримки
- Активний: версія 0.2.0, статус active, releaseLabel ci-build
- Останній коміт: 6398d74 (Changed IG template version to 0.2.3)
- Активна історія (оновлено версію шаблону, додано логічні моделі, профілі уточнені та гармонізовані з EU Base/Core IG)
- Немає CI/CD (немає .github/workflows)
- Немає автоматизованих тестів

### Існуючі механізми тестування
- Немає автоматизованих тестів коду для файлів FSH
- Валідація через IG Publisher (зовнішній, можна запустити вручну через скрипти _build)
- ignoreWarnings.txt майже порожній (лише заголовок)

### Обмеження дослідження
- SUSHI та IG Publisher не встановлені → неможливо виконати збирання IG локально
- Аналіз засновано на статичному огляді конфігурації YAML, файлів FSH, скриптів збирання та документації

---

## Б. Виявлені проблеми

| ID | Місцезнаходження | Проблема | Статус | Середність | Докази |
|----|------------------|----------|--------|------------|----------|
| REA-PLBASE-001 | Відсутнє | Немає файлу LICENSE в корені репозиторію (`license: CC0-1.0` закоментовано у sushi-config.yaml:16) | ПІДТВЕРДЖЕНО (статично) | P2 | sushi-config.yaml рядок 16: `# license: CC0-1.0`; список файлів кореня не містить LICENSE |
| REA-PLBASE-002 | Відсутнє | Немає CI/CD (немає .github/workflows) | ПІДТВЕРДЖЕНО (статично) | P3 | Немає каталогу .github у репозиторії |
| REA-PLBASE-003 | Відсутнє | Немає автоматизованих тестів для файлів FSH | ПІДТВЕРДЖЕНО (статично) | P3 | Немає файлів тестів у репозиторії |
| REA-PLBASE-004 | `_build.bat:51,66`, `_updatePublisher.bat` | Скрипти збирання роблять мережевий виклик (curl до api.github.com) для отримання останньої версії publisher | ПІДТВЕРДЖЕНО (статично) | P3 | _build.bat рядок 51: `curl -s https://api.github.com/repos/HL7/fhir-ig-publisher/releases/latest` |
| REA-PLBASE-005 | `input/TODO_List.md` | Список завдань із виконаними та невиконаними пунктами, але не пов'язаний з GitHub Issues | ГІПОТЕЗА | P3 | input/TODO_List.md (завдання позначені Done, без посилання на проблеми) |

### Проблеми P0 або P1 не підтверджені
Жодної критичної проблеми не підтверджено.

---

## В. Повторні проблеми
Відкриті проблеми GitHub (по-польськи):
- #26: "Opracować profil dla CodeSystemu i dla ValueSetu" (ВІДКРИТО)
- #24: "Zbadać dostępność żródła słownika ICD-10 dla ICD-10-PL" (ВІДКРИТО)
- #23: "Opracować specyfikację PL Scheduling" (ВІДКРИТО)
- #22: "Zaprojektować rozszerzenie FHIR dla wymagalności skierowania" (ВІДКРИТО)
- #21: "Address: Współrzędne geograficzne" (ВІДКРИТО)
- #20: "ServiceRequest: powiązanie z eSkierowaniem" (ВІДКРИТО)
- #19: "Patient: Brak obsługi innych identyfikatorów" (ВІДКРИТО)
- #18: "Coverage: Brakuje danych" (ВІДКРИТО)
- #17: "Contract: Numer umowy i inne dane z UMX" (ВІДКРИТО)
- #16: "Condition: Inne słowniki niż ICD-10-PL" (ВІДКРИТО)
- #15: "Composition: Podpis wystawcy dokumentu" (ВІДКРИТО)
- #14: "ActivityDefinition: Dodanie możliwości kodowania SNOMED CT" (ВІДКРИТО)
- #13: "ActivityDefinition: Powiązanie z procedurą rozliczeniową" (ВІДКРИТО)
- #8: "Profil ActivityDefinition:usługa katalogowa Title/Subtitle" (ВІДКРИТО)
- #6: "Mapowanie PL Base na PIK HL7 CDA" (ВІДКРИТО)
- #5: "Skierowanie, zlecenie, wynik" (ВІДКРИТО)
- #4: "Organization vs Location" (ВІДКРИТО)

Немає відкритих або закритих PR. Багато відкритих проблем вказує на значний беклог функцій для реалізації.

---

## Г. Недокументовані помилки
REA-PLBASE-001 до REA-PLBASE-005 не були задокументовані в проблемах або PR.

---

## Д. Продуктивність
Немає відповідних можливостей продуктивності у FHIR IG (збирання виконується зовнішньо через IG Publisher).

---

## Е. Технічні вдосконалення
1. Додати файл LICENSE в корінь (REA-PLBASE-001)
2. Налаштувати CI/CD (GitHub Actions) для автоматизованого збирання IG (REA-PLBASE-002)
3. Додати автоматизовані тести валідації FSH/IG (REA-PLBASE-003)
4. Документувати мережевий виклик до api.github.com у скриптах збирання (REA-PLBASE-004)
5. Пов'язати TODO_List.md з GitHub Issues для відстеження (REA-PLBASE-005)
6. Розкоментувати та налаштувати ліцензію у sushi-config.yaml

---

## Є. План виконання
Усі вдосконалення є незалежними і мають низький ризик, але немає складного вихідного коду для виправлення. Це вдосконалення інfrakstrukturi збирання та документації.

---

## Ї. Очікуваний результат
IG з оголошеною ліцензією, автоматизованим CI/CD, тестами валідації, документованим мережевим викликом, TODO пов'язаним з проблемами.

---

## Аналіз програмного засіба та загроз (статичний)
**Результат:** Жодного показника не виявлено статичниманалiзом, що було проведено.
- Лише конфігураційні файли (YAML, INI, FSH, MD, JSON), скрипти збирання (BAT, SH) та зображення
- Скрипти збирання роблять curl до api.github.com (офіційне API GitHub для отримання версії publisher) — легітивний мережевий виклик
- Немає облікових даних, ключів, токенів або паролів, вбудованих у код
- Немає підозрілих команд оболонки, subprocess, exec, eval, стійкості, обфускації або екстракції даних
- Не заявляється, що проєкт є безшкідним.

---

## Обов'язкові питання на завершення
1. **Які критичні помилки підтверджено?** Жодної P0/P1.
2. **Які повторні проблеми ще не вирішені?** Багато відкритих проблем по-польськи (функції для реалізації), немає PR — вказує на беклог без відстеження виправлень через PR.
3. **Які важливі помилки не були задокументовані?** Відсутність LICENSE, немає CI/CD, немає автоматизованих тестів, виклик api.github.com, TODO_List.md не пов'язаний з проблемами.
4. **Які можливості продуктивності виявлено?** Жодних відповідних.
5. **Які вдосконалення безпеки та надійності обґрунтовані?** Додати LICENSE, додати CI/CD, додати тести, документувати мережевий виклик, пов'язати TODO з проблемами.
6. **Які виправлення можна зробити швидко?** Додати LICENSE, розкоментувати ліцензію у sushi-config.yaml, документувати мережевий виклик.
7. **Які є три внески з найбільшою технічною цінністю?** (а) додати LICENSE, (б) настроїти CI/CD для збирання IG, (в) додати тести валідації FSH.
8. **Які виправлення слід уникати через відсутність доказів?** Жодних — усі є добре обґрунтованими вдосконаленнями інfrakstrukturi збирання.
9. **Які зміни ви рекомендуєте реалізувати першими?** Додати LICENSE та настроїти CI/CD (низький ризик, високий вплив на відповідність та відтворюваність).
