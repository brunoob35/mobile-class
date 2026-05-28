# Carga histórica de aulas

## Escopo

- Turmas legado candidatas: 1197
- Aulas históricas elegíveis para carga SQL: 16796
- Aulas históricas puladas por ausência de data: 9

## O que este script importa

- Alunos complementares para cobrir o histórico
  Alunos criados apenas por histórico entram como inativos (`ativo = FALSE`)
- Turmas legado sintetizadas por professora + aluno
- Vínculos aluno/turma do legado
- Aulas históricas com deduplicação para reruns

## O que fica de fora por enquanto

- Aulas sem `data_aula` válida; revisar `aulas_historicas_puladas.csv`
- Reconstrução perfeita de aulas em grupo antigas

## Recomendação

- Executar somente após a carga do núcleo vigente
- Validar contagens por ano e por professora após a importação
