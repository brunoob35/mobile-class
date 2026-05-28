-- Seed de usuarias professoras importadas das planilhas
-- Senha inicial padrao: NovoUser
-- Quando o cadastro estiver incompleto, os comentarios abaixo indicam os campos pendentes.

-- CADASTRO INCOMPLETO: Amanda Monteiro Kuehne | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Amanda Monteiro Kuehne', 'amanda.monteiro.kuehne@treehouse.import', '05341224930', '990381367', '41995746032', FALSE, '2003-01-17')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'amanda.monteiro.kuehne@treehouse.import';

-- CADASTRO INCOMPLETO: Amanda Seidler Steigleder | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Amanda Seidler Steigleder', 'amanda.seidler.steigleder@treehouse.import', '131791809610', '64435460', '47996766254', FALSE, '2002-02-24')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'amanda.seidler.steigleder@treehouse.import';

-- CADASTRO INCOMPLETO: Ana Clara Cordeiro Santana Maia | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Ana Clara Cordeiro Santana Maia', 'ana.clara.cordeiro.santana.maia@treehouse.import', '03681937133', '1363026048', '4198440586910', TRUE, '2004-11-15')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'ana.clara.cordeiro.santana.maia@treehouse.import';

-- CADASTRO INCOMPLETO: Ana Claudia Cassiano | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Ana Claudia Cassiano', 'ana.claudia.cassiano@treehouse.import', '11724184970', '128213449', '4199112629541992126295', TRUE, '1999-09-24')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'ana.claudia.cassiano@treehouse.import';

-- CADASTRO INCOMPLETO: Ana Julia Siqueira de Campos | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Ana Julia Siqueira de Campos', 'ana.julia.siqueira.de.campos@treehouse.import', '13455816967', '142729377', '41988186366', TRUE, '2006-10-31')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'ana.julia.siqueira.de.campos@treehouse.import';

-- CADASTRO INCOMPLETO: Ana Luiza Egg | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Ana Luiza Egg', 'ana.luiza.egg@treehouse.import', '07971968973', '57265060', '47997079053', FALSE, '2002-03-11')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'ana.luiza.egg@treehouse.import';

-- CADASTRO INCOMPLETO: Andressa Dalledone Waltrick | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Andressa Dalledone Waltrick', 'andressa.dalledone.waltrick@treehouse.import', '06518889993', '1002611388', '41991996196', FALSE, '1988-01-09')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'andressa.dalledone.waltrick@treehouse.import';

-- CADASTRO INCOMPLETO: Bruna | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Bruna', 'bruna@treehouse.import', NULL, NULL, NULL, FALSE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'bruna@treehouse.import';

-- CADASTRO INCOMPLETO: Bruna Greipel | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Bruna Greipel', 'bruna.greipel@treehouse.import', '08467642963', '126696744', '4199226006710', TRUE, '2004-09-21')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'bruna.greipel@treehouse.import';

-- CADASTRO INCOMPLETO: Bruna Loureiro Afonso Rodrigues dos Santos | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Bruna Loureiro Afonso Rodrigues dos Santos', 'bruna.loureiro.afonso.rodrigues.dos.santos@treehouse.import', '09585802945', '1345623748', '41999024320', FALSE, '2001-08-22')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'bruna.loureiro.afonso.rodrigues.dos.santos@treehouse.import';

-- CADASTRO INCOMPLETO: Bruna Victoria Bom | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Bruna Victoria Bom', 'bruna.victoria.bom@treehouse.import', '02958224147', '20629060', '65999226999', FALSE, '1998-11-07')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'bruna.victoria.bom@treehouse.import';

-- CADASTRO INCOMPLETO: Cristina Uzun | pendencias: email_real | rg
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Cristina Uzun', 'cristina.uzun@treehouse.import', '1205977511610', NULL, '41988037979', FALSE, '1985-10-04')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'cristina.uzun@treehouse.import';

-- CADASTRO INCOMPLETO: Debora Cristina Vanderlei Del Grossi | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Debora Cristina Vanderlei Del Grossi', 'debora.cristina.vanderlei.del.grossi@treehouse.import', '1333498594610', '1325870788', '41992665464', FALSE, '2000-02-25')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'debora.cristina.vanderlei.del.grossi@treehouse.import';

-- CADASTRO INCOMPLETO: Emanuella Selusniak de Oliveira | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Emanuella Selusniak de Oliveira', 'emanuella.selusniak.de.oliveira@treehouse.import', '1093986492410', '1263178', '4198736904310', TRUE, '1998-04-24')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'emanuella.selusniak.de.oliveira@treehouse.import';

-- CADASTRO INCOMPLETO: Emanuelle Maciel | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Emanuelle Maciel', 'emanuelle.maciel@treehouse.import', '11970601973', '131358490', '4199794963410', FALSE, '2000-03-11')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'emanuelle.maciel@treehouse.import';

-- CADASTRO INCOMPLETO: Gabrielly Simão | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Gabrielly Simão', 'gabrielly.simao@treehouse.import', '07992403975', '1248573178', '41999957687', TRUE, '2004-12-24')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'gabrielly.simao@treehouse.import';

-- CADASTRO INCOMPLETO: Giovana Prado Scaratti | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Giovana Prado Scaratti', 'giovana.prado.scaratti@treehouse.import', '05164802945', '110616668', '41988031881', FALSE, '2002-05-18')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'giovana.prado.scaratti@treehouse.import';

-- CADASTRO INCOMPLETO: Giulia Bonatto da Silva | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Giulia Bonatto da Silva', 'giulia.bonatto.da.silva@treehouse.import', '09250160984', '126216459', '41995070680', FALSE, '2000-12-04')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'giulia.bonatto.da.silva@treehouse.import';

-- CADASTRO INCOMPLETO: Isabele | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Isabele', 'isabele@treehouse.import', NULL, NULL, NULL, FALSE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'isabele@treehouse.import';

-- CADASTRO INCOMPLETO: Jéssica Andressa da Costa Machado | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Jéssica Andressa da Costa Machado', 'jessica.andressa.da.costa.machado@treehouse.import', '07378484997', '125596355', '4199903005710', FALSE, '1995-08-23')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'jessica.andressa.da.costa.machado@treehouse.import';

-- CADASTRO INCOMPLETO: Juliane Stocker Soares | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Juliane Stocker Soares', 'juliane.stocker.soares@treehouse.import', '07971981996', '1027623478', '41998738527', FALSE, '1994-04-22')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'juliane.stocker.soares@treehouse.import';

-- CADASTRO INCOMPLETO: Karen Daniele dos Reis Awane | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Karen Daniele dos Reis Awane', 'karen.daniele.dos.reis.awane@treehouse.import', '04298815927', '805609587', '41988226181', FALSE, '1985-04-09')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'karen.daniele.dos.reis.awane@treehouse.import';

-- CADASTRO INCOMPLETO: Larissa de Oliveira Silva Skraba | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Larissa de Oliveira Silva Skraba', 'larissa.de.oliveira.silva.skraba@treehouse.import', '13287356992', '110868693', '41984631603', TRUE, '2002-09-04')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'larissa.de.oliveira.silva.skraba@treehouse.import';

-- CADASTRO INCOMPLETO: Laura Alves da Rocha | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Laura Alves da Rocha', 'laura.alves.da.rocha@treehouse.import', '1262823595110', '6733789258', '4198782494310', TRUE, '2001-10-29')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'laura.alves.da.rocha@treehouse.import';

-- CADASTRO INCOMPLETO: Leila Talita Freitas Lima | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Leila Talita Freitas Lima', 'leila.talita.freitas.lima@treehouse.import', '01927552699', '149222294', '41992805907', FALSE, '1999-05-11')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'leila.talita.freitas.lima@treehouse.import';

-- CADASTRO INCOMPLETO: Liohana | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Liohana', 'liohana@treehouse.import', NULL, NULL, NULL, FALSE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'liohana@treehouse.import';

-- CADASTRO INCOMPLETO: Liohana Gaspar da Silva | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Liohana Gaspar da Silva', 'liohana.gaspar.da.silva@treehouse.import', '09892840933', '109237876', '4198842764410', FALSE, '1997-03-20')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'liohana.gaspar.da.silva@treehouse.import';

-- CADASTRO INCOMPLETO: Luana Maria Figueiredo Salviano Pallaro | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Luana Maria Figueiredo Salviano Pallaro', 'luana.maria.figueiredo.salviano.pallaro@treehouse.import', '07383976959', '1027084588', '4199611839510', FALSE, '1999-07-15')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'luana.maria.figueiredo.salviano.pallaro@treehouse.import';

-- CADASTRO INCOMPLETO: Luana Rodrigues Quoos | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Luana Rodrigues Quoos', 'luana.rodrigues.quoos@treehouse.import', NULL, NULL, NULL, FALSE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'luana.rodrigues.quoos@treehouse.import';

-- CADASTRO INCOMPLETO: Luciana Yury Mino | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Luciana Yury Mino', 'luciana.yury.mino@treehouse.import', '16592221844', '2330439748', '41988697821', FALSE, '1972-07-17')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'luciana.yury.mino@treehouse.import';

-- CADASTRO INCOMPLETO: Luísa Ferreira Barbosa | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Luísa Ferreira Barbosa', 'luisa.ferreira.barbosa@treehouse.import', '4969642281410', '537063817', '11972492450', FALSE, '1998-05-15')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'luisa.ferreira.barbosa@treehouse.import';

-- CADASTRO INCOMPLETO: Manuela Esmanhotto Sales | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Manuela Esmanhotto Sales', 'manuela.esmanhotto.sales@treehouse.import', '09611170955', '1269350488', '41987043223', FALSE, '2004-11-10')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'manuela.esmanhotto.sales@treehouse.import';

-- CADASTRO INCOMPLETO: Maria Clara Guerra Azevedo de Barros | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Maria Clara Guerra Azevedo de Barros', 'maria.clara.guerra.azevedo.de.barros@treehouse.import', '1262796490910', '1256987788', '41987492112', FALSE, '2000-12-03')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'maria.clara.guerra.azevedo.de.barros@treehouse.import';

-- CADASTRO INCOMPLETO: Maria Eduarda de Petris Santos da Silva | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Maria Eduarda de Petris Santos da Silva', 'maria.eduarda.de.petris.santos.da.silva@treehouse.import', '1551612992310', '153398356', '4198707481810', FALSE, '2007-07-30')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'maria.eduarda.de.petris.santos.da.silva@treehouse.import';

-- CADASTRO INCOMPLETO: MARIA FERNANDA FERRO DE ASSIS BASTOS | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'MARIA FERNANDA FERRO DE ASSIS BASTOS', 'maria.fernanda.ferro.de.assis.bastos@treehouse.import', '11914387910', '96658958', '41996024490', FALSE, '1998-10-18')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'maria.fernanda.ferro.de.assis.bastos@treehouse.import';

-- CADASTRO INCOMPLETO: Mariana | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Mariana', 'mariana@treehouse.import', NULL, NULL, NULL, FALSE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'mariana@treehouse.import';

-- CADASTRO INCOMPLETO: Mariana Fraga da Fonseca | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Mariana Fraga da Fonseca', 'mariana.fraga.da.fonseca@treehouse.import', '08917885900', '1272749248', '42991172444', TRUE, '1994-05-26')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'mariana.fraga.da.fonseca@treehouse.import';

-- CADASTRO INCOMPLETO: Mariana Luiza Secco | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Mariana Luiza Secco', 'mariana.luiza.secco@treehouse.import', '11473771978', '127516995', '41999962283', FALSE, '2002-09-22')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'mariana.luiza.secco@treehouse.import';

-- CADASTRO INCOMPLETO: Marina Jorge Geiger | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Marina Jorge Geiger', 'marina.jorge.geiger@treehouse.import', '1256671290510', '1271397178', '4199589861610', TRUE, '2000-01-31')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'marina.jorge.geiger@treehouse.import';

-- CADASTRO INCOMPLETO: Melissa Micoski Pereira | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Melissa Micoski Pereira', 'melissa.micoski.pereira@treehouse.import', '09349134985', '854286597', '4199984721041985177052', FALSE, '1995-02-17')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'melissa.micoski.pereira@treehouse.import';

-- CADASTRO INCOMPLETO: Mônica Schreiber | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Mônica Schreiber', 'monica.schreiber@treehouse.import', '08345378935', '905812877', '4198816686110', FALSE, '1996-06-05')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'monica.schreiber@treehouse.import';

-- CADASTRO INCOMPLETO: Naiana | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Naiana', 'naiana@treehouse.import', NULL, NULL, NULL, FALSE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'naiana@treehouse.import';

-- CADASTRO INCOMPLETO: Pamela Pickel | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Pamela Pickel', 'pamela.pickel@treehouse.import', '08375318965', '918407157', '4198796131310', FALSE, '1998-05-09')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'pamela.pickel@treehouse.import';

-- CADASTRO INCOMPLETO: Paola Di Salvatore Veronezi | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Paola Di Salvatore Veronezi', 'paola.di.salvatore.veronezi@treehouse.import', '91424979739', '4077890058', '41999401881', FALSE, '1993-11-03')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'paola.di.salvatore.veronezi@treehouse.import';

-- CADASTRO INCOMPLETO: Patricia Cristina Miguel | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Patricia Cristina Miguel', 'patricia.cristina.miguel@treehouse.import', '06837380974', '1106310658', '4199686499410', FALSE, '1990-05-14')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'patricia.cristina.miguel@treehouse.import';

-- CADASTRO INCOMPLETO: Perciliana Toledo Casagrande | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Perciliana Toledo Casagrande', 'perciliana.toledo.casagrande@treehouse.import', '13325588956', '129486708', '41995771232', FALSE, '2003-05-15')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'perciliana.toledo.casagrande@treehouse.import';

-- CADASTRO INCOMPLETO: Rafaela Swinka Pavessi | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Rafaela Swinka Pavessi', 'rafaela.swinka.pavessi@treehouse.import', '8417812423410', '90885887', '41991631889', FALSE, '1991-11-25')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'rafaela.swinka.pavessi@treehouse.import';

-- CADASTRO INCOMPLETO: Raphaela | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Raphaela', 'raphaela@treehouse.import', NULL, NULL, NULL, FALSE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'raphaela@treehouse.import';

-- CADASTRO INCOMPLETO: Raphaela Mykytzczuk De Matos | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Raphaela Mykytzczuk De Matos', 'raphaela.mykytzczuk.de.matos@treehouse.import', '07951318957', '089057744', '419851988710', FALSE, '1993-07-09')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'raphaela.mykytzczuk.de.matos@treehouse.import';

-- CADASTRO INCOMPLETO: Rebeca Grollmann Borg | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Rebeca Grollmann Borg', 'rebeca.grollmann.borg@treehouse.import', '07093569943', '127024128', '4298816000210', FALSE, '1999-08-13')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'rebeca.grollmann.borg@treehouse.import';

-- CADASTRO INCOMPLETO: Sallize de Valença Bettega | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Sallize de Valença Bettega', 'sallize.de.valenca.bettega@treehouse.import', '1395763992110', '1414700278', '4199898262610', FALSE, '2006-05-04')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'sallize.de.valenca.bettega@treehouse.import';

-- CADASTRO INCOMPLETO: Samantha Beduschi Santana | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Samantha Beduschi Santana', 'samantha.beduschi.santana@treehouse.import', '9229692093410', '605223917', '41988282725', FALSE, '1973-12-06')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'samantha.beduschi.santana@treehouse.import';

-- CADASTRO INCOMPLETO: Sofia Daniele Lisboa | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Sofia Daniele Lisboa', 'sofia.daniele.lisboa@treehouse.import', NULL, NULL, NULL, TRUE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'sofia.daniele.lisboa@treehouse.import';

-- CADASTRO INCOMPLETO: Sofia Danieli Lisboa | pendencias: email_real | rg
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Sofia Danieli Lisboa', 'sofia.danieli.lisboa@treehouse.import', '10682233919', NULL, '47991993662', TRUE, '2007-02-07')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'sofia.danieli.lisboa@treehouse.import';

-- CADASTRO INCOMPLETO: Tatiana Bruner Recka | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Tatiana Bruner Recka', 'tatiana.bruner.recka@treehouse.import', '05151994948', '783945957', '4199706972210', TRUE, '1987-02-04')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'tatiana.bruner.recka@treehouse.import';

-- CADASTRO INCOMPLETO: Tree House | pendencias: email_real | telefone | cpf | rg | nascimento | cadastro_base_ausente
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Tree House', 'tree.house@treehouse.import', NULL, NULL, NULL, FALSE, NULL)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'tree.house@treehouse.import';

-- CADASTRO INCOMPLETO: Vivian Schmeiske Cardoso | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Vivian Schmeiske Cardoso', 'vivian.schmeiske.cardoso@treehouse.import', '05808084911', '127152462', '41991660440', FALSE, '2002-11-12')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'vivian.schmeiske.cardoso@treehouse.import';

-- CADASTRO INCOMPLETO: Yasmin dos Santos Mello | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Yasmin dos Santos Mello', 'yasmin.dos.santos.mello@treehouse.import', '08886097956', '128572325', '41998724346', FALSE, '2001-09-03')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'yasmin.dos.santos.mello@treehouse.import';

-- CADASTRO INCOMPLETO: Yasmin Grummt Naddaf | pendencias: email_real
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
VALUES ('$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Yasmin Grummt Naddaf', 'yasmin.grummt.naddaf@treehouse.import', '02474605916', '032180264', '9953123968', FALSE, '1979-06-01')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),
    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),
    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),
    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),
    ativo = VALUES(ativo);

INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)
SELECT id, 2 FROM usuarios WHERE email = 'yasmin.grummt.naddaf@treehouse.import';
