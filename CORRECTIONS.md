# CORRECTIONS.md

## Repositório alvo
- **Nome:** pl-fhir-base
- **URL:** https://github.com/HL7-Poland/pl-fhir-base
- **Branch padrão (upstream):** main-r5
- **Commit-base analisado:** 6398d74
- **Data da elaboração:** 2026-11-08 (horário local)
- **Autor:** admeduardovieira (Kilo, REA 6.7.0)

---

## Correções implementadas

Nenhuma correção de código foi implementada, pois o repositório é um IG FHIR/SUSHI com arquivos de configuração e definições FSH, não código-fonte executável. As melhorias identificadas são de infraestrutura de build e documentação.

## Melhorias identificadas (não implementadas)

### REA-PLBASE-001 — Ausência de arquivo LICENSE
**Problema:** Nenhum arquivo LICENSE na raiz do repositório (linha `license: CC0-1.0` comentada no sushi-config.yaml).
**Correção proposta:** Adicionar arquivo LICENSE e descomentar/configurar a licença no sushi-config.yaml.
**Arquivos:** LICENSE (novo), sushi-config.yaml

### REA-PLBASE-002 — Sem CI/CD
**Problema:** Nenhum workflow de GitHub Actions configurado.
**Correção proposta:** Adicionar .github/workflows/ para build automático do IG via IG Publisher.
**Arquivos:** .github/workflows/*.yml (novos)

### REA-PLBASE-003 — Sem testes automatizados
**Problema:** Nenhum teste de validação dos arquivos FSH ou do IG gerado.
**Correção proposta:** Adicionar testes de validação dos arquivos FSH e do IG gerado.
**Arquivos:** novos arquivos de teste

### REA-PLBASE-004 — Chamada de rede para api.github.com nos scripts de build
**Problema:** _build.bat faz curl para a API do GitHub para obter a versão mais recente do publisher.
**Correção proposta:** Documentar esse comportamento no README.
**Arquivos:** README.md, _build.bat

### REA-PLBASE-005 — TODO_List.md não vinculado a issues
**Problema:** Lista de tarefas em input/TODO_List.md sem rastreamento no GitHub Issues.
**Correção proposta:** Vincular tarefas do TODO_List.md a issues do GitHub para rastreamento adequado.
**Arquivos:** input/TODO_List.md, issues do GitHub

---

*Este documento registra melhorias de infraestrutura identificadas, sem alterações de código-fonte.*
