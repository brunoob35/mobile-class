# Ferramenta de migracao das planilhas Tree House

Esta ferramenta foi criada para analisar as planilhas historicas da pasta
`Planilhas`, consolidar os dados mais confiaveis e gerar arquivos
intermediarios para uma futura importacao no banco do Gestio.

## Objetivo

Gerar artefatos confiaveis para:

- preservar o estado atual da operacao com base em `Controle - 2026.xlsx`
- consolidar o historico de aulas a partir das abas `Registros`
- identificar clientes, alunos e professoras com possiveis duplicatas/typos
- preparar a base para uma futura geracao de `INSERT`/CSV de carga

## Fontes consideradas

- `Controle 2022.xlsx`
- `Controle 2023.xlsx`
- `Controle 2024.xlsx`
- `Controle - 2025.xlsx`
- `Controle - 2026.xlsx`
- `Informações Professoras Tree House.xlsx`

## Saidas geradas

A ferramenta cria uma pasta `saida/` com:

- `diagnostico_resumo.json`
- `clientes_atuais_2026.csv`
- `contratos_atuais_2026.csv`
- `aulas_historicas.csv`
- `professoras_cadastro.csv`
- `professoras_usuarios.csv`
- `professoras_usuarios_seed.sql`
- `clientes_normalizados_2026.csv`
- `alunos_normalizados.csv`
- `vinculos_cliente_aluno_2026.csv`
- `contratos_2026_candidatos.csv`
- `turmas_atuais_2026_candidatas.csv`
- `turmas_legado_candidatas.csv`
- `aulas_historicas_normalizadas.csv`
- `staging_schema.sql`
- `plano_importacao.md`
- `ambiguidades.json`
- `qualidade_dados.json`
- `pendencias_importacao_vigente_2026.json`
- `pendencias_importacao_vigente_2026.md`
- `carga_nucleo_vigente_2026.sql`
- `carga_nucleo_vigente_2026.md`

## Como executar

Dentro da pasta `Planilhas`:

```bash
python3 importador_historico.py
```

Opcionalmente:

```bash
python3 importador_historico.py --input-dir .
python3 importador_historico.py --output-dir ./saida
```

## Overrides manuais

Valores corrigidos manualmente podem ser mantidos em:

- `overrides_contratos_2026.json`

Hoje esse arquivo e aplicado aos contratos vigentes de 2026 antes da geracao
dos CSVs e relatorios.

## O que a ferramenta faz hoje

1. Le os arquivos `.xlsx` sem depender de bibliotecas externas.
2. Identifica as abas mais relevantes por ano.
3. Extrai e normaliza:
   - clientes e alunos atuais de 2026
   - contratos atuais de 2026
   - historico de aulas de 2022 a 2026
   - cadastro base de professoras
4. Gera relatorios de possiveis duplicatas e variacoes de nomes.
5. Gera cadastros de professoras e um `seed` SQL direto para usuarios.
6. Gera tabelas candidatas de clientes, alunos, turmas, contratos e aulas.

## O que ainda fica para a proxima etapa

- reconciliacao fina com as tabelas reais do banco
- geracao da carga final completa para tabelas reais
- tratamento manual dos casos ambiguos
- estrategia final para contratos historicos e renovacoes

## Observacoes

- A ferramenta considera `Controle - 2026.xlsx` como fonte da verdade atual.
- As abas `Registros` sao tratadas como principal fonte do historico de aulas.
- As abas `Aulas por professora` e `Aulas por aluno` sao tratadas como apoio,
  nao como fonte primaria.
