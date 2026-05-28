# Carga do núcleo vigente 2026

## Escopo

- Clientes normalizados: 101
- Alunos normalizados totais: 488
- Turmas vigentes candidatas: 90
- Contratos 2026 elegíveis para carga SQL: 90
- Contratos pulados por valor inválido: 1
- Usuárias professoras com cadastro incompleto mapeado: 59

## O que este script importa

- Usuárias professoras
  Professoras sem aparição em registros de 2026 são marcadas como inativas (`ativo = FALSE`)
- Clientes
- Alunos
- Vínculos cliente/aluno
- Turmas vigentes 2026
- Vínculos aluno/turma
- Contratos vigentes/registrados em 2026

## O que fica de fora por enquanto

- Endereços estruturados de clientes e turmas
- Recorrência detalhada das turmas
- Aulas históricas
- Contratos com valor ausente/inválido; revisar arquivo `contratos_pulados_importacao.csv`
- Professoras com cadastro parcial; revisar arquivo `professoras_cadastro_incompleto.csv`

## Recomendação

- Executar primeiro em banco local limpo
- Validar contagens no final
- Só depois pensar na carga das aulas históricas
