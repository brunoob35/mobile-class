# Plano de importacao historica

## Resumo atual

- Clientes atuais 2026: 146
- Clientes ativos 2026: 91
- Contratos atuais 2026: 91
- Aulas historicas: 16805
- Alunos historicos unicos: 361
- Professoras historicas unicas: 54
- Professoras ativas em 2026: 13
- Professoras inativas em 2026: 46

## Ordem sugerida de importacao

1. Revisar `ambiguidades.json`
2. Importar `professoras_usuarios_seed.sql`
3. Carregar arquivos `import_*` nas tabelas de staging
4. Validar clientes/alunos/turmas inferidas
5. Gerar a carga final para tabelas reais

## Observacoes importantes

- `Controle - 2026.xlsx` continua sendo a fonte da verdade do estado atual.
- As aulas historicas foram inferidas a partir das abas `Registros`.
- As turmas historicas foram sintetizadas por combinacao professora + aluno.
- Isso preserva o historico, mas nao reconstrói perfeitamente aulas em grupo.
- Para professoras sem e-mail, a ferramenta gera e-mails temporarios `@treehouse.import`.
- A senha inicial padrao das professoras e `NovoUser`, ja em hash bcrypt.
