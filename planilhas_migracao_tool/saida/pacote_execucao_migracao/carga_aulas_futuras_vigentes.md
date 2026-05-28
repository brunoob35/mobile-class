# Carga de aulas futuras dos vigentes

## Escopo

- Contratos vigentes com aulas futuras geradas: 68
- Aulas futuras geradas: 1669
- Contratos vigentes pulados ou parcialmente atendidos: 34

## Como a inferência foi feita

- Usa as aulas já observadas para a dupla professora + aluno
- Estima os dias da semana mais frequentes dentro do período do contrato
- Gera novas aulas pendentes até o fim do contrato, sem duplicar datas já existentes

## O que revisar

- `aulas_futuras_vigentes_geradas.csv`
- `aulas_futuras_vigentes_puladas.csv`

## Recomendação

- Rodar depois da carga histórica, para aproveitar o máximo de padrão observado
- Validar visualmente alguns contratos antes de usar em produção
