# Pacote de Execucao da Migracao

Esta pasta reune apenas os scripts SQL e os arquivos `.md` que explicam como usar esses scripts.

## Ordem recomendada

1. `staging_schema.sql`
   Estrutura auxiliar de apoio para etapas de importacao e conferencia.

2. `professoras_usuarios_seed.sql`
   Seed isolado de professoras e usuarios, util para validacoes parciais ou cargas separadas.

3. `carga_nucleo_vigente_2026.sql`
   Carga principal do nucleo vigente de 2026: professoras, clientes, alunos, vinculos, turmas e contratos.

4. `carga_historico_aulas.sql`
   Complementa a base com alunos de historico, turmas legado, vinculos e aulas historicas.

5. `carga_aulas_futuras_vigentes.sql`
   Gera as aulas futuras inferidas para contratos vigentes, com base no padrao observado.

## Guias incluidos

- `plano_importacao.md`
  Visao geral da estrategia de migracao.

- `pendencias_importacao_vigente_2026.md`
  Pendencias e pontos de atencao da carga vigente.

- `carga_nucleo_vigente_2026.md`
  Explicacao da carga principal de 2026.

- `carga_historico_aulas.md`
  Explicacao da carga do historico de aulas.

- `carga_aulas_futuras_vigentes.md`
  Explicacao da geracao das aulas futuras.

## Observacoes

- Os CSVs, JSONs e arquivos de diagnostico continuam na pasta `saida` principal.
- Esta pasta existe apenas para facilitar a execucao e a leitura operacional da migracao.
