-- Tabelas de staging para revisao e futura importacao
CREATE TABLE IF NOT EXISTS import_professoras (
    import_key VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(20) NULL,
    cpf VARCHAR(14) NULL,
    rg VARCHAR(20) NULL,
    nascimento DATE NULL,
    senha_hash VARCHAR(255) NOT NULL,
    permissao_id INT NOT NULL,
    origem VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS import_clientes_2026 (
    import_key VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    nome_normalizado VARCHAR(150) NOT NULL,
    telefone VARCHAR(20) NULL,
    cpf VARCHAR(14) NULL,
    rg VARCHAR(20) NULL,
    email VARCHAR(150) NULL,
    endereco TEXT NULL,
    cep VARCHAR(8) NULL,
    familias TEXT NULL,
    alunos_vinculados INT NOT NULL,
    contratos_ativos INT NOT NULL,
    linhas_origem INT NOT NULL
);

CREATE TABLE IF NOT EXISTS import_alunos (
    import_key VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    nome_normalizado VARCHAR(150) NOT NULL,
    nascimento DATE NULL,
    responsaveis_referencia TEXT NULL,
    enderecos_referencia TEXT NULL,
    origens TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS import_clientes_alunos (
    cliente_import_key VARCHAR(255) NOT NULL,
    aluno_import_key VARCHAR(255) NOT NULL,
    cliente_nome VARCHAR(150) NOT NULL,
    aluno_nome VARCHAR(150) NOT NULL,
    contrato_ativo VARCHAR(20) NULL,
    PRIMARY KEY (cliente_import_key, aluno_import_key)
);

CREATE TABLE IF NOT EXISTS import_turmas (
    import_key VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao_recorrencia TEXT NULL,
    professora_import_key VARCHAR(255) NULL,
    professora_nome VARCHAR(150) NULL,
    aluno_nome VARCHAR(150) NULL,
    aluno_import_key VARCHAR(255) NULL,
    primeira_aula DATE NULL,
    ultima_aula DATE NULL,
    quantidade_aulas VARCHAR(30) NULL
);

CREATE TABLE IF NOT EXISTS import_contratos_2026 (
    import_key VARCHAR(255) PRIMARY KEY,
    cliente_representante_import_key VARCHAR(255) NOT NULL,
    cliente_responsavel_import_key VARCHAR(255) NOT NULL,
    aluno_import_key VARCHAR(255) NOT NULL,
    turma_import_key VARCHAR(255) NOT NULL,
    professora_import_key VARCHAR(255) NULL,
    aluno_nome VARCHAR(150) NOT NULL,
    responsavel_nome VARCHAR(150) NOT NULL,
    inicio_contrato DATE NULL,
    fim_contrato DATE NULL,
    numero_aulas VARCHAR(30) NULL,
    valor VARCHAR(30) NULL,
    status_id_sugerido INT NOT NULL,
    tipo_contrato_id_sugerido INT NOT NULL
);

CREATE TABLE IF NOT EXISTS import_aulas_historicas (
    import_key VARCHAR(255) PRIMARY KEY,
    turma_import_key VARCHAR(255) NOT NULL,
    professora_import_key VARCHAR(255) NULL,
    aluno_import_key VARCHAR(255) NOT NULL,
    ano_origem INT NOT NULL,
    status_bruto VARCHAR(100) NULL,
    status_id_sugerido INT NOT NULL,
    data_aula DATE NOT NULL,
    horas_aula VARCHAR(30) NULL,
    assunto VARCHAR(255) NULL,
    saldo TEXT NULL,
    observacoes TEXT NULL
);
