# REVERSE_ENGINEERING_REPORT.md

## Repositório alvo
- **Nome:** pl-fhir-base
- **URL:** https://github.com/HL7-Poland/pl-fhir-base
- **Branch padrão (upstream):** main-r5
- **Commit-base analisado:** 6398d74 (Changed IG template version to 0.2.3)
- **Versão do projeto:** 0.2.0 (sushi-config.yaml), status active
- **Pasta de trabalho local:** C:\Users\User\audit-repos\pl-fhir-base
- **Pasta de auditoria:** C:\Users\User\audit-repos\audit-work
- **Data/horário da auditoria:** 2026-11-08 (horário local)
- **Ambiente:** Windows, PowerShell 5.1, Git 2.49.0, Python 3.12.14 (sem SUSHI/IG Publisher instalados)

---

## A. Diagnóstico geral

### Arquitetura identificada
Implementation Guide (IG) FHIR R5 polonês (HL7 FHIR PL Base), construído com SUSHI. Especificação nacional base da Polônia para o padrão HL7 FHIR, incluindo profiles, extensões, terminologias, modelos lógicos e mapeamentos.

Estrutura:
- `sushi-config.yaml` — configuração do IG (id hl7.fhir.pl.base.r5, canonical http://hl7.org.pl/fhir/ig/pl-base, versão 0.2.0, status active, releaseLabel ci-build, fhirVersion 5.0.0, language pl, i18n-default-lang pl, i18n-lang en, translation-sources input/translations/en, dependências xtehr.eu.ehds.models 1.0.0 e hl7.fhir.eu.base-r5 2.0.1)
- `ig.ini` — aponta para o ImplementationGuide gerado em fsh-generated/resources/, template hl7.fhir.pl.template#0.2.3
- `input/fsh/` — arquivos FSH organizados em subpastas: aliases.fsh, invariants.fsh, rulesets.fsh, e pastas extensions/, mapping/, models/, profiles/, terminologies/
- `input/pagecontent/` — páginas Markdown (index, logical, translationinfo)
- `input/translations/en/` — traduções para inglês (pagecontent, includes/menu.xml, arquivos .po de recursos)
- `input/ig-template-pl/` — template customizado baseado em fhir2.base.template, com strings de tradução polonesa (*-pl.po)
- `input/images/` — imagens
- `input/TODO_List.md` — lista de tarefas (a maioria marcadas como Done)
- `input/ignoreWarnings.txt` — quase vazio (apenas cabeçalho)
- Scripts de build: _build.bat/.sh, _genonce.bat/.sh, _gencontinuous.bat/.sh, _updatePublisher.bat/.sh
- `Readme.md` — documentação (idiomas, tradução)
- `Requirements-fromNarrative.json` — requisitos extraídos de narrativa
- `.gitignore` — ignora /fsh-generated, /input-cache, /output, /temp, /template, /translations, /resources, /backlog
- Nenhum arquivo LICENSE na raiz
- Nenhum .github (sem CI/CD configurado)

### Tecnologias e dependências
- SUSHI (FHIR Shorthand)
- FHIR R5 (fhirVersion: 5.0.0)
- Dependências: xtehr.eu.ehds.models 1.0.0, hl7.fhir.eu.base-r5 2.0.1
- Template: hl7.fhir.pl.template#0.2.3
- IG Publisher (baixado via _build scripts, não versionado no Git)
- Java (para rodar publisher.jar)
- Licença: não declarada (linha `license: CC0-1.0` comentada no sushi-config.yaml:16)

### Estado de manutenção
- Ativo: versão 0.2.0, status active, releaseLabel ci-build
- Último commit: 6398d74 (Changed IG template version to 0.2.3)
- Histórico ativo (template version atualizado, logical models adicionados, profiles refinados, harmonizados com EU Base/Core IG)
- Nenhum CI/CD configurado (sem .github/workflows)
- Nenhum teste automatizado visível

### Mecanismos de testes existentes
- Nenhum teste automatizado de código FSH
- Validação via IG Publisher (externo, seria executado manualmente via _build scripts)
- ignoreWarnings.txt quase vazio (apenas cabeçalho)

### Limitações da investigação
- SUSHI e IG Publisher não instalados → impossível executar o build do IG localmente
- Análise baseada em inspeção estática de configuração YAML, arquivos FSH, scripts de build e documentação

---

## B. Problemas encontrados

| ID | Localização | Problema | Status | Severidade | Evidência |
|----|-------------|----------|--------|------------|-----------|
| REA-PLBASE-001 | Ausente | Nenhum arquivo LICENSE na raiz do repositório (linha `license: CC0-1.0` comentada no sushi-config.yaml:16) | CONFIRMADO (estática) | P2 | sushi-config.yaml linha 16: `# license: CC0-1.0`; listagem do diretório raiz não contém LICENSE |
| REA-PLBASE-002 | Ausente | Nenhum CI/CD configurado (sem .github/workflows) | CONFIRMADO (estática) | P3 | Nenhum diretório .github no repositório |
| REA-PLBASE-003 | Ausente | Nenhum teste automatizado de arquivos FSH | CONFIRMADO (estática) | P3 | Nenhum arquivo de teste encontrado no repositório |
| REA-PLBASE-004 | `_build.bat:51,66`, `_updatePublisher.bat` | Scripts de build fazem chamada de rede (curl para api.github.com) para obter versão mais recente do publisher | CONFIRMADO (estática) | P3 | _build.bat linha 51: `curl -s https://api.github.com/repos/HL7/fhir-ig-publisher/releases/latest` |
| REA-PLBASE-005 | `input/TODO_List.md` | Lista de tarefas pendentes e concluídas, mas sem rastreamento no GitHub Issues | HIPÓTESE | P3 | input/TODO_List.md (tarefas marcadas Done, sem vínculo com issues) |

### Sem problemas P0 ou P1
Nenhum problema crítico confirmado.

---

## C. Problemas recorrentes
Issues abertas no GitHub (em polonês):
- #26: "Opracować profil dla CodeSystemu i dla ValueSetu" (OPEN)
- #24: "Zbadać dostępność żródła słownika ICD-10 dla ICD-10-PL" (OPEN)
- #23: "Opracować specyfikację PL Scheduling" (OPEN)
- #22: "Zaprojektować rozszerzenie FHIR para wymagalności skierowania" (OPEN)
- #21: "Address: Współrzędne geograficzne" (OPEN)
- #20: "ServiceRequest: powiązanie z eSkierowaniem" (OPEN)
- #19: "Patient: Brak obsługi innych identyfikatorów" (OPEN)
- #18: "Coverage: Brakuje dados" (OPEN)
- #17: "Contract: Numer umowy i inne dane z UMX" (OPEN)
- #16: "Condition: Inne słowniki niż ICD-10-PL" (OPEN)
- #15: "Composition: Podpis wystawcy dokumentu" (OPEN)
- #14: "ActivityDefinition: Dodanie możliwości kodowania SNOMED CT" (OPEN)
- #13: "ActivityDefinition: Powiązanie z procedurą rozliczeniową" (OPEN)
- #8: "Profil ActivityDefinition:usługa katalogowa Title/Subtitle" (OPEN)
- #6: "Mapowanie PL Base na PIK HL7 CDA" (OPEN)
- #5: "Skierowanie, zlecenie, wynik" (OPEN)
- #4: "Organization vs Location" (OPEN)

Nenhum PR aberto ou fechado. Muitas issues abertas indicam backlog significativo de funcionalidades a serem implementadas.

---

## D. Erros não documentados
REA-PLBASE-001 a REA-PLBASE-005 não estavam documentados em issues/PRs.

---

## E. Performance
Não há oportunidades de performance relevantes em um IG FHIR (build executado externamente via IG Publisher).

---

## F. Melhorias técnicas
1. Adicionar arquivo LICENSE na raiz (REA-PLBASE-001)
2. Configurar CI/CD (GitHub Actions) para build automático do IG (REA-PLBASE-002)
3. Adicionar testes automatizados de validação FSH/IG (REA-PLBASE-003)
4. Documentar chamada de rede para api.github.com nos scripts de build (REA-PLBASE-004)
5. Vincular TODO_List.md a issues do GitHub para rastreamento (REA-PLBASE-005)
6. Descomentar e configurar license no sushi-config.yaml

---

## G. Plano de execução
Todas as melhorias são independentes e de baixo risco, mas não há código-fonte complexo para corrigir. São melhorias de infraestrutura de build e documentação.

---

## H. Resultado esperado
IG com licença declarada, CI/CD automatizado, testes de validação, chamada de rede documentada, TODO vinculado a issues.

---

## Análise de malware e ameaças (estática)
**Resultado:** Nenhum indicador identificado pela análise estática realizada.
- Apenas arquivos de configuração (YAML, INI, FSH, MD, JSON), scripts de build (BAT, SH) e imagens
- Scripts de build fazem curl para api.github.com (API oficial do GitHub para obter versão do publisher) — chamada de rede legítima
- Nenhuma credencial, chave, token ou senha embutida
- Nenhum comando de shell suspeito, subprocess, exec, eval, persistência, ofuscação ou exfiltração de dados
- Não se afirma que o projeto está livre de malware

---

## Perguntas finais obrigatórias
1. **Bugs críticos comprovados?** Nenhum P0/P1.
2. **Problemas repetitivos não resolvidos?** Muitas issues abertas em polonês (funcionalidades a implementar), nenhum PR — indica backlog sem rastreamento de correções via PR.
3. **Erros importantes não documentados?** Ausência de LICENSE, sem CI/CD, sem testes automatizados, chamada de rede para api.github.com, TODO_List.md não vinculado a issues.
4. **Oportunidades de performance?** Nenhuma relevante.
5. **Melhorias de segurança/confiabilidade justificáveis?** Adicionar LICENSE, adicionar CI/CD, adicionar testes, documentar chamada de rede, vincular TODO a issues.
6. **Correções rápidas?** Adicionar LICENSE, descomentar license no sushi-config.yaml, documentar chamada de rede.
7. **Três contribuições de maior valor?** (a) Adicionar LICENSE, (b) Configurar CI/CD para build do IG, (c) Adicionar testes de validação FSH.
8. **Correções a evitar por falta de evidência?** Nenhuma — todas são melhorias de infraestrutura bem fundamentadas.
9. **Modificações recomendadas primeiro?** Adicionar LICENSE e configurar CI/CD (baixo risco, alto impacto em conformidade e reproduzibilidade).
