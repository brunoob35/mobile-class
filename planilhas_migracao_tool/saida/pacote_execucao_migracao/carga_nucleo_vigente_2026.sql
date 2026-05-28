-- Carga do nucleo vigente 2026
-- Premissa: executar em base limpa ou cuidadosamente revisada.
-- Escopo: professoras, clientes, alunos, vinculos, turmas e contratos vigentes/registrados em 2026.
-- Enderecos estruturados e aulas historicas ficam para etapas separadas.

START TRANSACTION;
SET @app_usuario_id = NULL;

-- 1. Professoras / usuarios

-- Amanda Monteiro Kuehne
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Amanda Monteiro Kuehne', 'amanda.monteiro.kuehne@treehouse.import', '05341224930', '990381367', '41995746032', FALSE, '2003-01-17'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'amanda.monteiro.kuehne@treehouse.import');
SET @usr_teacher_amanda_monteiro_kuehne = (SELECT id FROM usuarios WHERE email = 'amanda.monteiro.kuehne@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_amanda_monteiro_kuehne, 2);

-- Amanda Seidler Steigleder
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Amanda Seidler Steigleder', 'amanda.seidler.steigleder@treehouse.import', NULL, '64435460', '47996766254', FALSE, '2002-02-24'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'amanda.seidler.steigleder@treehouse.import');
SET @usr_teacher_amanda_seidler_steigleder = (SELECT id FROM usuarios WHERE email = 'amanda.seidler.steigleder@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_amanda_seidler_steigleder, 2);

-- Ana Clara Cordeiro Santana Maia
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Ana Clara Cordeiro Santana Maia', 'ana.clara.cordeiro.santana.maia@treehouse.import', '03681937133', '1363026048', '4198440586910', TRUE, '2004-11-15'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'ana.clara.cordeiro.santana.maia@treehouse.import');
SET @usr_teacher_ana_clara_cordeiro_santana_maia = (SELECT id FROM usuarios WHERE email = 'ana.clara.cordeiro.santana.maia@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_ana_clara_cordeiro_santana_maia, 2);

-- Ana Claudia Cassiano
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Ana Claudia Cassiano', 'ana.claudia.cassiano@treehouse.import', '11724184970', '128213449', NULL, TRUE, '1999-09-24'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'ana.claudia.cassiano@treehouse.import');
SET @usr_teacher_ana_claudia_cassiano = (SELECT id FROM usuarios WHERE email = 'ana.claudia.cassiano@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_ana_claudia_cassiano, 2);

-- Ana Julia Siqueira de Campos
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Ana Julia Siqueira de Campos', 'ana.julia.siqueira.de.campos@treehouse.import', '13455816967', '142729377', '41988186366', TRUE, '2006-10-31'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'ana.julia.siqueira.de.campos@treehouse.import');
SET @usr_teacher_ana_julia_siqueira_de_campos = (SELECT id FROM usuarios WHERE email = 'ana.julia.siqueira.de.campos@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_ana_julia_siqueira_de_campos, 2);

-- Ana Luiza Egg
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Ana Luiza Egg', 'ana.luiza.egg@treehouse.import', '07971968973', '57265060', '47997079053', FALSE, '2002-03-11'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'ana.luiza.egg@treehouse.import');
SET @usr_teacher_ana_luiza_egg = (SELECT id FROM usuarios WHERE email = 'ana.luiza.egg@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_ana_luiza_egg, 2);

-- Andressa Dalledone Waltrick
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Andressa Dalledone Waltrick', 'andressa.dalledone.waltrick@treehouse.import', '06518889993', '1002611388', '41991996196', FALSE, '1988-01-09'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'andressa.dalledone.waltrick@treehouse.import');
SET @usr_teacher_andressa_dalledone_waltrick = (SELECT id FROM usuarios WHERE email = 'andressa.dalledone.waltrick@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_andressa_dalledone_waltrick, 2);

-- Bruna
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Bruna', 'bruna@treehouse.import', NULL, NULL, NULL, FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'bruna@treehouse.import');
SET @usr_teacher_bruna = (SELECT id FROM usuarios WHERE email = 'bruna@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_bruna, 2);

-- Bruna Greipel
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Bruna Greipel', 'bruna.greipel@treehouse.import', '08467642963', '126696744', '4199226006710', TRUE, '2004-09-21'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'bruna.greipel@treehouse.import');
SET @usr_teacher_bruna_greipel = (SELECT id FROM usuarios WHERE email = 'bruna.greipel@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_bruna_greipel, 2);

-- Bruna Loureiro Afonso Rodrigues dos Santos
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Bruna Loureiro Afonso Rodrigues dos Santos', 'bruna.loureiro.afonso.rodrigues.dos.santos@treehouse.import', '09585802945', '1345623748', '41999024320', FALSE, '2001-08-22'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'bruna.loureiro.afonso.rodrigues.dos.santos@treehouse.import');
SET @usr_teacher_bruna_loureiro_afonso_rodrigues_ = (SELECT id FROM usuarios WHERE email = 'bruna.loureiro.afonso.rodrigues.dos.santos@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_bruna_loureiro_afonso_rodrigues_, 2);

-- Bruna Victoria Bom
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Bruna Victoria Bom', 'bruna.victoria.bom@treehouse.import', '02958224147', '20629060', '65999226999', FALSE, '1998-11-07'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'bruna.victoria.bom@treehouse.import');
SET @usr_teacher_bruna_victoria_bom = (SELECT id FROM usuarios WHERE email = 'bruna.victoria.bom@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_bruna_victoria_bom, 2);

-- Cristina Uzun
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Cristina Uzun', 'cristina.uzun@treehouse.import', NULL, NULL, '41988037979', FALSE, '1985-10-04'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'cristina.uzun@treehouse.import');
SET @usr_teacher_cristina_uzun = (SELECT id FROM usuarios WHERE email = 'cristina.uzun@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_cristina_uzun, 2);

-- Debora Cristina Vanderlei Del Grossi
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Debora Cristina Vanderlei Del Grossi', 'debora.cristina.vanderlei.del.grossi@treehouse.import', NULL, '1325870788', '41992665464', FALSE, '2000-02-25'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'debora.cristina.vanderlei.del.grossi@treehouse.import');
SET @usr_teacher_debora_cristina_vanderlei_del_gr = (SELECT id FROM usuarios WHERE email = 'debora.cristina.vanderlei.del.grossi@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_debora_cristina_vanderlei_del_gr, 2);

-- Emanuella Selusniak de Oliveira
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Emanuella Selusniak de Oliveira', 'emanuella.selusniak.de.oliveira@treehouse.import', NULL, '1263178', '4198736904310', TRUE, '1998-04-24'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'emanuella.selusniak.de.oliveira@treehouse.import');
SET @usr_teacher_emanuella_selusniak_de_oliveira = (SELECT id FROM usuarios WHERE email = 'emanuella.selusniak.de.oliveira@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_emanuella_selusniak_de_oliveira, 2);

-- Emanuelle Maciel
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Emanuelle Maciel', 'emanuelle.maciel@treehouse.import', '11970601973', '131358490', '4199794963410', FALSE, '2000-03-11'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'emanuelle.maciel@treehouse.import');
SET @usr_teacher_emanuelle_maciel = (SELECT id FROM usuarios WHERE email = 'emanuelle.maciel@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_emanuelle_maciel, 2);

-- Gabrielly Simão
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Gabrielly Simão', 'gabrielly.simao@treehouse.import', '07992403975', '1248573178', '41999957687', TRUE, '2004-12-24'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'gabrielly.simao@treehouse.import');
SET @usr_teacher_gabrielly_simao = (SELECT id FROM usuarios WHERE email = 'gabrielly.simao@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_gabrielly_simao, 2);

-- Giovana Prado Scaratti
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Giovana Prado Scaratti', 'giovana.prado.scaratti@treehouse.import', '05164802945', '110616668', '41988031881', FALSE, '2002-05-18'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'giovana.prado.scaratti@treehouse.import');
SET @usr_teacher_giovana_prado_scaratti = (SELECT id FROM usuarios WHERE email = 'giovana.prado.scaratti@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_giovana_prado_scaratti, 2);

-- Giulia Bonatto da Silva
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Giulia Bonatto da Silva', 'giulia.bonatto.da.silva@treehouse.import', '09250160984', '126216459', '41995070680', FALSE, '2000-12-04'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'giulia.bonatto.da.silva@treehouse.import');
SET @usr_teacher_giulia_bonatto_da_silva = (SELECT id FROM usuarios WHERE email = 'giulia.bonatto.da.silva@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_giulia_bonatto_da_silva, 2);

-- Isabele
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Isabele', 'isabele@treehouse.import', NULL, NULL, NULL, FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'isabele@treehouse.import');
SET @usr_teacher_isabele = (SELECT id FROM usuarios WHERE email = 'isabele@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_isabele, 2);

-- Jéssica Andressa da Costa Machado
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Jéssica Andressa da Costa Machado', 'jessica.andressa.da.costa.machado@treehouse.import', '07378484997', '125596355', '4199903005710', FALSE, '1995-08-23'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'jessica.andressa.da.costa.machado@treehouse.import');
SET @usr_teacher_jessica_andressa_da_costa_machad = (SELECT id FROM usuarios WHERE email = 'jessica.andressa.da.costa.machado@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_jessica_andressa_da_costa_machad, 2);

-- Juliane Stocker Soares
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Juliane Stocker Soares', 'juliane.stocker.soares@treehouse.import', '07971981996', '1027623478', '41998738527', FALSE, '1994-04-22'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'juliane.stocker.soares@treehouse.import');
SET @usr_teacher_juliane_stocker_soares = (SELECT id FROM usuarios WHERE email = 'juliane.stocker.soares@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_juliane_stocker_soares, 2);

-- Karen Daniele dos Reis Awane
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Karen Daniele dos Reis Awane', 'karen.daniele.dos.reis.awane@treehouse.import', '04298815927', '805609587', '41988226181', FALSE, '1985-04-09'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'karen.daniele.dos.reis.awane@treehouse.import');
SET @usr_teacher_karen_daniele_dos_reis_awane = (SELECT id FROM usuarios WHERE email = 'karen.daniele.dos.reis.awane@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_karen_daniele_dos_reis_awane, 2);

-- Larissa de Oliveira Silva Skraba
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Larissa de Oliveira Silva Skraba', 'larissa.de.oliveira.silva.skraba@treehouse.import', '13287356992', '110868693', '41984631603', TRUE, '2002-09-04'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'larissa.de.oliveira.silva.skraba@treehouse.import');
SET @usr_teacher_larissa_de_oliveira_silva_skraba = (SELECT id FROM usuarios WHERE email = 'larissa.de.oliveira.silva.skraba@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_larissa_de_oliveira_silva_skraba, 2);

-- Laura Alves da Rocha
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Laura Alves da Rocha', 'laura.alves.da.rocha@treehouse.import', NULL, '6733789258', '4198782494310', TRUE, '2001-10-29'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'laura.alves.da.rocha@treehouse.import');
SET @usr_teacher_laura_alves_da_rocha = (SELECT id FROM usuarios WHERE email = 'laura.alves.da.rocha@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_laura_alves_da_rocha, 2);

-- Leila Talita Freitas Lima
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Leila Talita Freitas Lima', 'leila.talita.freitas.lima@treehouse.import', '01927552699', '149222294', '41992805907', FALSE, '1999-05-11'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'leila.talita.freitas.lima@treehouse.import');
SET @usr_teacher_leila_talita_freitas_lima = (SELECT id FROM usuarios WHERE email = 'leila.talita.freitas.lima@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_leila_talita_freitas_lima, 2);

-- Liohana
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Liohana', 'liohana@treehouse.import', NULL, NULL, NULL, FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'liohana@treehouse.import');
SET @usr_teacher_liohana = (SELECT id FROM usuarios WHERE email = 'liohana@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_liohana, 2);

-- Liohana Gaspar da Silva
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Liohana Gaspar da Silva', 'liohana.gaspar.da.silva@treehouse.import', '09892840933', '109237876', '4198842764410', FALSE, '1997-03-20'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'liohana.gaspar.da.silva@treehouse.import');
SET @usr_teacher_liohana_gaspar_da_silva = (SELECT id FROM usuarios WHERE email = 'liohana.gaspar.da.silva@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_liohana_gaspar_da_silva, 2);

-- Luana Maria Figueiredo Salviano Pallaro
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Luana Maria Figueiredo Salviano Pallaro', 'luana.maria.figueiredo.salviano.pallaro@treehouse.import', '07383976959', '1027084588', '4199611839510', FALSE, '1999-07-15'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'luana.maria.figueiredo.salviano.pallaro@treehouse.import');
SET @usr_teacher_luana_maria_figueiredo_salviano_ = (SELECT id FROM usuarios WHERE email = 'luana.maria.figueiredo.salviano.pallaro@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_luana_maria_figueiredo_salviano_, 2);

-- Luana Rodrigues Quoos
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Luana Rodrigues Quoos', 'luana.rodrigues.quoos@treehouse.import', NULL, NULL, NULL, FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'luana.rodrigues.quoos@treehouse.import');
SET @usr_teacher_luana_rodrigues_quoos = (SELECT id FROM usuarios WHERE email = 'luana.rodrigues.quoos@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_luana_rodrigues_quoos, 2);

-- Luciana Yury Mino
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Luciana Yury Mino', 'luciana.yury.mino@treehouse.import', '16592221844', '2330439748', '41988697821', FALSE, '1972-07-17'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'luciana.yury.mino@treehouse.import');
SET @usr_teacher_luciana_yury_mino = (SELECT id FROM usuarios WHERE email = 'luciana.yury.mino@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_luciana_yury_mino, 2);

-- Luísa Ferreira Barbosa
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Luísa Ferreira Barbosa', 'luisa.ferreira.barbosa@treehouse.import', NULL, '537063817', '11972492450', FALSE, '1998-05-15'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'luisa.ferreira.barbosa@treehouse.import');
SET @usr_teacher_luisa_ferreira_barbosa = (SELECT id FROM usuarios WHERE email = 'luisa.ferreira.barbosa@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_luisa_ferreira_barbosa, 2);

-- Manuela Esmanhotto Sales
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Manuela Esmanhotto Sales', 'manuela.esmanhotto.sales@treehouse.import', '09611170955', '1269350488', '41987043223', FALSE, '2004-11-10'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'manuela.esmanhotto.sales@treehouse.import');
SET @usr_teacher_manuela_esmanhotto_sales = (SELECT id FROM usuarios WHERE email = 'manuela.esmanhotto.sales@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_manuela_esmanhotto_sales, 2);

-- Maria Clara Guerra Azevedo de Barros
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Maria Clara Guerra Azevedo de Barros', 'maria.clara.guerra.azevedo.de.barros@treehouse.import', NULL, '1256987788', '41987492112', FALSE, '2000-12-03'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'maria.clara.guerra.azevedo.de.barros@treehouse.import');
SET @usr_teacher_maria_clara_guerra_azevedo_de_ba = (SELECT id FROM usuarios WHERE email = 'maria.clara.guerra.azevedo.de.barros@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_maria_clara_guerra_azevedo_de_ba, 2);

-- Maria Eduarda de Petris Santos da Silva
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Maria Eduarda de Petris Santos da Silva', 'maria.eduarda.de.petris.santos.da.silva@treehouse.import', NULL, '153398356', '4198707481810', FALSE, '2007-07-30'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'maria.eduarda.de.petris.santos.da.silva@treehouse.import');
SET @usr_teacher_maria_eduarda_de_petris_santos_d = (SELECT id FROM usuarios WHERE email = 'maria.eduarda.de.petris.santos.da.silva@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_maria_eduarda_de_petris_santos_d, 2);

-- MARIA FERNANDA FERRO DE ASSIS BASTOS
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'MARIA FERNANDA FERRO DE ASSIS BASTOS', 'maria.fernanda.ferro.de.assis.bastos@treehouse.import', '11914387910', '96658958', '41996024490', FALSE, '1998-10-18'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'maria.fernanda.ferro.de.assis.bastos@treehouse.import');
SET @usr_teacher_maria_fernanda_ferro_de_assis_ba = (SELECT id FROM usuarios WHERE email = 'maria.fernanda.ferro.de.assis.bastos@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_maria_fernanda_ferro_de_assis_ba, 2);

-- Mariana
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Mariana', 'mariana@treehouse.import', NULL, NULL, NULL, FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'mariana@treehouse.import');
SET @usr_teacher_mariana = (SELECT id FROM usuarios WHERE email = 'mariana@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_mariana, 2);

-- Mariana Fraga da Fonseca
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Mariana Fraga da Fonseca', 'mariana.fraga.da.fonseca@treehouse.import', '08917885900', '1272749248', '42991172444', TRUE, '1994-05-26'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'mariana.fraga.da.fonseca@treehouse.import');
SET @usr_teacher_mariana_fraga_da_fonseca = (SELECT id FROM usuarios WHERE email = 'mariana.fraga.da.fonseca@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_mariana_fraga_da_fonseca, 2);

-- Mariana Luiza Secco
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Mariana Luiza Secco', 'mariana.luiza.secco@treehouse.import', '11473771978', '127516995', '41999962283', FALSE, '2002-09-22'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'mariana.luiza.secco@treehouse.import');
SET @usr_teacher_mariana_luiza_secco = (SELECT id FROM usuarios WHERE email = 'mariana.luiza.secco@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_mariana_luiza_secco, 2);

-- Marina Jorge Geiger
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Marina Jorge Geiger', 'marina.jorge.geiger@treehouse.import', NULL, '1271397178', '4199589861610', TRUE, '2000-01-31'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'marina.jorge.geiger@treehouse.import');
SET @usr_teacher_marina_jorge_geiger = (SELECT id FROM usuarios WHERE email = 'marina.jorge.geiger@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_marina_jorge_geiger, 2);

-- Melissa Micoski Pereira
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Melissa Micoski Pereira', 'melissa.micoski.pereira@treehouse.import', '09349134985', '854286597', NULL, FALSE, '1995-02-17'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'melissa.micoski.pereira@treehouse.import');
SET @usr_teacher_melissa_micoski_pereira = (SELECT id FROM usuarios WHERE email = 'melissa.micoski.pereira@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_melissa_micoski_pereira, 2);

-- Mônica Schreiber
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Mônica Schreiber', 'monica.schreiber@treehouse.import', '08345378935', '905812877', '4198816686110', FALSE, '1996-06-05'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'monica.schreiber@treehouse.import');
SET @usr_teacher_monica_schreiber = (SELECT id FROM usuarios WHERE email = 'monica.schreiber@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_monica_schreiber, 2);

-- Naiana
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Naiana', 'naiana@treehouse.import', NULL, NULL, NULL, FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'naiana@treehouse.import');
SET @usr_teacher_naiana = (SELECT id FROM usuarios WHERE email = 'naiana@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_naiana, 2);

-- Pamela Pickel
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Pamela Pickel', 'pamela.pickel@treehouse.import', '08375318965', '918407157', '4198796131310', FALSE, '1998-05-09'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'pamela.pickel@treehouse.import');
SET @usr_teacher_pamela_pickel = (SELECT id FROM usuarios WHERE email = 'pamela.pickel@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_pamela_pickel, 2);

-- Paola Di Salvatore Veronezi
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Paola Di Salvatore Veronezi', 'paola.di.salvatore.veronezi@treehouse.import', '91424979739', '4077890058', '41999401881', FALSE, '1993-11-03'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'paola.di.salvatore.veronezi@treehouse.import');
SET @usr_teacher_paola_di_salvatore_veronezi = (SELECT id FROM usuarios WHERE email = 'paola.di.salvatore.veronezi@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_paola_di_salvatore_veronezi, 2);

-- Patricia Cristina Miguel
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Patricia Cristina Miguel', 'patricia.cristina.miguel@treehouse.import', '06837380974', '1106310658', '4199686499410', FALSE, '1990-05-14'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'patricia.cristina.miguel@treehouse.import');
SET @usr_teacher_patricia_cristina_miguel = (SELECT id FROM usuarios WHERE email = 'patricia.cristina.miguel@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_patricia_cristina_miguel, 2);

-- Perciliana Toledo Casagrande
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Perciliana Toledo Casagrande', 'perciliana.toledo.casagrande@treehouse.import', '13325588956', '129486708', '41995771232', FALSE, '2003-05-15'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'perciliana.toledo.casagrande@treehouse.import');
SET @usr_teacher_perciliana_toledo_casagrande = (SELECT id FROM usuarios WHERE email = 'perciliana.toledo.casagrande@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_perciliana_toledo_casagrande, 2);

-- Rafaela Swinka Pavessi
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Rafaela Swinka Pavessi', 'rafaela.swinka.pavessi@treehouse.import', NULL, '90885887', '41991631889', FALSE, '1991-11-25'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'rafaela.swinka.pavessi@treehouse.import');
SET @usr_teacher_rafaela_swinka_pavessi = (SELECT id FROM usuarios WHERE email = 'rafaela.swinka.pavessi@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_rafaela_swinka_pavessi, 2);

-- Raphaela
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Raphaela', 'raphaela@treehouse.import', NULL, NULL, NULL, FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'raphaela@treehouse.import');
SET @usr_teacher_raphaela = (SELECT id FROM usuarios WHERE email = 'raphaela@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_raphaela, 2);

-- Raphaela Mykytzczuk De Matos
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Raphaela Mykytzczuk De Matos', 'raphaela.mykytzczuk.de.matos@treehouse.import', '07951318957', '089057744', '419851988710', FALSE, '1993-07-09'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'raphaela.mykytzczuk.de.matos@treehouse.import');
SET @usr_teacher_raphaela_mykytzczuk_de_matos = (SELECT id FROM usuarios WHERE email = 'raphaela.mykytzczuk.de.matos@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_raphaela_mykytzczuk_de_matos, 2);

-- Rebeca Grollmann Borg
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Rebeca Grollmann Borg', 'rebeca.grollmann.borg@treehouse.import', '07093569943', '127024128', '4298816000210', FALSE, '1999-08-13'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'rebeca.grollmann.borg@treehouse.import');
SET @usr_teacher_rebeca_grollmann_borg = (SELECT id FROM usuarios WHERE email = 'rebeca.grollmann.borg@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_rebeca_grollmann_borg, 2);

-- Sallize de Valença Bettega
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Sallize de Valença Bettega', 'sallize.de.valenca.bettega@treehouse.import', NULL, '1414700278', '4199898262610', FALSE, '2006-05-04'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'sallize.de.valenca.bettega@treehouse.import');
SET @usr_teacher_sallize_de_valenca_bettega = (SELECT id FROM usuarios WHERE email = 'sallize.de.valenca.bettega@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_sallize_de_valenca_bettega, 2);

-- Samantha Beduschi Santana
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Samantha Beduschi Santana', 'samantha.beduschi.santana@treehouse.import', NULL, '605223917', '41988282725', FALSE, '1973-12-06'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'samantha.beduschi.santana@treehouse.import');
SET @usr_teacher_samantha_beduschi_santana = (SELECT id FROM usuarios WHERE email = 'samantha.beduschi.santana@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_samantha_beduschi_santana, 2);

-- Sofia Daniele Lisboa
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Sofia Daniele Lisboa', 'sofia.daniele.lisboa@treehouse.import', NULL, NULL, NULL, TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'sofia.daniele.lisboa@treehouse.import');
SET @usr_teacher_sofia_daniele_lisboa = (SELECT id FROM usuarios WHERE email = 'sofia.daniele.lisboa@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_sofia_daniele_lisboa, 2);

-- Sofia Danieli Lisboa
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Sofia Danieli Lisboa', 'sofia.danieli.lisboa@treehouse.import', '10682233919', NULL, '47991993662', TRUE, '2007-02-07'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'sofia.danieli.lisboa@treehouse.import');
SET @usr_teacher_sofia_danieli_lisboa = (SELECT id FROM usuarios WHERE email = 'sofia.danieli.lisboa@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_sofia_danieli_lisboa, 2);

-- Tatiana Bruner Recka
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Tatiana Bruner Recka', 'tatiana.bruner.recka@treehouse.import', '05151994948', '783945957', '4199706972210', TRUE, '1987-02-04'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'tatiana.bruner.recka@treehouse.import');
SET @usr_teacher_tatiana_bruner_recka = (SELECT id FROM usuarios WHERE email = 'tatiana.bruner.recka@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_tatiana_bruner_recka, 2);

-- Tree House
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Tree House', 'tree.house@treehouse.import', NULL, NULL, NULL, FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'tree.house@treehouse.import');
SET @usr_teacher_tree_house = (SELECT id FROM usuarios WHERE email = 'tree.house@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_tree_house, 2);

-- Vivian Schmeiske Cardoso
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Vivian Schmeiske Cardoso', 'vivian.schmeiske.cardoso@treehouse.import', '05808084911', '127152462', '41991660440', FALSE, '2002-11-12'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'vivian.schmeiske.cardoso@treehouse.import');
SET @usr_teacher_vivian_schmeiske_cardoso = (SELECT id FROM usuarios WHERE email = 'vivian.schmeiske.cardoso@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_vivian_schmeiske_cardoso, 2);

-- Yasmin dos Santos Mello
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Yasmin dos Santos Mello', 'yasmin.dos.santos.mello@treehouse.import', '08886097956', '128572325', '41998724346', FALSE, '2001-09-03'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'yasmin.dos.santos.mello@treehouse.import');
SET @usr_teacher_yasmin_dos_santos_mello = (SELECT id FROM usuarios WHERE email = 'yasmin.dos.santos.mello@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_yasmin_dos_santos_mello, 2);

-- Yasmin Grummt Naddaf
INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT '$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6', 'Yasmin Grummt Naddaf', 'yasmin.grummt.naddaf@treehouse.import', '02474605916', '032180264', '9953123968', FALSE, '1979-06-01'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'yasmin.grummt.naddaf@treehouse.import');
SET @usr_teacher_yasmin_grummt_naddaf = (SELECT id FROM usuarios WHERE email = 'yasmin.grummt.naddaf@treehouse.import' LIMIT 1);
INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES (@usr_teacher_yasmin_grummt_naddaf, 2);

-- 2. Clientes

-- Amanda Ferreira Primo
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Amanda Ferreira Primo', NULL, '05694520904', '94251800', '4199719411610', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05694520904');
SET @cli_cpf_05694520904 = (SELECT id FROM clientes WHERE cpf = '05694520904' LIMIT 1);

-- Amanda Krebs Dias
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Amanda Krebs Dias', NULL, '07877848935', '94433274', '41996428955', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07877848935');
SET @cli_cpf_07877848935 = (SELECT id FROM clientes WHERE cpf = '07877848935' LIMIT 1);

-- Amanda Paula Perfeito Falavina Dias
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Amanda Paula Perfeito Falavina Dias', NULL, '04538616958', '1011697588', '41998900008', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04538616958');
SET @cli_cpf_04538616958 = (SELECT id FROM clientes WHERE cpf = '04538616958' LIMIT 1);

-- Ana Luiza Jaime Perillo de Melo
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Ana Luiza Jaime Perillo de Melo', NULL, '06101777103', '46266690', '41992325910', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06101777103');
SET @cli_cpf_06101777103 = (SELECT id FROM clientes WHERE cpf = '06101777103' LIMIT 1);

-- Andrea Elisa Gauer Marchini
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Andrea Elisa Gauer Marchini', NULL, '06388100945', '79971987', '41999740310', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06388100945');
SET @cli_cpf_06388100945 = (SELECT id FROM clientes WHERE cpf = '06388100945' LIMIT 1);

-- Andrea Elisa Gauer Marchini
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Andrea Elisa Gauer Marchini', NULL, '04989193903', '679225737', '41999740310', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04989193903');
SET @cli_cpf_04989193903 = (SELECT id FROM clientes WHERE cpf = '04989193903' LIMIT 1);

-- Andrea Favareto
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Andrea Favareto', NULL, '03008220908', '70991594', '41999685265', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03008220908');
SET @cli_cpf_03008220908 = (SELECT id FROM clientes WHERE cpf = '03008220908' LIMIT 1);

-- Anelissa Crema
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Anelissa Crema', NULL, '93786263191', '83116064', '41992514715', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '93786263191');
SET @cli_cpf_93786263191 = (SELECT id FROM clientes WHERE cpf = '93786263191' LIMIT 1);

-- Beatriz Aguiar Arend Schmidt
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Beatriz Aguiar Arend Schmidt', NULL, '04125184909', '40869850', '48996122119', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04125184909');
SET @cli_cpf_04125184909 = (SELECT id FROM clientes WHERE cpf = '04125184909' LIMIT 1);

-- Bianca Bacci Bisetto
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Bianca Bacci Bisetto', NULL, '04296555928', '61267573', '41999282299', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04296555928');
SET @cli_cpf_04296555928 = (SELECT id FROM clientes WHERE cpf = '04296555928' LIMIT 1);

-- Bruna Greggio
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Bruna Greggio', NULL, '05387010992', '104901832', '41988441186', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05387010992');
SET @cli_cpf_05387010992 = (SELECT id FROM clientes WHERE cpf = '05387010992' LIMIT 1);

-- Bruna Maria Filippetto
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Bruna Maria Filippetto', NULL, '03329247932', '58707414', '4199162136210', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03329247932');
SET @cli_cpf_03329247932 = (SELECT id FROM clientes WHERE cpf = '03329247932' LIMIT 1);

-- Bruna Tosato Ferreira
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Bruna Tosato Ferreira', NULL, '07130432969', '87767981', '41991154299', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07130432969');
SET @cli_cpf_07130432969 = (SELECT id FROM clientes WHERE cpf = '07130432969' LIMIT 1);

-- Caio Verussa
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Caio Verussa', NULL, '03719632903', '76874301', '41991911745', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03719632903');
SET @cli_cpf_03719632903 = (SELECT id FROM clientes WHERE cpf = '03719632903' LIMIT 1);

-- Camila do Nascimento Cardoso
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Camila do Nascimento Cardoso', NULL, '06791257954', '58208205', '41992848288', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06791257954');
SET @cli_cpf_06791257954 = (SELECT id FROM clientes WHERE cpf = '06791257954' LIMIT 1);

-- Camila Mainetti
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Camila Mainetti', NULL, '03488609944', '60033315', '41984052680', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03488609944');
SET @cli_cpf_03488609944 = (SELECT id FROM clientes WHERE cpf = '03488609944' LIMIT 1);

-- Camila Trevisan Milani Weyll
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Camila Trevisan Milani Weyll', NULL, '07659914979', '1054678268', '41988491727', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07659914979');
SET @cli_cpf_07659914979 = (SELECT id FROM clientes WHERE cpf = '07659914979' LIMIT 1);

-- Carina Grynbaum
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Carina Grynbaum', NULL, '31036255883', '344420000', '11982941818', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '31036255883');
SET @cli_cpf_31036255883 = (SELECT id FROM clientes WHERE cpf = '31036255883' LIMIT 1);

-- Cássia Fuganti
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Cássia Fuganti', NULL, '04795963959', '47555920', '41996489939', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04795963959');
SET @cli_cpf_04795963959 = (SELECT id FROM clientes WHERE cpf = '04795963959' LIMIT 1);

-- Cinthia Fernanda da Fonseca Silva
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Cinthia Fernanda da Fonseca Silva', NULL, '04350194908', '83131748', '41998715508', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04350194908');
SET @cli_cpf_04350194908 = (SELECT id FROM clientes WHERE cpf = '04350194908' LIMIT 1);

-- Cristiane Engel dos Santos Malat
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Cristiane Engel dos Santos Malat', NULL, '03859218964', '139756223', '41991119199', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03859218964');
SET @cli_cpf_03859218964 = (SELECT id FROM clientes WHERE cpf = '03859218964' LIMIT 1);

-- Danielle Mello dos Santos
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Danielle Mello dos Santos', NULL, '03779292980', '11316568359', '41991271145', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03779292980');
SET @cli_cpf_03779292980 = (SELECT id FROM clientes WHERE cpf = '03779292980' LIMIT 1);

-- Deborah Fernandes Rezzadori Valdez
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Deborah Fernandes Rezzadori Valdez', NULL, '05674028940', NULL, '4199848777810', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05674028940');
SET @cli_cpf_05674028940 = (SELECT id FROM clientes WHERE cpf = '05674028940' LIMIT 1);

-- Elines Couto dos Santos da Silva
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Elines Couto dos Santos da Silva', NULL, '05091973966', '902096987', '41996281254', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05091973966');
SET @cli_cpf_05091973966 = (SELECT id FROM clientes WHERE cpf = '05091973966' LIMIT 1);

-- Emilene Semirames de Oliveira Silva
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Emilene Semirames de Oliveira Silva', NULL, '00975428900', '80927908', '41988151625', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00975428900');
SET @cli_cpf_00975428900 = (SELECT id FROM clientes WHERE cpf = '00975428900' LIMIT 1);

-- Escola Escola Kambalhota
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Escola Escola Kambalhota', NULL, '14089735963', NULL, NULL, TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '14089735963');
SET @cli_cpf_14089735963 = (SELECT id FROM clientes WHERE cpf = '14089735963' LIMIT 1);

-- Escola Escola Kids
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Escola Escola Kids', NULL, '81310020999', NULL, NULL, TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '81310020999');
SET @cli_cpf_81310020999 = (SELECT id FROM clientes WHERE cpf = '81310020999' LIMIT 1);

-- Fabiane Sichelschimidt
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Fabiane Sichelschimidt', NULL, '06313544927', '99926775', '41996788717', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06313544927');
SET @cli_cpf_06313544927 = (SELECT id FROM clientes WHERE cpf = '06313544927' LIMIT 1);

-- Fabíola Colombo Mourão
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Fabíola Colombo Mourão', NULL, '01477069984', '58885274', '41999652793', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '01477069984');
SET @cli_cpf_01477069984 = (SELECT id FROM clientes WHERE cpf = '01477069984' LIMIT 1);

-- Felipe Skraba
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Felipe Skraba', NULL, '05101817910', '70698471', '41996439928', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05101817910');
SET @cli_cpf_05101817910 = (SELECT id FROM clientes WHERE cpf = '05101817910' LIMIT 1);

-- Fernanda Alves
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Fernanda Alves', NULL, '03872429965', '60122474', '41999811978', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03872429965');
SET @cli_cpf_03872429965 = (SELECT id FROM clientes WHERE cpf = '03872429965' LIMIT 1);

-- Fernanda Marcondes Ribas
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Fernanda Marcondes Ribas', NULL, '00915861941', '3627736', '41999225562', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00915861941');
SET @cli_cpf_00915861941 = (SELECT id FROM clientes WHERE cpf = '00915861941' LIMIT 1);

-- Flavia Tonatto Dorneles Barboza
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Flavia Tonatto Dorneles Barboza', NULL, '06344115947', '102508988', '4197694634', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06344115947');
SET @cli_cpf_06344115947 = (SELECT id FROM clientes WHERE cpf = '06344115947' LIMIT 1);

-- Francieli Dias Fidelis
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Francieli Dias Fidelis', NULL, '86176234115', '53548741', '41996837555', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '86176234115');
SET @cli_cpf_86176234115 = (SELECT id FROM clientes WHERE cpf = '86176234115' LIMIT 1);

-- Gabriel Canto Tomazini
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Gabriel Canto Tomazini', NULL, '04343114996', '44061890', '41999950602', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04343114996');
SET @cli_cpf_04343114996 = (SELECT id FROM clientes WHERE cpf = '04343114996' LIMIT 1);

-- Gabriella Fraletti de Souza Rubbo
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Gabriella Fraletti de Souza Rubbo', NULL, '00676175902', '81126909', '41992062719', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00676175902');
SET @cli_cpf_00676175902 = (SELECT id FROM clientes WHERE cpf = '00676175902' LIMIT 1);

-- Gustavo Weigert de Araujo
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Gustavo Weigert de Araujo', NULL, '05141580938', '86212498', '41999937804', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05141580938');
SET @cli_cpf_05141580938 = (SELECT id FROM clientes WHERE cpf = '05141580938' LIMIT 1);

-- Hugo Evo Magro Corrêa Urbano
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Hugo Evo Magro Corrêa Urbano', NULL, '04766182669', '12342368', '41998054488', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04766182669');
SET @cli_cpf_04766182669 = (SELECT id FROM clientes WHERE cpf = '04766182669' LIMIT 1);

-- Ingrid Araujo Santos Andor
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Ingrid Araujo Santos Andor', NULL, '33452508889', '435607571', '41988457978', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '33452508889');
SET @cli_cpf_33452508889 = (SELECT id FROM clientes WHERE cpf = '33452508889' LIMIT 1);

-- Iolanda Cristine Passalacqua Laurentino Pereira
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Iolanda Cristine Passalacqua Laurentino Pereira', NULL, '06664939959', '77976183', '41984220543', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06664939959');
SET @cli_cpf_06664939959 = (SELECT id FROM clientes WHERE cpf = '06664939959' LIMIT 1);

-- Isabella Demeterco
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Isabella Demeterco', NULL, '00392058944', '61101748', '4199613561210', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00392058944');
SET @cli_cpf_00392058944 = (SELECT id FROM clientes WHERE cpf = '00392058944' LIMIT 1);

-- Isabella Zviejkovski Malucelli
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Isabella Zviejkovski Malucelli', NULL, '04732644988', '95472630', '41999214002', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04732644988');
SET @cli_cpf_04732644988 = (SELECT id FROM clientes WHERE cpf = '04732644988' LIMIT 1);

-- Jacqueline Rorato
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Jacqueline Rorato', NULL, '06622157960', '95765599', '41996957638', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06622157960');
SET @cli_cpf_06622157960 = (SELECT id FROM clientes WHERE cpf = '06622157960' LIMIT 1);

-- Jaqueline Lebbos Favaretto Ruppel
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Jaqueline Lebbos Favaretto Ruppel', NULL, '06642913922', '82007563', '43999334714', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06642913922');
SET @cli_cpf_06642913922 = (SELECT id FROM clientes WHERE cpf = '06642913922' LIMIT 1);

-- Jessica Goncalves Machado
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Jessica Goncalves Machado', NULL, '05075867944', '78007567', '41991382001', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05075867944');
SET @cli_cpf_05075867944 = (SELECT id FROM clientes WHERE cpf = '05075867944' LIMIT 1);

-- Jheinifer Felix
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Jheinifer Felix', NULL, '00869254901', '88147421', '4196351254', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00869254901');
SET @cli_cpf_00869254901 = (SELECT id FROM clientes WHERE cpf = '00869254901' LIMIT 1);

-- Joanna Vitória Crippa Mazzarotto
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Joanna Vitória Crippa Mazzarotto', NULL, '01019405996', '42358150', '41999354544', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '01019405996');
SET @cli_cpf_01019405996 = (SELECT id FROM clientes WHERE cpf = '01019405996' LIMIT 1);

-- Juliana Cristina Leinig de Almeida Romani
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Juliana Cristina Leinig de Almeida Romani', NULL, '04329226952', '706655657', '41988566196', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04329226952');
SET @cli_cpf_04329226952 = (SELECT id FROM clientes WHERE cpf = '04329226952' LIMIT 1);

-- Juliana Ferreira Martins
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Juliana Ferreira Martins', NULL, '02174450984', '281351648', '41999327772', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '02174450984');
SET @cli_cpf_02174450984 = (SELECT id FROM clientes WHERE cpf = '02174450984' LIMIT 1);

-- Juliane Rawlyk Lopes Ribeiro
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Juliane Rawlyk Lopes Ribeiro', NULL, '00654307946', '84629267', '4199853020410', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00654307946');
SET @cli_cpf_00654307946 = (SELECT id FROM clientes WHERE cpf = '00654307946' LIMIT 1);

-- Jussara Pedroso Dresch
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Jussara Pedroso Dresch', NULL, '04132333914', '75681798', '41984210652', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04132333914');
SET @cli_cpf_04132333914 = (SELECT id FROM clientes WHERE cpf = '04132333914' LIMIT 1);

-- Larissa Loewen
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Larissa Loewen', NULL, '08827422994', '78246340', NULL, TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '08827422994');
SET @cli_cpf_08827422994 = (SELECT id FROM clientes WHERE cpf = '08827422994' LIMIT 1);

-- Leandra Cassaniga Marim
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Leandra Cassaniga Marim', NULL, '05998267974', '917273587', '41996616179', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05998267974');
SET @cli_cpf_05998267974 = (SELECT id FROM clientes WHERE cpf = '05998267974' LIMIT 1);

-- Leonardo Silva Machado
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Leonardo Silva Machado', NULL, '04385456992', '684229497', '41991382001', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04385456992');
SET @cli_cpf_04385456992 = (SELECT id FROM clientes WHERE cpf = '04385456992' LIMIT 1);

-- Louise Nascimento e Silva
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Louise Nascimento e Silva', NULL, '33015427865', '436972645', '41991990160', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '33015427865');
SET @cli_cpf_33015427865 = (SELECT id FROM clientes WHERE cpf = '33015427865' LIMIT 1);

-- Luana Guerreiro
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Luana Guerreiro', NULL, '07024187905', '79258047', '41996438228', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07024187905');
SET @cli_cpf_07024187905 = (SELECT id FROM clientes WHERE cpf = '07024187905' LIMIT 1);

-- Luciano Maranho
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Luciano Maranho', NULL, '51508950830', '148668256', '41999646268', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '51508950830');
SET @cli_cpf_51508950830 = (SELECT id FROM clientes WHERE cpf = '51508950830' LIMIT 1);

-- Luiz Eduardo Lima Bassi
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Luiz Eduardo Lima Bassi', NULL, '03785684932', '8920247', '041996046169', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03785684932');
SET @cli_cpf_03785684932 = (SELECT id FROM clientes WHERE cpf = '03785684932' LIMIT 1);

-- Lydia Aparecida Martins
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Lydia Aparecida Martins', NULL, '03266166914', '64046197', '41999623295', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03266166914');
SET @cli_cpf_03266166914 = (SELECT id FROM clientes WHERE cpf = '03266166914' LIMIT 1);

-- Magda Ester Minuzzo Zuffo
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Magda Ester Minuzzo Zuffo', NULL, '00141067012', '271699092', '41995368213', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00141067012');
SET @cli_cpf_00141067012 = (SELECT id FROM clientes WHERE cpf = '00141067012' LIMIT 1);

-- Marcela de Masi Nogueira
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Marcela de Masi Nogueira', NULL, '04818127922', '69755194', '41999740385', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04818127922');
SET @cli_cpf_04818127922 = (SELECT id FROM clientes WHERE cpf = '04818127922' LIMIT 1);

-- Marcio Aleksey Roesler
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Marcio Aleksey Roesler', NULL, '00770961932', '37312680', '11996205020', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00770961932');
SET @cli_cpf_00770961932 = (SELECT id FROM clientes WHERE cpf = '00770961932' LIMIT 1);

-- Maria Beatriz Benato
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Maria Beatriz Benato', NULL, '04410925946', '67549333', '41999721202', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04410925946');
SET @cli_cpf_04410925946 = (SELECT id FROM clientes WHERE cpf = '04410925946' LIMIT 1);

-- Maria Fernanda Coan
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Maria Fernanda Coan', NULL, '03540623957', '4048248', '41999099565', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03540623957');
SET @cli_cpf_03540623957 = (SELECT id FROM clientes WHERE cpf = '03540623957' LIMIT 1);

-- Mariana Rosina
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Mariana Rosina', NULL, '04456487917', '91662574', '41984417176', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04456487917');
SET @cli_cpf_04456487917 = (SELECT id FROM clientes WHERE cpf = '04456487917' LIMIT 1);

-- Mariele Simões
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Mariele Simões', NULL, '10725235910', '1378020668', '41987084610', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '10725235910');
SET @cli_cpf_10725235910 = (SELECT id FROM clientes WHERE cpf = '10725235910' LIMIT 1);

-- Marina Garbin Lima
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Marina Garbin Lima', NULL, '05793853960', '77433384', '41999362289', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05793853960');
SET @cli_cpf_05793853960 = (SELECT id FROM clientes WHERE cpf = '05793853960' LIMIT 1);

-- Mayra dos Santos Zavattaro
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Mayra dos Santos Zavattaro', NULL, NULL, '1481109218', '41998156060', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE nome = 'Mayra dos Santos Zavattaro');
SET @cli_cpf_3505251780710 = (SELECT id FROM clientes WHERE nome = 'Mayra dos Santos Zavattaro' LIMIT 1);

-- Melanny Burkoot
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Melanny Burkoot', NULL, '07693899960', '101948641', '41999780680', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07693899960');
SET @cli_cpf_07693899960 = (SELECT id FROM clientes WHERE cpf = '07693899960' LIMIT 1);

-- Melissa Matzenbacher
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Melissa Matzenbacher', NULL, '01700834975', '40817620', '4199164422110', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '01700834975');
SET @cli_cpf_01700834975 = (SELECT id FROM clientes WHERE cpf = '01700834975' LIMIT 1);

-- Nathália Locks de Loyola
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Nathália Locks de Loyola', NULL, '04132729907', '73472288', '41999852105', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04132729907');
SET @cli_cpf_04132729907 = (SELECT id FROM clientes WHERE cpf = '04132729907' LIMIT 1);

-- Pamela Ferraz
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Pamela Ferraz', NULL, '07848378993', '982669847', '4198417728110', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07848378993');
SET @cli_cpf_07848378993 = (SELECT id FROM clientes WHERE cpf = '07848378993' LIMIT 1);

-- Pamella Dayane da Silveira Guimarães
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Pamella Dayane da Silveira Guimarães', NULL, '06965760907', '104231934', '41996383836', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06965760907');
SET @cli_cpf_06965760907 = (SELECT id FROM clientes WHERE cpf = '06965760907' LIMIT 1);

-- Patricia Ribas dos Santos
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Patricia Ribas dos Santos', NULL, '02174697955', '61454780', '41996266642', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '02174697955');
SET @cli_cpf_02174697955 = (SELECT id FROM clientes WHERE cpf = '02174697955' LIMIT 1);

-- Pérola Piegel
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Pérola Piegel', NULL, '07726833955', '78007346', '4199105999310', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07726833955');
SET @cli_cpf_07726833955 = (SELECT id FROM clientes WHERE cpf = '07726833955' LIMIT 1);

-- Pollyana Ribeiro Medeiros Ribas
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Pollyana Ribeiro Medeiros Ribas', NULL, '04471465996', '82503501', '41999788380', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04471465996');
SET @cli_cpf_04471465996 = (SELECT id FROM clientes WHERE cpf = '04471465996' LIMIT 1);

-- Priscilla Raquel Fogaça dos Santos
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Priscilla Raquel Fogaça dos Santos', NULL, '03718109905', '82842675', '41996984601', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03718109905');
SET @cli_cpf_03718109905 = (SELECT id FROM clientes WHERE cpf = '03718109905' LIMIT 1);

-- Rafael Magacho dos Santos Silva
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Rafael Magacho dos Santos Silva', NULL, '89633180104', '3815864', '41999150888', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '89633180104');
SET @cli_cpf_89633180104 = (SELECT id FROM clientes WHERE cpf = '89633180104' LIMIT 1);

-- Raíra Silvestre Mulling
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Raíra Silvestre Mulling', NULL, '03833723130', '224178267', '6699999178710', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03833723130');
SET @cli_cpf_03833723130 = (SELECT id FROM clientes WHERE cpf = '03833723130' LIMIT 1);

-- Raphael Taura Cherbiski
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Raphael Taura Cherbiski', NULL, '02729298916', '61161163', '32490398770', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '02729298916');
SET @cli_cpf_02729298916 = (SELECT id FROM clientes WHERE cpf = '02729298916' LIMIT 1);

-- Regiane Cristina Kulka de Souza
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Regiane Cristina Kulka de Souza', NULL, '02866238974', '69505210', '41996189511', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '02866238974');
SET @cli_cpf_02866238974 = (SELECT id FROM clientes WHERE cpf = '02866238974' LIMIT 1);

-- Renata Anile Mansur
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Renata Anile Mansur', NULL, '06847027975', '824956497', '41988172507', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06847027975');
SET @cli_cpf_06847027975 = (SELECT id FROM clientes WHERE cpf = '06847027975' LIMIT 1);

-- Renata Ferraz Novak
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Renata Ferraz Novak', NULL, '07685721937', '87778975', '41998402222', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07685721937');
SET @cli_cpf_07685721937 = (SELECT id FROM clientes WHERE cpf = '07685721937' LIMIT 1);

-- Renata Fisbein e Richard Katz
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Renata Fisbein e Richard Katz', NULL, NULL, '68699380', '41999723727', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE nome = 'Renata Fisbein e Richard Katz');
SET @cli_cpf_621566918 = (SELECT id FROM clientes WHERE nome = 'Renata Fisbein e Richard Katz' LIMIT 1);

-- Renata Fisbein e Richard Katz
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Renata Fisbein e Richard Katz', NULL, '00621566918', '68699387', '41999723727', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00621566918');
SET @cli_cpf_00621566918 = (SELECT id FROM clientes WHERE cpf = '00621566918' LIMIT 1);

-- Rodrigo Camargo de Camargo
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Rodrigo Camargo de Camargo', NULL, '06206515982', '913144797', '41999675596', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06206515982');
SET @cli_cpf_06206515982 = (SELECT id FROM clientes WHERE cpf = '06206515982' LIMIT 1);

-- Rodrigo Mendes Camargo
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Rodrigo Mendes Camargo', NULL, '00849598940', '64355023', '41988468116', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '00849598940');
SET @cli_cpf_00849598940 = (SELECT id FROM clientes WHERE cpf = '00849598940' LIMIT 1);

-- Rosângela Alves Monteiro
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Rosângela Alves Monteiro', NULL, '03643334990', '92685381', '45999233193', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03643334990');
SET @cli_cpf_03643334990 = (SELECT id FROM clientes WHERE cpf = '03643334990' LIMIT 1);

-- Sâmia Silva Gallego Campos Tavares
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Sâmia Silva Gallego Campos Tavares', NULL, '04150354901', '62685344', '41992064445', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04150354901');
SET @cli_cpf_04150354901 = (SELECT id FROM clientes WHERE cpf = '04150354901' LIMIT 1);

-- Sarah Boiko
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Sarah Boiko', NULL, '05290559965', '77018328', '41992149944', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05290559965');
SET @cli_cpf_05290559965 = (SELECT id FROM clientes WHERE cpf = '05290559965' LIMIT 1);

-- Sarah Boiko
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Sarah Boiko', NULL, '05045931962', '85360728', '41992149944', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05045931962');
SET @cli_cpf_05045931962 = (SELECT id FROM clientes WHERE cpf = '05045931962' LIMIT 1);

-- Soraia Tullio
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Soraia Tullio', NULL, '02278835947', '68818036', '41999214100', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '02278835947');
SET @cli_cpf_02278835947 = (SELECT id FROM clientes WHERE cpf = '02278835947' LIMIT 1);

-- Talita Tamara da Silva Ramos Cé
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Talita Tamara da Silva Ramos Cé', NULL, '06841989910', '100204215', '41999442811', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '06841989910');
SET @cli_cpf_06841989910 = (SELECT id FROM clientes WHERE cpf = '06841989910' LIMIT 1);

-- Tchesari Becker Cordeiro
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Tchesari Becker Cordeiro', NULL, '03023947961', '79113905', '41999385881', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '03023947961');
SET @cli_cpf_03023947961 = (SELECT id FROM clientes WHERE cpf = '03023947961' LIMIT 1);

-- Thais Gualda Carneiro Akiyama
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Thais Gualda Carneiro Akiyama', NULL, '05368042906', '883348097', '41997171745', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '05368042906');
SET @cli_cpf_05368042906 = (SELECT id FROM clientes WHERE cpf = '05368042906' LIMIT 1);

-- Thalita Oliveira Pimentel Pereira
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Thalita Oliveira Pimentel Pereira', NULL, '34473054870', '338077674', '41999972425', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '34473054870');
SET @cli_cpf_34473054870 = (SELECT id FROM clientes WHERE cpf = '34473054870' LIMIT 1);

-- Valeska da Fonseca Dubas Matocheck
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Valeska da Fonseca Dubas Matocheck', NULL, '07797705950', '103425913', '41997941492', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07797705950');
SET @cli_cpf_07797705950 = (SELECT id FROM clientes WHERE cpf = '07797705950' LIMIT 1);

-- Vanessa Fernandes de Paiva
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Vanessa Fernandes de Paiva', NULL, '04375673974', '77230874', '41992817432', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04375673974');
SET @cli_cpf_04375673974 = (SELECT id FROM clientes WHERE cpf = '04375673974' LIMIT 1);

-- Victor Cangussu Teixeira Campos
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Victor Cangussu Teixeira Campos', NULL, '07977934612', '15364877', '41992421900', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '07977934612');
SET @cli_cpf_07977934612 = (SELECT id FROM clientes WHERE cpf = '07977934612' LIMIT 1);

-- Viviane Moscatto De Biagi
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Viviane Moscatto De Biagi', NULL, '04932359900', '77446540', '41999176177', TRUE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '04932359900');
SET @cli_cpf_04932359900 = (SELECT id FROM clientes WHERE cpf = '04932359900' LIMIT 1);

-- Xênia Sperandio Daleffe
INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)
SELECT 'Xênia Sperandio Daleffe', NULL, '75832003934', '35405593', '41992426060', FALSE, NULL
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE cpf = '75832003934');
SET @cli_cpf_75832003934 = (SELECT id FROM clientes WHERE cpf = '75832003934' LIMIT 1);

-- 3. Alunos

-- Alice Imazu Maranho
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Alice Imazu Maranho', NULL, NULL, '2016-07-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Alice Imazu Maranho' AND nascimento = '2016-07-10');
SET @alu_name_birth_alice_imazu_maranho_2016_07_1 = (SELECT id FROM alunos WHERE nome = 'Alice Imazu Maranho' AND nascimento = '2016-07-10' LIMIT 1);

-- Alice Oliveira Pinto Tomazini
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Alice Oliveira Pinto Tomazini', NULL, NULL, '2023-04-16', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Alice Oliveira Pinto Tomazini' AND nascimento = '2023-04-16');
SET @alu_name_birth_alice_oliveira_pinto_tomazini = (SELECT id FROM alunos WHERE nome = 'Alice Oliveira Pinto Tomazini' AND nascimento = '2023-04-16' LIMIT 1);

-- Alice Silveira Guimarães
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Alice Silveira Guimarães', NULL, NULL, '2017-11-01', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Alice Silveira Guimarães' AND nascimento = '2017-11-01');
SET @alu_name_birth_alice_silveira_guimaraes_2017 = (SELECT id FROM alunos WHERE nome = 'Alice Silveira Guimarães' AND nascimento = '2017-11-01' LIMIT 1);

-- Aline Vera Lima Bassi
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Aline Vera Lima Bassi', NULL, NULL, '2015-03-13', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Aline Vera Lima Bassi' AND nascimento = '2015-03-13');
SET @alu_name_birth_aline_vera_lima_bassi_2015_03 = (SELECT id FROM alunos WHERE nome = 'Aline Vera Lima Bassi' AND nascimento = '2015-03-13' LIMIT 1);

-- Amanda de Loyola Greca
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Amanda de Loyola Greca', NULL, NULL, '2018-05-24', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Amanda de Loyola Greca' AND nascimento = '2018-05-24');
SET @alu_name_birth_amanda_de_loyola_greca_2018_0 = (SELECT id FROM alunos WHERE nome = 'Amanda de Loyola Greca' AND nascimento = '2018-05-24' LIMIT 1);

-- Antonella Gonçalves Machado
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Antonella Gonçalves Machado', NULL, NULL, '2018-02-08', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Antonella Gonçalves Machado' AND nascimento = '2018-02-08');
SET @alu_name_birth_antonella_goncalves_machado_2 = (SELECT id FROM alunos WHERE nome = 'Antonella Gonçalves Machado' AND nascimento = '2018-02-08' LIMIT 1);

-- Antonella Perfeito Falavina Dias
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Antonella Perfeito Falavina Dias', NULL, NULL, '2023-01-11', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Antonella Perfeito Falavina Dias' AND nascimento = '2023-01-11');
SET @alu_name_birth_antonella_perfeito_falavina_d = (SELECT id FROM alunos WHERE nome = 'Antonella Perfeito Falavina Dias' AND nascimento = '2023-01-11' LIMIT 1);

-- Antonio Spitz Rorato Baron
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Antonio Spitz Rorato Baron', NULL, NULL, '2020-05-30', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Antonio Spitz Rorato Baron' AND nascimento = '2020-05-30');
SET @alu_name_birth_antonio_spitz_rorato_baron_20 = (SELECT id FROM alunos WHERE nome = 'Antonio Spitz Rorato Baron' AND nascimento = '2020-05-30' LIMIT 1);

-- Arthur Fisbein Katz
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Arthur Fisbein Katz', NULL, NULL, '2019-12-20', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Arthur Fisbein Katz' AND nascimento = '2019-12-20');
SET @alu_name_birth_arthur_fisbein_katz_2019_12_2 = (SELECT id FROM alunos WHERE nome = 'Arthur Fisbein Katz' AND nascimento = '2019-12-20' LIMIT 1);

-- Arthur Fuganti Pereira
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Arthur Fuganti Pereira', NULL, NULL, '2022-05-11', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Arthur Fuganti Pereira' AND nascimento = '2022-05-11');
SET @alu_name_birth_arthur_fuganti_pereira_2022_0 = (SELECT id FROM alunos WHERE nome = 'Arthur Fuganti Pereira' AND nascimento = '2022-05-11' LIMIT 1);

-- Arthur Guerreiro de Souza
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Arthur Guerreiro de Souza', NULL, NULL, '2022-07-29', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Arthur Guerreiro de Souza' AND nascimento = '2022-07-29');
SET @alu_name_birth_arthur_guerreiro_de_souza_202 = (SELECT id FROM alunos WHERE nome = 'Arthur Guerreiro de Souza' AND nascimento = '2022-07-29' LIMIT 1);

-- Augusto Bisetto Correa
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Augusto Bisetto Correa', NULL, NULL, '2017-06-22', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Augusto Bisetto Correa' AND nascimento = '2017-06-22');
SET @alu_name_birth_augusto_bisetto_correa_2017_0 = (SELECT id FROM alunos WHERE nome = 'Augusto Bisetto Correa' AND nascimento = '2017-06-22' LIMIT 1);

-- Augusto Medeiros Ribas
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Augusto Medeiros Ribas', NULL, NULL, '2017-06-26', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Augusto Medeiros Ribas' AND nascimento = '2017-06-26');
SET @alu_name_birth_augusto_medeiros_ribas_2017_0 = (SELECT id FROM alunos WHERE nome = 'Augusto Medeiros Ribas' AND nascimento = '2017-06-26' LIMIT 1);

-- Ayla Crema Camargo
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Ayla Crema Camargo', NULL, NULL, '2021-04-27', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Ayla Crema Camargo' AND nascimento = '2021-04-27');
SET @alu_name_birth_ayla_crema_camargo_2021_04_27 = (SELECT id FROM alunos WHERE nome = 'Ayla Crema Camargo' AND nascimento = '2021-04-27' LIMIT 1);

-- Ayla Ferraz Novak
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Ayla Ferraz Novak', NULL, NULL, '2017-03-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Ayla Ferraz Novak' AND nascimento = '2017-03-10');
SET @alu_name_birth_ayla_ferraz_novak_2017_03_10 = (SELECT id FROM alunos WHERE nome = 'Ayla Ferraz Novak' AND nascimento = '2017-03-10' LIMIT 1);

-- Bárbara Kulka de Souza
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Bárbara Kulka de Souza', NULL, NULL, '2015-06-20', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Bárbara Kulka de Souza' AND nascimento = '2015-06-20');
SET @alu_name_birth_barbara_kulka_de_souza_2015_0 = (SELECT id FROM alunos WHERE nome = 'Bárbara Kulka de Souza' AND nascimento = '2015-06-20' LIMIT 1);

-- Beatriz Krebs Dias
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Beatriz Krebs Dias', NULL, NULL, '2012-12-21', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Beatriz Krebs Dias' AND nascimento = '2012-12-21');
SET @alu_name_birth_beatriz_krebs_dias_2012_12_21 = (SELECT id FROM alunos WHERE nome = 'Beatriz Krebs Dias' AND nascimento = '2012-12-21' LIMIT 1);

-- Benjamin Fisbein Katz
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Benjamin Fisbein Katz', NULL, NULL, '2023-03-30', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Benjamin Fisbein Katz' AND nascimento = '2023-03-30');
SET @alu_name_birth_benjamin_fisbein_katz_2023_03 = (SELECT id FROM alunos WHERE nome = 'Benjamin Fisbein Katz' AND nascimento = '2023-03-30' LIMIT 1);

-- Bento Trento Magacho
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Bento Trento Magacho', NULL, NULL, '2015-01-14', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Bento Trento Magacho' AND nascimento = '2015-01-14');
SET @alu_name_birth_bento_trento_magacho_2015_01_ = (SELECT id FROM alunos WHERE nome = 'Bento Trento Magacho' AND nascimento = '2015-01-14' LIMIT 1);

-- Bernardo Sichelschimidt de Oliveira
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Bernardo Sichelschimidt de Oliveira', NULL, NULL, '2018-06-11', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Bernardo Sichelschimidt de Oliveira' AND nascimento = '2018-06-11');
SET @alu_name_birth_bernardo_sichelschimidt_de_ol = (SELECT id FROM alunos WHERE nome = 'Bernardo Sichelschimidt de Oliveira' AND nascimento = '2018-06-11' LIMIT 1);

-- Bianca Gauer Marchini
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Bianca Gauer Marchini', NULL, NULL, '2019-07-17', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Bianca Gauer Marchini' AND nascimento = '2019-07-17');
SET @alu_name_birth_bianca_gauer_marchini_2019_07 = (SELECT id FROM alunos WHERE nome = 'Bianca Gauer Marchini' AND nascimento = '2019-07-17' LIMIT 1);

-- Bianca Gauer Marchini
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Bianca Gauer Marchini', NULL, NULL, '2019-11-25', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Bianca Gauer Marchini' AND nascimento = '2019-11-25');
SET @alu_name_birth_bianca_gauer_marchini_2019_11 = (SELECT id FROM alunos WHERE nome = 'Bianca Gauer Marchini' AND nascimento = '2019-11-25' LIMIT 1);

-- Catarina Bisetto Corrêa
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Catarina Bisetto Corrêa', NULL, NULL, '2015-05-11', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Catarina Bisetto Corrêa' AND nascimento = '2015-05-11');
SET @alu_name_birth_catarina_bisetto_correa_2015_ = (SELECT id FROM alunos WHERE nome = 'Catarina Bisetto Corrêa' AND nascimento = '2015-05-11' LIMIT 1);

-- Catarina Favaro Alves
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Catarina Favaro Alves', NULL, NULL, '2015-07-28', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Catarina Favaro Alves' AND nascimento = '2015-07-28');
SET @alu_name_birth_catarina_favaro_alves_2015_07 = (SELECT id FROM alunos WHERE nome = 'Catarina Favaro Alves' AND nascimento = '2015-07-28' LIMIT 1);

-- Catarina Rezzadori Valdez
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Catarina Rezzadori Valdez', NULL, NULL, '2015-12-07', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Catarina Rezzadori Valdez' AND nascimento = '2015-12-07');
SET @alu_name_birth_catarina_rezzadori_valdez_201 = (SELECT id FROM alunos WHERE nome = 'Catarina Rezzadori Valdez' AND nascimento = '2015-12-07' LIMIT 1);

-- Cecilia Zaninelli de Araujo
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Cecilia Zaninelli de Araujo', NULL, NULL, '2016-11-22', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Cecilia Zaninelli de Araujo' AND nascimento = '2016-11-22');
SET @alu_name_birth_cecilia_zaninelli_de_araujo_2 = (SELECT id FROM alunos WHERE nome = 'Cecilia Zaninelli de Araujo' AND nascimento = '2016-11-22' LIMIT 1);

-- Clara Demeterco Pessoa
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Clara Demeterco Pessoa', NULL, NULL, '2018-09-14', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Clara Demeterco Pessoa' AND nascimento = '2018-09-14');
SET @alu_name_birth_clara_demeterco_pessoa_2018_0 = (SELECT id FROM alunos WHERE nome = 'Clara Demeterco Pessoa' AND nascimento = '2018-09-14' LIMIT 1);

-- Clarice Arend Schmidt
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Clarice Arend Schmidt', NULL, NULL, '2022-01-03', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Clarice Arend Schmidt' AND nascimento = '2022-01-03');
SET @alu_name_birth_clarice_arend_schmidt_2022_01 = (SELECT id FROM alunos WHERE nome = 'Clarice Arend Schmidt' AND nascimento = '2022-01-03' LIMIT 1);

-- Daniel Zaninelli de Araujo
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Daniel Zaninelli de Araujo', NULL, NULL, '2018-03-27', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Daniel Zaninelli de Araujo' AND nascimento = '2018-03-27');
SET @alu_name_birth_daniel_zaninelli_de_araujo_20 = (SELECT id FROM alunos WHERE nome = 'Daniel Zaninelli de Araujo' AND nascimento = '2018-03-27' LIMIT 1);

-- Diana dos Santos Pellanda
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Diana dos Santos Pellanda', NULL, NULL, '2014-12-13', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Diana dos Santos Pellanda' AND nascimento = '2014-12-13');
SET @alu_name_birth_diana_dos_santos_pellanda_201 = (SELECT id FROM alunos WHERE nome = 'Diana dos Santos Pellanda' AND nascimento = '2014-12-13' LIMIT 1);

-- Diana Zuffo Falkemback
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Diana Zuffo Falkemback', NULL, NULL, '2018-05-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Diana Zuffo Falkemback' AND nascimento = '2018-05-10');
SET @alu_name_birth_diana_zuffo_falkemback_2018_0 = (SELECT id FROM alunos WHERE nome = 'Diana Zuffo Falkemback' AND nascimento = '2018-05-10' LIMIT 1);

-- Enzo Filippetto Brenner Kraemer
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Enzo Filippetto Brenner Kraemer', NULL, NULL, '2015-06-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Enzo Filippetto Brenner Kraemer' AND nascimento = '2015-06-10');
SET @alu_name_birth_enzo_filippetto_brenner_kraem = (SELECT id FROM alunos WHERE nome = 'Enzo Filippetto Brenner Kraemer' AND nascimento = '2015-06-10' LIMIT 1);

-- Escola Kambalhota
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Escola Kambalhota', NULL, NULL, '2012-12-12', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Escola Kambalhota' AND nascimento = '2012-12-12');
SET @alu_name_birth_escola_kambalhota_2012_12_12 = (SELECT id FROM alunos WHERE nome = 'Escola Kambalhota' AND nascimento = '2012-12-12' LIMIT 1);

-- Escola Kids
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Escola Kids', NULL, NULL, '2025-12-12', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Escola Kids' AND nascimento = '2025-12-12');
SET @alu_name_birth_escola_kids_2025_12_12 = (SELECT id FROM alunos WHERE nome = 'Escola Kids' AND nascimento = '2025-12-12' LIMIT 1);

-- Estela do Nascimento Cardoso
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Estela do Nascimento Cardoso', NULL, NULL, '2019-04-25', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Estela do Nascimento Cardoso' AND nascimento = '2019-04-25');
SET @alu_name_birth_estela_do_nascimento_cardoso_ = (SELECT id FROM alunos WHERE nome = 'Estela do Nascimento Cardoso' AND nascimento = '2019-04-25' LIMIT 1);

-- Esther Fogaça dos Santos
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Esther Fogaça dos Santos', NULL, NULL, '2015-01-09', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Esther Fogaça dos Santos' AND nascimento = '2015-01-09');
SET @alu_name_birth_esther_fogaca_dos_santos_2015 = (SELECT id FROM alunos WHERE nome = 'Esther Fogaça dos Santos' AND nascimento = '2015-01-09' LIMIT 1);

-- Gabriel de Masi Nogueira
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Gabriel de Masi Nogueira', NULL, NULL, '2022-02-07', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Gabriel de Masi Nogueira' AND nascimento = '2022-02-07');
SET @alu_name_birth_gabriel_de_masi_nogueira_2022 = (SELECT id FROM alunos WHERE nome = 'Gabriel de Masi Nogueira' AND nascimento = '2022-02-07' LIMIT 1);

-- Gabriel Favaretto Ruppel
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Gabriel Favaretto Ruppel', NULL, NULL, '2020-05-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Gabriel Favaretto Ruppel' AND nascimento = '2020-05-10');
SET @alu_name_birth_gabriel_favaretto_ruppel_2020 = (SELECT id FROM alunos WHERE nome = 'Gabriel Favaretto Ruppel' AND nascimento = '2020-05-10' LIMIT 1);

-- Gabriel Guerreiro de Souza
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Gabriel Guerreiro de Souza', NULL, NULL, '2020-03-13', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Gabriel Guerreiro de Souza' AND nascimento = '2020-03-13');
SET @alu_name_birth_gabriel_guerreiro_de_souza_20 = (SELECT id FROM alunos WHERE nome = 'Gabriel Guerreiro de Souza' AND nascimento = '2020-03-13' LIMIT 1);

-- Gabriela Greggio Corrêa
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Gabriela Greggio Corrêa', NULL, NULL, '2016-12-08', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Gabriela Greggio Corrêa' AND nascimento = '2016-12-08');
SET @alu_name_birth_gabriela_greggio_correa_2016_ = (SELECT id FROM alunos WHERE nome = 'Gabriela Greggio Corrêa' AND nascimento = '2016-12-08' LIMIT 1);

-- Giovanna Cristina Leinig de Almeida Benassi Romani
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Giovanna Cristina Leinig de Almeida Benassi Romani', NULL, NULL, '2023-09-01', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Giovanna Cristina Leinig de Almeida Benassi Romani' AND nascimento = '2023-09-01');
SET @alu_name_birth_giovanna_cristina_leinig_de_a = (SELECT id FROM alunos WHERE nome = 'Giovanna Cristina Leinig de Almeida Benassi Romani' AND nascimento = '2023-09-01' LIMIT 1);

-- Giuseppe Piegel Ferreira
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Giuseppe Piegel Ferreira', NULL, NULL, '2021-08-22', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Giuseppe Piegel Ferreira' AND nascimento = '2021-08-22');
SET @alu_name_birth_giuseppe_piegel_ferreira_2021 = (SELECT id FROM alunos WHERE nome = 'Giuseppe Piegel Ferreira' AND nascimento = '2021-08-22' LIMIT 1);

-- Gloria Guimarães Da Costa Benato
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Gloria Guimarães Da Costa Benato', NULL, NULL, '2019-05-04', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Gloria Guimarães Da Costa Benato' AND nascimento = '2019-05-04');
SET @alu_name_birth_gloria_guimaraes_da_costa_ben = (SELECT id FROM alunos WHERE nome = 'Gloria Guimarães Da Costa Benato' AND nascimento = '2019-05-04' LIMIT 1);

-- Gregório Abeling de Camargo
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Gregório Abeling de Camargo', NULL, NULL, '2025-02-13', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Gregório Abeling de Camargo' AND nascimento = '2025-02-13');
SET @alu_name_birth_gregorio_abeling_de_camargo_2 = (SELECT id FROM alunos WHERE nome = 'Gregório Abeling de Camargo' AND nascimento = '2025-02-13' LIMIT 1);

-- Guilherme Pedroso Dresch
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Guilherme Pedroso Dresch', NULL, NULL, '2017-05-06', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Guilherme Pedroso Dresch' AND nascimento = '2017-05-06');
SET @alu_name_birth_guilherme_pedroso_dresch_2017 = (SELECT id FROM alunos WHERE nome = 'Guilherme Pedroso Dresch' AND nascimento = '2017-05-06' LIMIT 1);

-- Gustavo Becker Cordeiro
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Gustavo Becker Cordeiro', NULL, NULL, '2015-01-08', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Gustavo Becker Cordeiro' AND nascimento = '2015-01-08');
SET @alu_name_birth_gustavo_becker_cordeiro_2015_ = (SELECT id FROM alunos WHERE nome = 'Gustavo Becker Cordeiro' AND nascimento = '2015-01-08' LIMIT 1);

-- Gustavo Milani Weyll
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Gustavo Milani Weyll', NULL, NULL, '2018-10-25', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Gustavo Milani Weyll' AND nascimento = '2018-10-25');
SET @alu_name_birth_gustavo_milani_weyll_2018_10_ = (SELECT id FROM alunos WHERE nome = 'Gustavo Milani Weyll' AND nascimento = '2018-10-25' LIMIT 1);

-- Heitor Bento Ferrari Burkoot
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Heitor Bento Ferrari Burkoot', NULL, NULL, '2023-01-26', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Heitor Bento Ferrari Burkoot' AND nascimento = '2023-01-26');
SET @alu_name_birth_heitor_bento_ferrari_burkoot_ = (SELECT id FROM alunos WHERE nome = 'Heitor Bento Ferrari Burkoot' AND nascimento = '2023-01-26' LIMIT 1);

-- Heitor Tonatto Fernandes
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Heitor Tonatto Fernandes', NULL, NULL, '2022-08-19', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Heitor Tonatto Fernandes' AND nascimento = '2022-08-19');
SET @alu_name_birth_heitor_tonatto_fernandes_2022 = (SELECT id FROM alunos WHERE nome = 'Heitor Tonatto Fernandes' AND nascimento = '2022-08-19' LIMIT 1);

-- Helena da Silva Rosina
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Helena da Silva Rosina', NULL, NULL, '2019-07-03', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Helena da Silva Rosina' AND nascimento = '2019-07-03');
SET @alu_name_birth_helena_da_silva_rosina_2019_0 = (SELECT id FROM alunos WHERE nome = 'Helena da Silva Rosina' AND nascimento = '2019-07-03' LIMIT 1);

-- Helena Longo De Camargo
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Helena Longo De Camargo', NULL, NULL, '2016-08-12', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Helena Longo De Camargo' AND nascimento = '2016-08-12');
SET @alu_name_birth_helena_longo_de_camargo_2016_ = (SELECT id FROM alunos WHERE nome = 'Helena Longo De Camargo' AND nascimento = '2016-08-12' LIMIT 1);

-- Helena Monteiro Mengue
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Helena Monteiro Mengue', NULL, NULL, '2020-02-05', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Helena Monteiro Mengue' AND nascimento = '2020-02-05');
SET @alu_name_birth_helena_monteiro_mengue_2020_0 = (SELECT id FROM alunos WHERE nome = 'Helena Monteiro Mengue' AND nascimento = '2020-02-05' LIMIT 1);

-- Henrique Favareto Cerqueira Leite
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Henrique Favareto Cerqueira Leite', NULL, NULL, '2020-09-30', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Henrique Favareto Cerqueira Leite' AND nascimento = '2020-09-30');
SET @alu_name_birth_henrique_favareto_cerqueira_l = (SELECT id FROM alunos WHERE nome = 'Henrique Favareto Cerqueira Leite' AND nascimento = '2020-09-30' LIMIT 1);

-- Isabela Anile Mansur
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Isabela Anile Mansur', NULL, NULL, '2024-05-12', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Isabela Anile Mansur' AND nascimento = '2024-05-12');
SET @alu_name_birth_isabela_anile_mansur_2024_05_ = (SELECT id FROM alunos WHERE nome = 'Isabela Anile Mansur' AND nascimento = '2024-05-12' LIMIT 1);

-- Isabela Kasaoka Cherbiski
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Isabela Kasaoka Cherbiski', NULL, NULL, '2015-02-05', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Isabela Kasaoka Cherbiski' AND nascimento = '2015-02-05');
SET @alu_name_birth_isabela_kasaoka_cherbiski_201 = (SELECT id FROM alunos WHERE nome = 'Isabela Kasaoka Cherbiski' AND nascimento = '2015-02-05' LIMIT 1);

-- Isabela Mainetti Gabardo
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Isabela Mainetti Gabardo', NULL, NULL, '2020-02-20', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Isabela Mainetti Gabardo' AND nascimento = '2020-02-20');
SET @alu_name_birth_isabela_mainetti_gabardo_2020 = (SELECT id FROM alunos WHERE nome = 'Isabela Mainetti Gabardo' AND nascimento = '2020-02-20' LIMIT 1);

-- Isabela Zavattaro Rezende
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Isabela Zavattaro Rezende', NULL, NULL, '2019-07-04', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Isabela Zavattaro Rezende' AND nascimento = '2019-07-04');
SET @alu_name_birth_isabela_zavattaro_rezende_201 = (SELECT id FROM alunos WHERE nome = 'Isabela Zavattaro Rezende' AND nascimento = '2019-07-04' LIMIT 1);

-- Isabelle Martins Sornas
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Isabelle Martins Sornas', NULL, NULL, '2012-03-28', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Isabelle Martins Sornas' AND nascimento = '2012-03-28');
SET @alu_name_birth_isabelle_martins_sornas_2012_ = (SELECT id FROM alunos WHERE nome = 'Isabelle Martins Sornas' AND nascimento = '2012-03-28' LIMIT 1);

-- Isadora Gonçalves Machado
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Isadora Gonçalves Machado', NULL, NULL, '2021-12-13', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Isadora Gonçalves Machado' AND nascimento = '2021-12-13');
SET @alu_name_birth_isadora_goncalves_machado_202 = (SELECT id FROM alunos WHERE nome = 'Isadora Gonçalves Machado' AND nascimento = '2021-12-13' LIMIT 1);

-- Isadora Medeiros Ribas
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Isadora Medeiros Ribas', NULL, NULL, '2020-05-09', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Isadora Medeiros Ribas' AND nascimento = '2020-05-09');
SET @alu_name_birth_isadora_medeiros_ribas_2020_0 = (SELECT id FROM alunos WHERE nome = 'Isadora Medeiros Ribas' AND nascimento = '2020-05-09' LIMIT 1);

-- Joana Perillo de Melo
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Joana Perillo de Melo', NULL, NULL, '2021-09-15', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Joana Perillo de Melo' AND nascimento = '2021-09-15');
SET @alu_name_birth_joana_perillo_de_melo_2021_09 = (SELECT id FROM alunos WHERE nome = 'Joana Perillo de Melo' AND nascimento = '2021-09-15' LIMIT 1);

-- João Gabriel Perillo de Melo
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'João Gabriel Perillo de Melo', NULL, NULL, '2019-03-05', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'João Gabriel Perillo de Melo' AND nascimento = '2019-03-05');
SET @alu_name_birth_joao_gabriel_perillo_de_melo_ = (SELECT id FROM alunos WHERE nome = 'João Gabriel Perillo de Melo' AND nascimento = '2019-03-05' LIMIT 1);

-- João Vitor Kulka de Souza
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'João Vitor Kulka de Souza', NULL, NULL, '2012-02-03', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'João Vitor Kulka de Souza' AND nascimento = '2012-02-03');
SET @alu_name_birth_joao_vitor_kulka_de_souza_201 = (SELECT id FROM alunos WHERE nome = 'João Vitor Kulka de Souza' AND nascimento = '2012-02-03' LIMIT 1);

-- Joaquim Torrens Campos
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Joaquim Torrens Campos', NULL, NULL, '2023-02-22', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Joaquim Torrens Campos' AND nascimento = '2023-02-22');
SET @alu_name_birth_joaquim_torrens_campos_2023_0 = (SELECT id FROM alunos WHERE nome = 'Joaquim Torrens Campos' AND nascimento = '2023-02-22' LIMIT 1);

-- Laura Dubas Matocheck
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Laura Dubas Matocheck', NULL, NULL, '2022-11-18', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Laura Dubas Matocheck' AND nascimento = '2022-11-18');
SET @alu_name_birth_laura_dubas_matocheck_2022_11 = (SELECT id FROM alunos WHERE nome = 'Laura Dubas Matocheck' AND nascimento = '2022-11-18' LIMIT 1);

-- Laura Marcondes Ribas Zini
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Laura Marcondes Ribas Zini', NULL, NULL, '2017-03-24', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Laura Marcondes Ribas Zini' AND nascimento = '2017-03-24');
SET @alu_name_birth_laura_marcondes_ribas_zini_20 = (SELECT id FROM alunos WHERE nome = 'Laura Marcondes Ribas Zini' AND nascimento = '2017-03-24' LIMIT 1);

-- Layla Glass da Fonseca Silva
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Layla Glass da Fonseca Silva', NULL, NULL, '2021-11-27', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Layla Glass da Fonseca Silva' AND nascimento = '2021-11-27');
SET @alu_name_birth_layla_glass_da_fonseca_silva_ = (SELECT id FROM alunos WHERE nome = 'Layla Glass da Fonseca Silva' AND nascimento = '2021-11-27' LIMIT 1);

-- Livia Malucelli
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Livia Malucelli', NULL, NULL, '2020-07-07', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Livia Malucelli' AND nascimento = '2020-07-07');
SET @alu_name_birth_livia_malucelli_2020_07_07 = (SELECT id FROM alunos WHERE nome = 'Livia Malucelli' AND nascimento = '2020-07-07' LIMIT 1);

-- Livia Malucelli
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Livia Malucelli', NULL, NULL, '2016-10-01', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Livia Malucelli' AND nascimento = '2016-10-01');
SET @alu_name_birth_livia_malucelli_2016_10_01 = (SELECT id FROM alunos WHERE nome = 'Livia Malucelli' AND nascimento = '2016-10-01' LIMIT 1);

-- Lorenzo Fidelis Lopes
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Lorenzo Fidelis Lopes', NULL, NULL, '2015-04-11', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Lorenzo Fidelis Lopes' AND nascimento = '2015-04-11');
SET @alu_name_birth_lorenzo_fidelis_lopes_2015_04 = (SELECT id FROM alunos WHERE nome = 'Lorenzo Fidelis Lopes' AND nascimento = '2015-04-11' LIMIT 1);

-- Louise Martins Sornas
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Louise Martins Sornas', NULL, NULL, '2014-10-14', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Louise Martins Sornas' AND nascimento = '2014-10-14');
SET @alu_name_birth_louise_martins_sornas_2014_10 = (SELECT id FROM alunos WHERE nome = 'Louise Martins Sornas' AND nascimento = '2014-10-14' LIMIT 1);

-- Luana Fernandes Paiva
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luana Fernandes Paiva', NULL, NULL, '2010-05-18', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luana Fernandes Paiva' AND nascimento = '2010-05-18');
SET @alu_name_birth_luana_fernandes_paiva_2010_05 = (SELECT id FROM alunos WHERE nome = 'Luana Fernandes Paiva' AND nascimento = '2010-05-18' LIMIT 1);

-- Luca Gauer Marchini
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luca Gauer Marchini', NULL, NULL, '2019-07-17', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luca Gauer Marchini' AND nascimento = '2019-07-17');
SET @alu_name_birth_luca_gauer_marchini_2019_07_1 = (SELECT id FROM alunos WHERE nome = 'Luca Gauer Marchini' AND nascimento = '2019-07-17' LIMIT 1);

-- Luca Gauer Marchini
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luca Gauer Marchini', NULL, NULL, '2019-11-25', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luca Gauer Marchini' AND nascimento = '2019-11-25');
SET @alu_name_birth_luca_gauer_marchini_2019_11_2 = (SELECT id FROM alunos WHERE nome = 'Luca Gauer Marchini' AND nascimento = '2019-11-25' LIMIT 1);

-- Luca Spitz Rorato Baron
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luca Spitz Rorato Baron', NULL, NULL, '2022-02-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luca Spitz Rorato Baron' AND nascimento = '2022-02-10');
SET @alu_name_birth_luca_spitz_rorato_baron_2022_ = (SELECT id FROM alunos WHERE nome = 'Luca Spitz Rorato Baron' AND nascimento = '2022-02-10' LIMIT 1);

-- Lucas Crippa Mazzarotto
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Lucas Crippa Mazzarotto', NULL, NULL, '2024-02-22', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Lucas Crippa Mazzarotto' AND nascimento = '2024-02-22');
SET @alu_name_birth_lucas_crippa_mazzarotto_2024_ = (SELECT id FROM alunos WHERE nome = 'Lucas Crippa Mazzarotto' AND nascimento = '2024-02-22' LIMIT 1);

-- Lucas Gallego Tavares
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Lucas Gallego Tavares', NULL, NULL, '2019-05-08', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Lucas Gallego Tavares' AND nascimento = '2019-05-08');
SET @alu_name_birth_lucas_gallego_tavares_2019_05 = (SELECT id FROM alunos WHERE nome = 'Lucas Gallego Tavares' AND nascimento = '2019-05-08' LIMIT 1);

-- Lucas Henrique Simões
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Lucas Henrique Simões', NULL, NULL, '2020-01-06', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Lucas Henrique Simões' AND nascimento = '2020-01-06');
SET @alu_name_birth_lucas_henrique_simoes_2020_01 = (SELECT id FROM alunos WHERE nome = 'Lucas Henrique Simões' AND nascimento = '2020-01-06' LIMIT 1);

-- Lucas Zavattaro Rezende
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Lucas Zavattaro Rezende', NULL, NULL, '2019-07-04', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Lucas Zavattaro Rezende' AND nascimento = '2019-07-04');
SET @alu_name_birth_lucas_zavattaro_rezende_2019_ = (SELECT id FROM alunos WHERE nome = 'Lucas Zavattaro Rezende' AND nascimento = '2019-07-04' LIMIT 1);

-- Lucca Fidelis Lopes
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Lucca Fidelis Lopes', NULL, NULL, '2017-01-07', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Lucca Fidelis Lopes' AND nascimento = '2017-01-07');
SET @alu_name_birth_lucca_fidelis_lopes_2017_01_0 = (SELECT id FROM alunos WHERE nome = 'Lucca Fidelis Lopes' AND nascimento = '2017-01-07' LIMIT 1);

-- Lucca Maggi Verussa
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Lucca Maggi Verussa', NULL, NULL, '2018-09-11', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Lucca Maggi Verussa' AND nascimento = '2018-09-11');
SET @alu_name_birth_lucca_maggi_verussa_2018_09_1 = (SELECT id FROM alunos WHERE nome = 'Lucca Maggi Verussa' AND nascimento = '2018-09-11' LIMIT 1);

-- Luisa Malucelli
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luisa Malucelli', NULL, NULL, '2016-10-01', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luisa Malucelli' AND nascimento = '2016-10-01');
SET @alu_name_birth_luisa_malucelli_2016_10_01 = (SELECT id FROM alunos WHERE nome = 'Luisa Malucelli' AND nascimento = '2016-10-01' LIMIT 1);

-- Luiz Cé Neto
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luiz Cé Neto', NULL, NULL, '2015-10-26', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luiz Cé Neto' AND nascimento = '2015-10-26');
SET @alu_name_birth_luiz_ce_neto_2015_10_26 = (SELECT id FROM alunos WHERE nome = 'Luiz Cé Neto' AND nascimento = '2015-10-26' LIMIT 1);

-- Luiz Cé Neto
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luiz Cé Neto', NULL, NULL, '2015-12-26', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luiz Cé Neto' AND nascimento = '2015-12-26');
SET @alu_name_birth_luiz_ce_neto_2015_12_26 = (SELECT id FROM alunos WHERE nome = 'Luiz Cé Neto' AND nascimento = '2015-12-26' LIMIT 1);

-- Luiza Centurion Skraba
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luiza Centurion Skraba', NULL, NULL, '2017-08-30', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luiza Centurion Skraba' AND nascimento = '2017-08-30');
SET @alu_name_birth_luiza_centurion_skraba_2017_0 = (SELECT id FROM alunos WHERE nome = 'Luiza Centurion Skraba' AND nascimento = '2017-08-30' LIMIT 1);

-- Luiza Garbin Lima
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luiza Garbin Lima', NULL, NULL, '2020-09-02', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luiza Garbin Lima' AND nascimento = '2020-09-02');
SET @alu_name_birth_luiza_garbin_lima_2020_09_02 = (SELECT id FROM alunos WHERE nome = 'Luiza Garbin Lima' AND nascimento = '2020-09-02' LIMIT 1);

-- Luiza Santos Andor
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Luiza Santos Andor', NULL, NULL, '2016-04-21', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Luiza Santos Andor' AND nascimento = '2016-04-21');
SET @alu_name_birth_luiza_santos_andor_2016_04_21 = (SELECT id FROM alunos WHERE nome = 'Luiza Santos Andor' AND nascimento = '2016-04-21' LIMIT 1);

-- Manoel Cassio Antunes
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Manoel Cassio Antunes', NULL, NULL, '2015-05-13', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Manoel Cassio Antunes' AND nascimento = '2015-05-13');
SET @alu_name_birth_manoel_cassio_antunes_2015_05 = (SELECT id FROM alunos WHERE nome = 'Manoel Cassio Antunes' AND nascimento = '2015-05-13' LIMIT 1);

-- Manuella Matzenbacher Roda
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Manuella Matzenbacher Roda', NULL, NULL, '2020-01-11', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Manuella Matzenbacher Roda' AND nascimento = '2020-01-11');
SET @alu_name_birth_manuella_matzenbacher_roda_20 = (SELECT id FROM alunos WHERE nome = 'Manuella Matzenbacher Roda' AND nascimento = '2020-01-11' LIMIT 1);

-- Marcella Bonatto Urbano
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Marcella Bonatto Urbano', NULL, NULL, '2021-09-03', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Marcella Bonatto Urbano' AND nascimento = '2021-09-03');
SET @alu_name_birth_marcella_bonatto_urbano_2021_ = (SELECT id FROM alunos WHERE nome = 'Marcella Bonatto Urbano' AND nascimento = '2021-09-03' LIMIT 1);

-- Maria Clara Pimentel Pereira e Miguel Pimentel Pereira
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Maria Clara Pimentel Pereira e Miguel Pimentel Pereira', NULL, NULL, '2018-12-21', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Maria Clara Pimentel Pereira e Miguel Pimentel Pereira' AND nascimento = '2018-12-21');
SET @alu_name_birth_maria_clara_pimentel_pereira_ = (SELECT id FROM alunos WHERE nome = 'Maria Clara Pimentel Pereira e Miguel Pimentel Pereira' AND nascimento = '2018-12-21' LIMIT 1);

-- Maria Eduarda Coan Fidelis Alvea
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Maria Eduarda Coan Fidelis Alvea', NULL, NULL, '2018-01-06', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Maria Eduarda Coan Fidelis Alvea' AND nascimento = '2018-01-06');
SET @alu_name_birth_maria_eduarda_coan_fidelis_al = (SELECT id FROM alunos WHERE nome = 'Maria Eduarda Coan Fidelis Alvea' AND nascimento = '2018-01-06' LIMIT 1);

-- Maria Eduarda Girardi Roesler
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Maria Eduarda Girardi Roesler', NULL, NULL, '2018-04-06', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Maria Eduarda Girardi Roesler' AND nascimento = '2018-04-06');
SET @alu_name_birth_maria_eduarda_girardi_roesler = (SELECT id FROM alunos WHERE nome = 'Maria Eduarda Girardi Roesler' AND nascimento = '2018-04-06' LIMIT 1);

-- Maria Eduarda Mourão Remer Silva
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Maria Eduarda Mourão Remer Silva', NULL, NULL, '2012-10-27', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Maria Eduarda Mourão Remer Silva' AND nascimento = '2012-10-27');
SET @alu_name_birth_maria_eduarda_mourao_remer_si = (SELECT id FROM alunos WHERE nome = 'Maria Eduarda Mourão Remer Silva' AND nascimento = '2012-10-27' LIMIT 1);

-- Maria Luiza Ferreira Primo Pereira Lima
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Maria Luiza Ferreira Primo Pereira Lima', NULL, NULL, '2023-06-26', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Maria Luiza Ferreira Primo Pereira Lima' AND nascimento = '2023-06-26');
SET @alu_name_birth_maria_luiza_ferreira_primo_pe = (SELECT id FROM alunos WHERE nome = 'Maria Luiza Ferreira Primo Pereira Lima' AND nascimento = '2023-06-26' LIMIT 1);

-- Maria Olivia Cassaniga Marim
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Maria Olivia Cassaniga Marim', NULL, NULL, '2018-03-16', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Maria Olivia Cassaniga Marim' AND nascimento = '2018-03-16');
SET @alu_name_birth_maria_olivia_cassaniga_marim_ = (SELECT id FROM alunos WHERE nome = 'Maria Olivia Cassaniga Marim' AND nascimento = '2018-03-16' LIMIT 1);

-- Marina dos Santos Malat
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Marina dos Santos Malat', NULL, NULL, '2016-11-20', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Marina dos Santos Malat' AND nascimento = '2016-11-20');
SET @alu_name_birth_marina_dos_santos_malat_2016_ = (SELECT id FROM alunos WHERE nome = 'Marina dos Santos Malat' AND nascimento = '2016-11-20' LIMIT 1);

-- Mario Grynbaum
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Mario Grynbaum', NULL, NULL, '2017-08-13', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Mario Grynbaum' AND nascimento = '2017-08-13');
SET @alu_name_birth_mario_grynbaum_2017_08_13 = (SELECT id FROM alunos WHERE nome = 'Mario Grynbaum' AND nascimento = '2017-08-13' LIMIT 1);

-- Maya Boiko
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Maya Boiko', NULL, NULL, '2021-07-08', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Maya Boiko' AND nascimento = '2021-07-08');
SET @alu_name_birth_maya_boiko_2021_07_08 = (SELECT id FROM alunos WHERE nome = 'Maya Boiko' AND nascimento = '2021-07-08' LIMIT 1);

-- Maya Rezzadori Valdez
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Maya Rezzadori Valdez', NULL, NULL, '2021-03-30', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Maya Rezzadori Valdez' AND nascimento = '2021-03-30');
SET @alu_name_birth_maya_rezzadori_valdez_2021_03 = (SELECT id FROM alunos WHERE nome = 'Maya Rezzadori Valdez' AND nascimento = '2021-03-30' LIMIT 1);

-- Melina Silva Varjão
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Melina Silva Varjão', NULL, NULL, '2016-08-29', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Melina Silva Varjão' AND nascimento = '2016-08-29');
SET @alu_name_birth_melina_silva_varjao_2016_08_2 = (SELECT id FROM alunos WHERE nome = 'Melina Silva Varjão' AND nascimento = '2016-08-29' LIMIT 1);

-- Micaela Garbin Lima
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Micaela Garbin Lima', NULL, NULL, '2020-09-02', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Micaela Garbin Lima' AND nascimento = '2020-09-02');
SET @alu_name_birth_micaela_garbin_lima_2020_09_0 = (SELECT id FROM alunos WHERE nome = 'Micaela Garbin Lima' AND nascimento = '2020-09-02' LIMIT 1);

-- Miguel Felix Lima
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Miguel Felix Lima', NULL, NULL, '1977-03-05', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Miguel Felix Lima' AND nascimento = '1977-03-05');
SET @alu_name_birth_miguel_felix_lima_1977_03_05 = (SELECT id FROM alunos WHERE nome = 'Miguel Felix Lima' AND nascimento = '1977-03-05' LIMIT 1);

-- Natália Tullio
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Natália Tullio', NULL, NULL, '2018-02-15', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Natália Tullio' AND nascimento = '2018-02-15');
SET @alu_name_birth_natalia_tullio_2018_02_15 = (SELECT id FROM alunos WHERE nome = 'Natália Tullio' AND nascimento = '2018-02-15' LIMIT 1);

-- Nathan Boiko
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Nathan Boiko', NULL, NULL, '2019-08-28', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Nathan Boiko' AND nascimento = '2019-08-28');
SET @alu_name_birth_nathan_boiko_2019_08_28 = (SELECT id FROM alunos WHERE nome = 'Nathan Boiko' AND nascimento = '2019-08-28' LIMIT 1);

-- Nicolas Couto dos Santos da Silva
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Nicolas Couto dos Santos da Silva', NULL, NULL, '2012-10-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Nicolas Couto dos Santos da Silva' AND nascimento = '2012-10-10');
SET @alu_name_birth_nicolas_couto_dos_santos_da_s = (SELECT id FROM alunos WHERE nome = 'Nicolas Couto dos Santos da Silva' AND nascimento = '2012-10-10' LIMIT 1);

-- Paola Carneiro Akiyama
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Paola Carneiro Akiyama', NULL, NULL, '2016-03-01', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Paola Carneiro Akiyama' AND nascimento = '2016-03-01');
SET @alu_name_birth_paola_carneiro_akiyama_2016_0 = (SELECT id FROM alunos WHERE nome = 'Paola Carneiro Akiyama' AND nascimento = '2016-03-01' LIMIT 1);

-- Pedro Carneiro Akiyama
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Pedro Carneiro Akiyama', NULL, NULL, '2018-08-14', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Pedro Carneiro Akiyama' AND nascimento = '2018-08-14');
SET @alu_name_birth_pedro_carneiro_akiyama_2018_0 = (SELECT id FROM alunos WHERE nome = 'Pedro Carneiro Akiyama' AND nascimento = '2018-08-14' LIMIT 1);

-- Pedro Henrique Pimenta Alves
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Pedro Henrique Pimenta Alves', NULL, NULL, '2016-06-15', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Pedro Henrique Pimenta Alves' AND nascimento = '2016-06-15');
SET @alu_name_birth_pedro_henrique_pimenta_alves_ = (SELECT id FROM alunos WHERE nome = 'Pedro Henrique Pimenta Alves' AND nascimento = '2016-06-15' LIMIT 1);

-- Priscilla Raquel Fogaça dos Santos
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Priscilla Raquel Fogaça dos Santos', NULL, NULL, '1980-10-02', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Priscilla Raquel Fogaça dos Santos' AND nascimento = '1980-10-02');
SET @alu_name_birth_priscilla_raquel_fogaca_dos_s = (SELECT id FROM alunos WHERE nome = 'Priscilla Raquel Fogaça dos Santos' AND nascimento = '1980-10-02' LIMIT 1);

-- Rafaela Favareto Cerqueira Leite
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Rafaela Favareto Cerqueira Leite', NULL, NULL, '2017-12-18', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Rafaela Favareto Cerqueira Leite' AND nascimento = '2017-12-18');
SET @alu_name_birth_rafaela_favareto_cerqueira_le = (SELECT id FROM alunos WHERE nome = 'Rafaela Favareto Cerqueira Leite' AND nascimento = '2017-12-18' LIMIT 1);

-- Ravi Silvestre Franco
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Ravi Silvestre Franco', NULL, NULL, '2022-09-22', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Ravi Silvestre Franco' AND nascimento = '2022-09-22');
SET @alu_name_birth_ravi_silvestre_franco_2022_09 = (SELECT id FROM alunos WHERE nome = 'Ravi Silvestre Franco' AND nascimento = '2022-09-22' LIMIT 1);

-- Rebeca Rubbo Pereira Cardoso
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Rebeca Rubbo Pereira Cardoso', NULL, NULL, '2017-06-15', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Rebeca Rubbo Pereira Cardoso' AND nascimento = '2017-06-15');
SET @alu_name_birth_rebeca_rubbo_pereira_cardoso_ = (SELECT id FROM alunos WHERE nome = 'Rebeca Rubbo Pereira Cardoso' AND nascimento = '2017-06-15' LIMIT 1);

-- Rodrigo Grynbaum
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Rodrigo Grynbaum', NULL, NULL, '2019-03-29', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Rodrigo Grynbaum' AND nascimento = '2019-03-29');
SET @alu_name_birth_rodrigo_grynbaum_2019_03_29 = (SELECT id FROM alunos WHERE nome = 'Rodrigo Grynbaum' AND nascimento = '2019-03-29' LIMIT 1);

-- Samuel Rawlyk Lopes Ribeiro
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Samuel Rawlyk Lopes Ribeiro', NULL, NULL, '2015-06-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Samuel Rawlyk Lopes Ribeiro' AND nascimento = '2015-06-10');
SET @alu_name_birth_samuel_rawlyk_lopes_ribeiro_2 = (SELECT id FROM alunos WHERE nome = 'Samuel Rawlyk Lopes Ribeiro' AND nascimento = '2015-06-10' LIMIT 1);

-- Serena Passalacqua Laurentino Pereira
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Serena Passalacqua Laurentino Pereira', NULL, NULL, '2018-11-09', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Serena Passalacqua Laurentino Pereira' AND nascimento = '2018-11-09');
SET @alu_name_birth_serena_passalacqua_laurentino = (SELECT id FROM alunos WHERE nome = 'Serena Passalacqua Laurentino Pereira' AND nascimento = '2018-11-09' LIMIT 1);

-- Sofia de Biagi Cerci
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Sofia de Biagi Cerci', NULL, NULL, '2023-04-27', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Sofia de Biagi Cerci' AND nascimento = '2023-04-27');
SET @alu_name_birth_sofia_de_biagi_cerci_2023_04_ = (SELECT id FROM alunos WHERE nome = 'Sofia de Biagi Cerci' AND nascimento = '2023-04-27' LIMIT 1);

-- Sofia Pereira de Morais
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Sofia Pereira de Morais', NULL, NULL, '2015-08-03', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Sofia Pereira de Morais' AND nascimento = '2015-08-03');
SET @alu_name_birth_sofia_pereira_de_morais_2015_ = (SELECT id FROM alunos WHERE nome = 'Sofia Pereira de Morais' AND nascimento = '2015-08-03' LIMIT 1);

-- Theo Couto dos Santos da Silva
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Theo Couto dos Santos da Silva', NULL, NULL, '2026-10-07', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Theo Couto dos Santos da Silva' AND nascimento = '2026-10-07');
SET @alu_name_birth_theo_couto_dos_santos_da_silv = (SELECT id FROM alunos WHERE nome = 'Theo Couto dos Santos da Silva' AND nascimento = '2026-10-07' LIMIT 1);

-- Théo Tosato Ferreira
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Théo Tosato Ferreira', NULL, NULL, '2015-04-08', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Théo Tosato Ferreira' AND nascimento = '2015-04-08');
SET @alu_name_birth_theo_tosato_ferreira_2015_04_ = (SELECT id FROM alunos WHERE nome = 'Théo Tosato Ferreira' AND nascimento = '2015-04-08' LIMIT 1);

-- Valentina Becker Cordeiro
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Valentina Becker Cordeiro', NULL, NULL, '2018-06-23', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Valentina Becker Cordeiro' AND nascimento = '2018-06-23');
SET @alu_name_birth_valentina_becker_cordeiro_201 = (SELECT id FROM alunos WHERE nome = 'Valentina Becker Cordeiro' AND nascimento = '2018-06-23' LIMIT 1);

-- Valentina dos Santos Domingos
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Valentina dos Santos Domingos', NULL, NULL, '2022-04-18', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Valentina dos Santos Domingos' AND nascimento = '2022-04-18');
SET @alu_name_birth_valentina_dos_santos_domingos = (SELECT id FROM alunos WHERE nome = 'Valentina dos Santos Domingos' AND nascimento = '2022-04-18' LIMIT 1);

-- Valentina Sperandio Daleffe
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Valentina Sperandio Daleffe', NULL, NULL, '2016-02-10', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Valentina Sperandio Daleffe' AND nascimento = '2016-02-10');
SET @alu_name_birth_valentina_sperandio_daleffe_2 = (SELECT id FROM alunos WHERE nome = 'Valentina Sperandio Daleffe' AND nascimento = '2016-02-10' LIMIT 1);

-- Vicente Lima Bassi
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Vicente Lima Bassi', NULL, NULL, '2017-11-20', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Vicente Lima Bassi' AND nascimento = '2017-11-20');
SET @alu_name_birth_vicente_lima_bassi_2017_11_20 = (SELECT id FROM alunos WHERE nome = 'Vicente Lima Bassi' AND nascimento = '2017-11-20' LIMIT 1);

-- Vinicius Pruner da Silva Martins
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Vinicius Pruner da Silva Martins', NULL, NULL, '2020-07-17', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Vinicius Pruner da Silva Martins' AND nascimento = '2020-07-17');
SET @alu_name_birth_vinicius_pruner_da_silva_mart = (SELECT id FROM alunos WHERE nome = 'Vinicius Pruner da Silva Martins' AND nascimento = '2020-07-17' LIMIT 1);

-- Vinicius Trento Magacho
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Vinicius Trento Magacho', NULL, NULL, '2012-03-02', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Vinicius Trento Magacho' AND nascimento = '2012-03-02');
SET @alu_name_birth_vinicius_trento_magacho_2012_ = (SELECT id FROM alunos WHERE nome = 'Vinicius Trento Magacho' AND nascimento = '2012-03-02' LIMIT 1);

-- Zoe Couto dos Santos da Silva
INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)
SELECT 'Zoe Couto dos Santos da Silva', NULL, NULL, '2021-07-14', TRUE
WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE nome = 'Zoe Couto dos Santos da Silva' AND nascimento = '2021-07-14');
SET @alu_name_birth_zoe_couto_dos_santos_da_silva = (SELECT id FROM alunos WHERE nome = 'Zoe Couto dos Santos da Silva' AND nascimento = '2021-07-14' LIMIT 1);

-- 4. Vinculos cliente/aluno

INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00141067012, @alu_name_birth_diana_zuffo_falkemback_2018_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00392058944, @alu_name_birth_clara_demeterco_pessoa_2018_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00621566918, @alu_name_birth_benjamin_fisbein_katz_2023_03);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00654307946, @alu_name_birth_samuel_rawlyk_lopes_ribeiro_2);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00676175902, @alu_name_birth_rebeca_rubbo_pereira_cardoso_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00770961932, @alu_name_birth_maria_eduarda_girardi_roesler);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00849598940, @alu_name_birth_helena_longo_de_camargo_2016_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00869254901, @alu_name_birth_miguel_felix_lima_1977_03_05);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00915861941, @alu_name_birth_laura_marcondes_ribas_zini_20);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_00975428900, @alu_name_birth_manoel_cassio_antunes_2015_05);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_01019405996, @alu_name_birth_lucas_crippa_mazzarotto_2024_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_01477069984, @alu_name_birth_maria_eduarda_mourao_remer_si);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_01700834975, @alu_name_birth_manuella_matzenbacher_roda_20);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_02174450984, @alu_name_birth_vinicius_pruner_da_silva_mart);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_02174697955, @alu_name_birth_diana_dos_santos_pellanda_201);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_02278835947, @alu_name_birth_natalia_tullio_2018_02_15);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_02729298916, @alu_name_birth_isabela_kasaoka_cherbiski_201);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_02866238974, @alu_name_birth_barbara_kulka_de_souza_2015_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_02866238974, @alu_name_birth_joao_vitor_kulka_de_souza_201);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03008220908, @alu_name_birth_henrique_favareto_cerqueira_l);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03008220908, @alu_name_birth_rafaela_favareto_cerqueira_le);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03023947961, @alu_name_birth_gustavo_becker_cordeiro_2015_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03023947961, @alu_name_birth_valentina_becker_cordeiro_201);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03266166914, @alu_name_birth_isabelle_martins_sornas_2012_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03266166914, @alu_name_birth_louise_martins_sornas_2014_10);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03329247932, @alu_name_birth_enzo_filippetto_brenner_kraem);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03488609944, @alu_name_birth_isabela_mainetti_gabardo_2020);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03540623957, @alu_name_birth_maria_eduarda_coan_fidelis_al);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03643334990, @alu_name_birth_helena_monteiro_mengue_2020_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03718109905, @alu_name_birth_esther_fogaca_dos_santos_2015);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03718109905, @alu_name_birth_priscilla_raquel_fogaca_dos_s);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03719632903, @alu_name_birth_lucca_maggi_verussa_2018_09_1);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03779292980, @alu_name_birth_valentina_dos_santos_domingos);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03785684932, @alu_name_birth_aline_vera_lima_bassi_2015_03);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03785684932, @alu_name_birth_vicente_lima_bassi_2017_11_20);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03833723130, @alu_name_birth_ravi_silvestre_franco_2022_09);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03859218964, @alu_name_birth_marina_dos_santos_malat_2016_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_03872429965, @alu_name_birth_catarina_favaro_alves_2015_07);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04125184909, @alu_name_birth_clarice_arend_schmidt_2022_01);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04132333914, @alu_name_birth_guilherme_pedroso_dresch_2017);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04132729907, @alu_name_birth_amanda_de_loyola_greca_2018_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04150354901, @alu_name_birth_lucas_gallego_tavares_2019_05);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04296555928, @alu_name_birth_augusto_bisetto_correa_2017_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04296555928, @alu_name_birth_catarina_bisetto_correa_2015_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04329226952, @alu_name_birth_giovanna_cristina_leinig_de_a);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04343114996, @alu_name_birth_alice_oliveira_pinto_tomazini);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04350194908, @alu_name_birth_layla_glass_da_fonseca_silva_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04375673974, @alu_name_birth_luana_fernandes_paiva_2010_05);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04385456992, @alu_name_birth_isadora_goncalves_machado_202);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04410925946, @alu_name_birth_gloria_guimaraes_da_costa_ben);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04456487917, @alu_name_birth_helena_da_silva_rosina_2019_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04471465996, @alu_name_birth_augusto_medeiros_ribas_2017_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04471465996, @alu_name_birth_isadora_medeiros_ribas_2020_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04538616958, @alu_name_birth_antonella_perfeito_falavina_d);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04732644988, @alu_name_birth_livia_malucelli_2016_10_01);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04732644988, @alu_name_birth_livia_malucelli_2020_07_07);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04732644988, @alu_name_birth_luisa_malucelli_2016_10_01);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04766182669, @alu_name_birth_marcella_bonatto_urbano_2021_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04795963959, @alu_name_birth_arthur_fuganti_pereira_2022_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04818127922, @alu_name_birth_gabriel_de_masi_nogueira_2022);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04932359900, @alu_name_birth_sofia_de_biagi_cerci_2023_04_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04989193903, @alu_name_birth_bianca_gauer_marchini_2019_11);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_04989193903, @alu_name_birth_luca_gauer_marchini_2019_11_2);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05045931962, @alu_name_birth_maya_boiko_2021_07_08);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05075867944, @alu_name_birth_antonella_goncalves_machado_2);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05091973966, @alu_name_birth_nicolas_couto_dos_santos_da_s);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05091973966, @alu_name_birth_theo_couto_dos_santos_da_silv);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05091973966, @alu_name_birth_zoe_couto_dos_santos_da_silva);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05101817910, @alu_name_birth_luiza_centurion_skraba_2017_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05141580938, @alu_name_birth_cecilia_zaninelli_de_araujo_2);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05141580938, @alu_name_birth_daniel_zaninelli_de_araujo_20);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05290559965, @alu_name_birth_nathan_boiko_2019_08_28);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05368042906, @alu_name_birth_paola_carneiro_akiyama_2016_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05368042906, @alu_name_birth_pedro_carneiro_akiyama_2018_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05387010992, @alu_name_birth_gabriela_greggio_correa_2016_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05674028940, @alu_name_birth_catarina_rezzadori_valdez_201);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05674028940, @alu_name_birth_maya_rezzadori_valdez_2021_03);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05694520904, @alu_name_birth_maria_luiza_ferreira_primo_pe);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05793853960, @alu_name_birth_luiza_garbin_lima_2020_09_02);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05793853960, @alu_name_birth_micaela_garbin_lima_2020_09_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_05998267974, @alu_name_birth_maria_olivia_cassaniga_marim_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06101777103, @alu_name_birth_joana_perillo_de_melo_2021_09);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06101777103, @alu_name_birth_joao_gabriel_perillo_de_melo_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06206515982, @alu_name_birth_gregorio_abeling_de_camargo_2);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06313544927, @alu_name_birth_bernardo_sichelschimidt_de_ol);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06344115947, @alu_name_birth_heitor_tonatto_fernandes_2022);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06388100945, @alu_name_birth_bianca_gauer_marchini_2019_07);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06388100945, @alu_name_birth_luca_gauer_marchini_2019_07_1);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06622157960, @alu_name_birth_antonio_spitz_rorato_baron_20);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06622157960, @alu_name_birth_luca_spitz_rorato_baron_2022_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06642913922, @alu_name_birth_gabriel_favaretto_ruppel_2020);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06664939959, @alu_name_birth_serena_passalacqua_laurentino);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06791257954, @alu_name_birth_estela_do_nascimento_cardoso_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06841989910, @alu_name_birth_luiz_ce_neto_2015_10_26);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06841989910, @alu_name_birth_luiz_ce_neto_2015_12_26);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06847027975, @alu_name_birth_isabela_anile_mansur_2024_05_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_06965760907, @alu_name_birth_alice_silveira_guimaraes_2017);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07024187905, @alu_name_birth_arthur_guerreiro_de_souza_202);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07024187905, @alu_name_birth_gabriel_guerreiro_de_souza_20);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07130432969, @alu_name_birth_theo_tosato_ferreira_2015_04_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07659914979, @alu_name_birth_gustavo_milani_weyll_2018_10_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07685721937, @alu_name_birth_ayla_ferraz_novak_2017_03_10);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07693899960, @alu_name_birth_heitor_bento_ferrari_burkoot_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07726833955, @alu_name_birth_giuseppe_piegel_ferreira_2021);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07797705950, @alu_name_birth_laura_dubas_matocheck_2022_11);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07848378993, @alu_name_birth_sofia_pereira_de_morais_2015_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07877848935, @alu_name_birth_beatriz_krebs_dias_2012_12_21);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_07977934612, @alu_name_birth_joaquim_torrens_campos_2023_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_08827422994, @alu_name_birth_pedro_henrique_pimenta_alves_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_10725235910, @alu_name_birth_lucas_henrique_simoes_2020_01);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_14089735963, @alu_name_birth_escola_kambalhota_2012_12_12);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_31036255883, @alu_name_birth_mario_grynbaum_2017_08_13);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_31036255883, @alu_name_birth_rodrigo_grynbaum_2019_03_29);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_33015427865, @alu_name_birth_melina_silva_varjao_2016_08_2);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_33452508889, @alu_name_birth_luiza_santos_andor_2016_04_21);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_34473054870, @alu_name_birth_maria_clara_pimentel_pereira_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_3505251780710, @alu_name_birth_isabela_zavattaro_rezende_201);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_3505251780710, @alu_name_birth_lucas_zavattaro_rezende_2019_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_51508950830, @alu_name_birth_alice_imazu_maranho_2016_07_1);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_621566918, @alu_name_birth_arthur_fisbein_katz_2019_12_2);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_75832003934, @alu_name_birth_valentina_sperandio_daleffe_2);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_81310020999, @alu_name_birth_escola_kids_2025_12_12);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_86176234115, @alu_name_birth_lorenzo_fidelis_lopes_2015_04);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_86176234115, @alu_name_birth_lucca_fidelis_lopes_2017_01_0);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_89633180104, @alu_name_birth_bento_trento_magacho_2015_01_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_89633180104, @alu_name_birth_vinicius_trento_magacho_2012_);
INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES (@cli_cpf_93786263191, @alu_name_birth_ayla_crema_camargo_2021_04_27);

-- 5. Turmas vigentes 2026

-- Turma Alice Oliveira Pinto Tomazini
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_laura_alves_da_rocha, NULL, 'Turma Alice Oliveira Pinto Tomazini', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Alice Oliveira Pinto Tomazini' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0));
SET @tur_current_alice_oliveira_pinto_tomazini = (SELECT id FROM turmas WHERE nome = 'Turma Alice Oliveira Pinto Tomazini' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0) LIMIT 1);

-- Turma Aline Vera Lima Bassi
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Aline Vera Lima Bassi', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Aline Vera Lima Bassi' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_aline_vera_lima_bassi = (SELECT id FROM turmas WHERE nome = 'Turma Aline Vera Lima Bassi' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Antonella Gonçalves Machado
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Antonella Gonçalves Machado', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Antonella Gonçalves Machado' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_antonella_goncalves_machado = (SELECT id FROM turmas WHERE nome = 'Turma Antonella Gonçalves Machado' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Antonella Perfeito Falavina Dias
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Antonella Perfeito Falavina Dias', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Antonella Perfeito Falavina Dias' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_antonella_perfeito_falavina_dias = (SELECT id FROM turmas WHERE nome = 'Turma Antonella Perfeito Falavina Dias' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Antonio Spitz Rorato Baron
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Antonio Spitz Rorato Baron', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Antonio Spitz Rorato Baron' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_antonio_spitz_rorato_baron = (SELECT id FROM turmas WHERE nome = 'Turma Antonio Spitz Rorato Baron' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Arthur Fisbein Katz
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_clara_cordeiro_santana_maia, NULL, 'Turma Arthur Fisbein Katz', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Arthur Fisbein Katz' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0));
SET @tur_current_arthur_fisbein_katz = (SELECT id FROM turmas WHERE nome = 'Turma Arthur Fisbein Katz' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0) LIMIT 1);

-- Turma Arthur Fuganti Pereira
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_julia_siqueira_de_campos, NULL, 'Turma Arthur Fuganti Pereira', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Arthur Fuganti Pereira' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0));
SET @tur_current_arthur_fuganti_pereira = (SELECT id FROM turmas WHERE nome = 'Turma Arthur Fuganti Pereira' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0) LIMIT 1);

-- Turma Arthur Guerreiro de Souza
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_laura_alves_da_rocha, NULL, 'Turma Arthur Guerreiro de Souza', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Arthur Guerreiro de Souza' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0));
SET @tur_current_arthur_guerreiro_de_souza = (SELECT id FROM turmas WHERE nome = 'Turma Arthur Guerreiro de Souza' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0) LIMIT 1);

-- Turma Augusto Bisetto Correa
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_sofia_daniele_lisboa, NULL, 'Turma Augusto Bisetto Correa', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Augusto Bisetto Correa' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0));
SET @tur_current_augusto_bisetto_correa = (SELECT id FROM turmas WHERE nome = 'Turma Augusto Bisetto Correa' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0) LIMIT 1);

-- Turma Augusto Medeiros Ribas
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Augusto Medeiros Ribas', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Augusto Medeiros Ribas' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_augusto_medeiros_ribas = (SELECT id FROM turmas WHERE nome = 'Turma Augusto Medeiros Ribas' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Bárbara Kulka de Souza
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Bárbara Kulka de Souza', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Bárbara Kulka de Souza' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_barbara_kulka_de_souza = (SELECT id FROM turmas WHERE nome = 'Turma Bárbara Kulka de Souza' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Beatriz Krebs Dias
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_julia_siqueira_de_campos, NULL, 'Turma Beatriz Krebs Dias', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Beatriz Krebs Dias' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0));
SET @tur_current_beatriz_krebs_dias = (SELECT id FROM turmas WHERE nome = 'Turma Beatriz Krebs Dias' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0) LIMIT 1);

-- Turma Benjamin Fisbein Katz
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Benjamin Fisbein Katz', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Benjamin Fisbein Katz' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_benjamin_fisbein_katz = (SELECT id FROM turmas WHERE nome = 'Turma Benjamin Fisbein Katz' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Bernardo Sichelschimidt de Oliveira
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Bernardo Sichelschimidt de Oliveira', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Bernardo Sichelschimidt de Oliveira' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_bernardo_sichelschimidt_de_olive = (SELECT id FROM turmas WHERE nome = 'Turma Bernardo Sichelschimidt de Oliveira' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Bianca Gauer Marchini
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Bianca Gauer Marchini', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Bianca Gauer Marchini' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_bianca_gauer_marchini = (SELECT id FROM turmas WHERE nome = 'Turma Bianca Gauer Marchini' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Catarina Bisetto Corrêa
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_sofia_daniele_lisboa, NULL, 'Turma Catarina Bisetto Corrêa', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Catarina Bisetto Corrêa' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0));
SET @tur_current_catarina_bisetto_correa = (SELECT id FROM turmas WHERE nome = 'Turma Catarina Bisetto Corrêa' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0) LIMIT 1);

-- Turma Catarina Rezzadori Valdez
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_marina_jorge_geiger, NULL, 'Turma Catarina Rezzadori Valdez', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Catarina Rezzadori Valdez' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0));
SET @tur_current_catarina_rezzadori_valdez = (SELECT id FROM turmas WHERE nome = 'Turma Catarina Rezzadori Valdez' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0) LIMIT 1);

-- Turma Cecilia Zaninelli de Araujo
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Cecilia Zaninelli de Araujo', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Cecilia Zaninelli de Araujo' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_cecilia_zaninelli_de_araujo = (SELECT id FROM turmas WHERE nome = 'Turma Cecilia Zaninelli de Araujo' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Clara Demeterco Pessoa
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Clara Demeterco Pessoa', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Clara Demeterco Pessoa' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_clara_demeterco_pessoa = (SELECT id FROM turmas WHERE nome = 'Turma Clara Demeterco Pessoa' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Clarice Arend Schmidt
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_sofia_daniele_lisboa, NULL, 'Turma Clarice Arend Schmidt', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Clarice Arend Schmidt' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0));
SET @tur_current_clarice_arend_schmidt = (SELECT id FROM turmas WHERE nome = 'Turma Clarice Arend Schmidt' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0) LIMIT 1);

-- Turma Daniel Zaninelli de Araujo
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Daniel Zaninelli de Araujo', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Daniel Zaninelli de Araujo' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_daniel_zaninelli_de_araujo = (SELECT id FROM turmas WHERE nome = 'Turma Daniel Zaninelli de Araujo' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Diana dos Santos Pellanda
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Diana dos Santos Pellanda', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Diana dos Santos Pellanda' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_diana_dos_santos_pellanda = (SELECT id FROM turmas WHERE nome = 'Turma Diana dos Santos Pellanda' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Escola Kambalhota
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_clara_cordeiro_santana_maia, NULL, 'Turma Escola Kambalhota', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Escola Kambalhota' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0));
SET @tur_current_escola_kambalhota = (SELECT id FROM turmas WHERE nome = 'Turma Escola Kambalhota' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0) LIMIT 1);

-- Turma Escola Kids
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_clara_cordeiro_santana_maia, NULL, 'Turma Escola Kids', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Escola Kids' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0));
SET @tur_current_escola_kids = (SELECT id FROM turmas WHERE nome = 'Turma Escola Kids' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0) LIMIT 1);

-- Turma Esther Fogaça dos Santos
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_julia_siqueira_de_campos, NULL, 'Turma Esther Fogaça dos Santos', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Esther Fogaça dos Santos' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0));
SET @tur_current_esther_fogaca_dos_santos = (SELECT id FROM turmas WHERE nome = 'Turma Esther Fogaça dos Santos' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0) LIMIT 1);

-- Turma Gabriel Favaretto Ruppel
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_clara_cordeiro_santana_maia, NULL, 'Turma Gabriel Favaretto Ruppel', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Gabriel Favaretto Ruppel' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0));
SET @tur_current_gabriel_favaretto_ruppel = (SELECT id FROM turmas WHERE nome = 'Turma Gabriel Favaretto Ruppel' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0) LIMIT 1);

-- Turma Gabriel Guerreiro de Souza
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_laura_alves_da_rocha, NULL, 'Turma Gabriel Guerreiro de Souza', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Gabriel Guerreiro de Souza' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0));
SET @tur_current_gabriel_guerreiro_de_souza = (SELECT id FROM turmas WHERE nome = 'Turma Gabriel Guerreiro de Souza' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0) LIMIT 1);

-- Turma Gabriela Greggio Corrêa
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Gabriela Greggio Corrêa', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Gabriela Greggio Corrêa' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_gabriela_greggio_correa = (SELECT id FROM turmas WHERE nome = 'Turma Gabriela Greggio Corrêa' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Giuseppe Piegel Ferreira
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Giuseppe Piegel Ferreira', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Giuseppe Piegel Ferreira' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_giuseppe_piegel_ferreira = (SELECT id FROM turmas WHERE nome = 'Turma Giuseppe Piegel Ferreira' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Gloria Guimarães Da Costa Benato
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Gloria Guimarães Da Costa Benato', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Gloria Guimarães Da Costa Benato' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_gloria_guimaraes_da_costa_benato = (SELECT id FROM turmas WHERE nome = 'Turma Gloria Guimarães Da Costa Benato' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Gregório Abeling de Camargo
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Gregório Abeling de Camargo', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Gregório Abeling de Camargo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_gregorio_abeling_de_camargo = (SELECT id FROM turmas WHERE nome = 'Turma Gregório Abeling de Camargo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Guilherme Pedroso Dresch
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Guilherme Pedroso Dresch', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Guilherme Pedroso Dresch' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_guilherme_pedroso_dresch = (SELECT id FROM turmas WHERE nome = 'Turma Guilherme Pedroso Dresch' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Gustavo Becker Cordeiro
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_laura_alves_da_rocha, NULL, 'Turma Gustavo Becker Cordeiro', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Gustavo Becker Cordeiro' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0));
SET @tur_current_gustavo_becker_cordeiro = (SELECT id FROM turmas WHERE nome = 'Turma Gustavo Becker Cordeiro' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0) LIMIT 1);

-- Turma Gustavo Milani Weyll
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_julia_siqueira_de_campos, NULL, 'Turma Gustavo Milani Weyll', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Gustavo Milani Weyll' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0));
SET @tur_current_gustavo_milani_weyll = (SELECT id FROM turmas WHERE nome = 'Turma Gustavo Milani Weyll' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0) LIMIT 1);

-- Turma Heitor Tonatto Fernandes
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Heitor Tonatto Fernandes', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Heitor Tonatto Fernandes' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_heitor_tonatto_fernandes = (SELECT id FROM turmas WHERE nome = 'Turma Heitor Tonatto Fernandes' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Helena Longo De Camargo
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_sofia_daniele_lisboa, NULL, 'Turma Helena Longo De Camargo', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Helena Longo De Camargo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0));
SET @tur_current_helena_longo_de_camargo = (SELECT id FROM turmas WHERE nome = 'Turma Helena Longo De Camargo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0) LIMIT 1);

-- Turma Helena Monteiro Mengue
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_laura_alves_da_rocha, NULL, 'Turma Helena Monteiro Mengue', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Helena Monteiro Mengue' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0));
SET @tur_current_helena_monteiro_mengue = (SELECT id FROM turmas WHERE nome = 'Turma Helena Monteiro Mengue' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0) LIMIT 1);

-- Turma Henrique Favareto Cerqueira Leite
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Henrique Favareto Cerqueira Leite', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Henrique Favareto Cerqueira Leite' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_henrique_favareto_cerqueira_leit = (SELECT id FROM turmas WHERE nome = 'Turma Henrique Favareto Cerqueira Leite' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Isabela Anile Mansur
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_sofia_daniele_lisboa, NULL, 'Turma Isabela Anile Mansur', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Isabela Anile Mansur' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0));
SET @tur_current_isabela_anile_mansur = (SELECT id FROM turmas WHERE nome = 'Turma Isabela Anile Mansur' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0) LIMIT 1);

-- Turma Isabela Kasaoka Cherbiski
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Isabela Kasaoka Cherbiski', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Isabela Kasaoka Cherbiski' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_isabela_kasaoka_cherbiski = (SELECT id FROM turmas WHERE nome = 'Turma Isabela Kasaoka Cherbiski' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Isabela Mainetti Gabardo
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_laura_alves_da_rocha, NULL, 'Turma Isabela Mainetti Gabardo', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Isabela Mainetti Gabardo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0));
SET @tur_current_isabela_mainetti_gabardo = (SELECT id FROM turmas WHERE nome = 'Turma Isabela Mainetti Gabardo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0) LIMIT 1);

-- Turma Isabela Zavattaro Rezende
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Isabela Zavattaro Rezende', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Isabela Zavattaro Rezende' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_isabela_zavattaro_rezende = (SELECT id FROM turmas WHERE nome = 'Turma Isabela Zavattaro Rezende' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Isabelle Martins Sornas
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_sofia_daniele_lisboa, NULL, 'Turma Isabelle Martins Sornas', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Isabelle Martins Sornas' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0));
SET @tur_current_isabelle_martins_sornas = (SELECT id FROM turmas WHERE nome = 'Turma Isabelle Martins Sornas' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0) LIMIT 1);

-- Turma Isadora Gonçalves Machado
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Isadora Gonçalves Machado', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Isadora Gonçalves Machado' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_isadora_goncalves_machado = (SELECT id FROM turmas WHERE nome = 'Turma Isadora Gonçalves Machado' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Isadora Medeiros Ribas
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Isadora Medeiros Ribas', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Isadora Medeiros Ribas' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_isadora_medeiros_ribas = (SELECT id FROM turmas WHERE nome = 'Turma Isadora Medeiros Ribas' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Joana Perillo de Melo
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_marina_jorge_geiger, NULL, 'Turma Joana Perillo de Melo', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Joana Perillo de Melo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0));
SET @tur_current_joana_perillo_de_melo = (SELECT id FROM turmas WHERE nome = 'Turma Joana Perillo de Melo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0) LIMIT 1);

-- Turma João Gabriel Perillo de Melo
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma João Gabriel Perillo de Melo', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma João Gabriel Perillo de Melo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_joao_gabriel_perillo_de_melo = (SELECT id FROM turmas WHERE nome = 'Turma João Gabriel Perillo de Melo' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma João Vitor Kulka de Souza
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma João Vitor Kulka de Souza', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma João Vitor Kulka de Souza' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_joao_vitor_kulka_de_souza = (SELECT id FROM turmas WHERE nome = 'Turma João Vitor Kulka de Souza' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Joaquim Torrens Campos
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Joaquim Torrens Campos', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Joaquim Torrens Campos' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_joaquim_torrens_campos = (SELECT id FROM turmas WHERE nome = 'Turma Joaquim Torrens Campos' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Laura Dubas Matocheck
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Laura Dubas Matocheck', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Laura Dubas Matocheck' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_laura_dubas_matocheck = (SELECT id FROM turmas WHERE nome = 'Turma Laura Dubas Matocheck' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Laura Marcondes Ribas Zini
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Laura Marcondes Ribas Zini', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Laura Marcondes Ribas Zini' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_laura_marcondes_ribas_zini = (SELECT id FROM turmas WHERE nome = 'Turma Laura Marcondes Ribas Zini' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Layla Glass da Fonseca Silva
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Layla Glass da Fonseca Silva', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Layla Glass da Fonseca Silva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_layla_glass_da_fonseca_silva = (SELECT id FROM turmas WHERE nome = 'Turma Layla Glass da Fonseca Silva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Livia Malucelli
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Livia Malucelli', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Livia Malucelli' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_livia_malucelli = (SELECT id FROM turmas WHERE nome = 'Turma Livia Malucelli' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Lorenzo Fidelis Lopes
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Lorenzo Fidelis Lopes', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Lorenzo Fidelis Lopes' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_lorenzo_fidelis_lopes = (SELECT id FROM turmas WHERE nome = 'Turma Lorenzo Fidelis Lopes' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Louise Martins Sornas
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_sofia_daniele_lisboa, NULL, 'Turma Louise Martins Sornas', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Louise Martins Sornas' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0));
SET @tur_current_louise_martins_sornas = (SELECT id FROM turmas WHERE nome = 'Turma Louise Martins Sornas' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0) LIMIT 1);

-- Turma Luana Fernandes Paiva
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Luana Fernandes Paiva', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Luana Fernandes Paiva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_luana_fernandes_paiva = (SELECT id FROM turmas WHERE nome = 'Turma Luana Fernandes Paiva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Luca Gauer Marchini
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Luca Gauer Marchini', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Luca Gauer Marchini' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_luca_gauer_marchini = (SELECT id FROM turmas WHERE nome = 'Turma Luca Gauer Marchini' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Luca Spitz Rorato Baron
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Luca Spitz Rorato Baron', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Luca Spitz Rorato Baron' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_luca_spitz_rorato_baron = (SELECT id FROM turmas WHERE nome = 'Turma Luca Spitz Rorato Baron' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Lucas Crippa Mazzarotto
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Lucas Crippa Mazzarotto', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Lucas Crippa Mazzarotto' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_lucas_crippa_mazzarotto = (SELECT id FROM turmas WHERE nome = 'Turma Lucas Crippa Mazzarotto' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Lucas Gallego Tavares
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Lucas Gallego Tavares', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Lucas Gallego Tavares' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_lucas_gallego_tavares = (SELECT id FROM turmas WHERE nome = 'Turma Lucas Gallego Tavares' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Lucas Henrique Simões
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_sofia_daniele_lisboa, NULL, 'Turma Lucas Henrique Simões', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Lucas Henrique Simões' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0));
SET @tur_current_lucas_henrique_simoes = (SELECT id FROM turmas WHERE nome = 'Turma Lucas Henrique Simões' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_sofia_daniele_lisboa, 0) LIMIT 1);

-- Turma Lucas Zavattaro Rezende
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Lucas Zavattaro Rezende', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Lucas Zavattaro Rezende' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_lucas_zavattaro_rezende = (SELECT id FROM turmas WHERE nome = 'Turma Lucas Zavattaro Rezende' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Lucca Fidelis Lopes
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT NULL, NULL, 'Turma Lucca Fidelis Lopes', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Lucca Fidelis Lopes' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0));
SET @tur_current_lucca_fidelis_lopes = (SELECT id FROM turmas WHERE nome = 'Turma Lucca Fidelis Lopes' AND COALESCE(id_professor, 0) = COALESCE(NULL, 0) LIMIT 1);

-- Turma Luisa Malucelli
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Luisa Malucelli', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Luisa Malucelli' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_luisa_malucelli = (SELECT id FROM turmas WHERE nome = 'Turma Luisa Malucelli' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Luiz Cé Neto
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_julia_siqueira_de_campos, NULL, 'Turma Luiz Cé Neto', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Luiz Cé Neto' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0));
SET @tur_current_luiz_ce_neto = (SELECT id FROM turmas WHERE nome = 'Turma Luiz Cé Neto' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0) LIMIT 1);

-- Turma Luiza Santos Andor
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_clara_cordeiro_santana_maia, NULL, 'Turma Luiza Santos Andor', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Luiza Santos Andor' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0));
SET @tur_current_luiza_santos_andor = (SELECT id FROM turmas WHERE nome = 'Turma Luiza Santos Andor' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0) LIMIT 1);

-- Turma Manoel Cassio Antunes
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Manoel Cassio Antunes', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Manoel Cassio Antunes' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_manoel_cassio_antunes = (SELECT id FROM turmas WHERE nome = 'Turma Manoel Cassio Antunes' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Marcella Bonatto Urbano
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Marcella Bonatto Urbano', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Marcella Bonatto Urbano' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_marcella_bonatto_urbano = (SELECT id FROM turmas WHERE nome = 'Turma Marcella Bonatto Urbano' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Maria Eduarda Coan Fidelis Alvea
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Maria Eduarda Coan Fidelis Alvea', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Maria Eduarda Coan Fidelis Alvea' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_maria_eduarda_coan_fidelis_alvea = (SELECT id FROM turmas WHERE nome = 'Turma Maria Eduarda Coan Fidelis Alvea' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Maria Eduarda Girardi Roesler
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_bruna_greipel, NULL, 'Turma Maria Eduarda Girardi Roesler', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Maria Eduarda Girardi Roesler' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0));
SET @tur_current_maria_eduarda_girardi_roesler = (SELECT id FROM turmas WHERE nome = 'Turma Maria Eduarda Girardi Roesler' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_bruna_greipel, 0) LIMIT 1);

-- Turma Maria Luiza Ferreira Primo Pereira Lima
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_clara_cordeiro_santana_maia, NULL, 'Turma Maria Luiza Ferreira Primo Pereira Lima', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Maria Luiza Ferreira Primo Pereira Lima' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0));
SET @tur_current_maria_luiza_ferreira_primo_perei = (SELECT id FROM turmas WHERE nome = 'Turma Maria Luiza Ferreira Primo Pereira Lima' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0) LIMIT 1);

-- Turma Maya Boiko
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Maya Boiko', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Maya Boiko' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_maya_boiko = (SELECT id FROM turmas WHERE nome = 'Turma Maya Boiko' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Maya Rezzadori Valdez
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_marina_jorge_geiger, NULL, 'Turma Maya Rezzadori Valdez', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Maya Rezzadori Valdez' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0));
SET @tur_current_maya_rezzadori_valdez = (SELECT id FROM turmas WHERE nome = 'Turma Maya Rezzadori Valdez' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0) LIMIT 1);

-- Turma Melina Silva Varjão
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_clara_cordeiro_santana_maia, NULL, 'Turma Melina Silva Varjão', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Melina Silva Varjão' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0));
SET @tur_current_melina_silva_varjao = (SELECT id FROM turmas WHERE nome = 'Turma Melina Silva Varjão' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0) LIMIT 1);

-- Turma Nathan Boiko
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Nathan Boiko', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Nathan Boiko' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_nathan_boiko = (SELECT id FROM turmas WHERE nome = 'Turma Nathan Boiko' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Nicolas Couto dos Santos da Silva
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_julia_siqueira_de_campos, NULL, 'Turma Nicolas Couto dos Santos da Silva', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Nicolas Couto dos Santos da Silva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0));
SET @tur_current_nicolas_couto_dos_santos_da_silv = (SELECT id FROM turmas WHERE nome = 'Turma Nicolas Couto dos Santos da Silva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0) LIMIT 1);

-- Turma Paola Carneiro Akiyama
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_marina_jorge_geiger, NULL, 'Turma Paola Carneiro Akiyama', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Paola Carneiro Akiyama' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0));
SET @tur_current_paola_carneiro_akiyama = (SELECT id FROM turmas WHERE nome = 'Turma Paola Carneiro Akiyama' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0) LIMIT 1);

-- Turma Pedro Carneiro Akiyama
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_marina_jorge_geiger, NULL, 'Turma Pedro Carneiro Akiyama', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Pedro Carneiro Akiyama' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0));
SET @tur_current_pedro_carneiro_akiyama = (SELECT id FROM turmas WHERE nome = 'Turma Pedro Carneiro Akiyama' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0) LIMIT 1);

-- Turma Rafaela Favareto Cerqueira Leite
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Rafaela Favareto Cerqueira Leite', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Rafaela Favareto Cerqueira Leite' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_rafaela_favareto_cerqueira_leite = (SELECT id FROM turmas WHERE nome = 'Turma Rafaela Favareto Cerqueira Leite' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Ravi Silvestre Franco
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_clara_cordeiro_santana_maia, NULL, 'Turma Ravi Silvestre Franco', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Ravi Silvestre Franco' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0));
SET @tur_current_ravi_silvestre_franco = (SELECT id FROM turmas WHERE nome = 'Turma Ravi Silvestre Franco' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_clara_cordeiro_santana_maia, 0) LIMIT 1);

-- Turma Rebeca Rubbo Pereira Cardoso
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Rebeca Rubbo Pereira Cardoso', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Rebeca Rubbo Pereira Cardoso' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_rebeca_rubbo_pereira_cardoso = (SELECT id FROM turmas WHERE nome = 'Turma Rebeca Rubbo Pereira Cardoso' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- Turma Samuel Rawlyk Lopes Ribeiro
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_laura_alves_da_rocha, NULL, 'Turma Samuel Rawlyk Lopes Ribeiro', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Samuel Rawlyk Lopes Ribeiro' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0));
SET @tur_current_samuel_rawlyk_lopes_ribeiro = (SELECT id FROM turmas WHERE nome = 'Turma Samuel Rawlyk Lopes Ribeiro' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0) LIMIT 1);

-- Turma Sofia de Biagi Cerci
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Sofia de Biagi Cerci', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Sofia de Biagi Cerci' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_sofia_de_biagi_cerci = (SELECT id FROM turmas WHERE nome = 'Turma Sofia de Biagi Cerci' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Sofia Pereira de Morais
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_marina_jorge_geiger, NULL, 'Turma Sofia Pereira de Morais', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Sofia Pereira de Morais' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0));
SET @tur_current_sofia_pereira_de_morais = (SELECT id FROM turmas WHERE nome = 'Turma Sofia Pereira de Morais' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_marina_jorge_geiger, 0) LIMIT 1);

-- Turma Theo Couto dos Santos da Silva
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_ana_julia_siqueira_de_campos, NULL, 'Turma Theo Couto dos Santos da Silva', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Theo Couto dos Santos da Silva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0));
SET @tur_current_theo_couto_dos_santos_da_silva = (SELECT id FROM turmas WHERE nome = 'Turma Theo Couto dos Santos da Silva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_ana_julia_siqueira_de_campos, 0) LIMIT 1);

-- Turma Théo Tosato Ferreira
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_tatiana_bruner_recka, NULL, 'Turma Théo Tosato Ferreira', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Théo Tosato Ferreira' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0));
SET @tur_current_theo_tosato_ferreira = (SELECT id FROM turmas WHERE nome = 'Turma Théo Tosato Ferreira' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_tatiana_bruner_recka, 0) LIMIT 1);

-- Turma Valentina Becker Cordeiro
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_laura_alves_da_rocha, NULL, 'Turma Valentina Becker Cordeiro', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Valentina Becker Cordeiro' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0));
SET @tur_current_valentina_becker_cordeiro = (SELECT id FROM turmas WHERE nome = 'Turma Valentina Becker Cordeiro' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_laura_alves_da_rocha, 0) LIMIT 1);

-- Turma Valentina dos Santos Domingos
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_emanuella_selusniak_de_oliveira, NULL, 'Turma Valentina dos Santos Domingos', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Valentina dos Santos Domingos' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0));
SET @tur_current_valentina_dos_santos_domingos = (SELECT id FROM turmas WHERE nome = 'Turma Valentina dos Santos Domingos' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_emanuella_selusniak_de_oliveira, 0) LIMIT 1);

-- Turma Vicente Lima Bassi
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_mariana_fraga_da_fonseca, NULL, 'Turma Vicente Lima Bassi', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Vicente Lima Bassi' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_mariana_fraga_da_fonseca, 0));
SET @tur_current_vicente_lima_bassi = (SELECT id FROM turmas WHERE nome = 'Turma Vicente Lima Bassi' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_mariana_fraga_da_fonseca, 0) LIMIT 1);

-- Turma Zoe Couto dos Santos da Silva
INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)
SELECT @usr_teacher_larissa_de_oliveira_silva_skraba, NULL, 'Turma Zoe Couto dos Santos da Silva', 'Turma inferida a partir do contrato vigente 2026', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM turmas WHERE nome = 'Turma Zoe Couto dos Santos da Silva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0));
SET @tur_current_zoe_couto_dos_santos_da_silva = (SELECT id FROM turmas WHERE nome = 'Turma Zoe Couto dos Santos da Silva' AND COALESCE(id_professor, 0) = COALESCE(@usr_teacher_larissa_de_oliveira_silva_skraba, 0) LIMIT 1);

-- 6. Vinculos aluno/turma

INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_alice_oliveira_pinto_tomazini, @tur_current_alice_oliveira_pinto_tomazini);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_aline_vera_lima_bassi_2015_03, @tur_current_aline_vera_lima_bassi);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_antonella_goncalves_machado_2, @tur_current_antonella_goncalves_machado);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_antonella_perfeito_falavina_d, @tur_current_antonella_perfeito_falavina_dias);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_antonio_spitz_rorato_baron_20, @tur_current_antonio_spitz_rorato_baron);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_arthur_fisbein_katz_2019_12_2, @tur_current_arthur_fisbein_katz);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_arthur_fuganti_pereira_2022_0, @tur_current_arthur_fuganti_pereira);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_arthur_guerreiro_de_souza_202, @tur_current_arthur_guerreiro_de_souza);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_augusto_bisetto_correa_2017_0, @tur_current_augusto_bisetto_correa);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_augusto_medeiros_ribas_2017_0, @tur_current_augusto_medeiros_ribas);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_barbara_kulka_de_souza_2015_0, @tur_current_barbara_kulka_de_souza);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_beatriz_krebs_dias_2012_12_21, @tur_current_beatriz_krebs_dias);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_benjamin_fisbein_katz_2023_03, @tur_current_benjamin_fisbein_katz);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_bernardo_sichelschimidt_de_ol, @tur_current_bernardo_sichelschimidt_de_olive);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_bianca_gauer_marchini_2019_07, @tur_current_bianca_gauer_marchini);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_catarina_bisetto_correa_2015_, @tur_current_catarina_bisetto_correa);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_catarina_rezzadori_valdez_201, @tur_current_catarina_rezzadori_valdez);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_cecilia_zaninelli_de_araujo_2, @tur_current_cecilia_zaninelli_de_araujo);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_clara_demeterco_pessoa_2018_0, @tur_current_clara_demeterco_pessoa);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_clarice_arend_schmidt_2022_01, @tur_current_clarice_arend_schmidt);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_daniel_zaninelli_de_araujo_20, @tur_current_daniel_zaninelli_de_araujo);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_diana_dos_santos_pellanda_201, @tur_current_diana_dos_santos_pellanda);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_escola_kambalhota_2012_12_12, @tur_current_escola_kambalhota);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_escola_kids_2025_12_12, @tur_current_escola_kids);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_esther_fogaca_dos_santos_2015, @tur_current_esther_fogaca_dos_santos);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_gabriel_favaretto_ruppel_2020, @tur_current_gabriel_favaretto_ruppel);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_gabriel_guerreiro_de_souza_20, @tur_current_gabriel_guerreiro_de_souza);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_gabriela_greggio_correa_2016_, @tur_current_gabriela_greggio_correa);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_giuseppe_piegel_ferreira_2021, @tur_current_giuseppe_piegel_ferreira);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_gloria_guimaraes_da_costa_ben, @tur_current_gloria_guimaraes_da_costa_benato);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_gregorio_abeling_de_camargo_2, @tur_current_gregorio_abeling_de_camargo);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_guilherme_pedroso_dresch_2017, @tur_current_guilherme_pedroso_dresch);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_gustavo_becker_cordeiro_2015_, @tur_current_gustavo_becker_cordeiro);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_gustavo_milani_weyll_2018_10_, @tur_current_gustavo_milani_weyll);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_heitor_tonatto_fernandes_2022, @tur_current_heitor_tonatto_fernandes);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_helena_longo_de_camargo_2016_, @tur_current_helena_longo_de_camargo);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_helena_monteiro_mengue_2020_0, @tur_current_helena_monteiro_mengue);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_henrique_favareto_cerqueira_l, @tur_current_henrique_favareto_cerqueira_leit);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_isabela_anile_mansur_2024_05_, @tur_current_isabela_anile_mansur);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_isabela_kasaoka_cherbiski_201, @tur_current_isabela_kasaoka_cherbiski);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_isabela_mainetti_gabardo_2020, @tur_current_isabela_mainetti_gabardo);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_isabela_zavattaro_rezende_201, @tur_current_isabela_zavattaro_rezende);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_isabelle_martins_sornas_2012_, @tur_current_isabelle_martins_sornas);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_isadora_goncalves_machado_202, @tur_current_isadora_goncalves_machado);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_isadora_medeiros_ribas_2020_0, @tur_current_isadora_medeiros_ribas);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_joana_perillo_de_melo_2021_09, @tur_current_joana_perillo_de_melo);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_joao_gabriel_perillo_de_melo_, @tur_current_joao_gabriel_perillo_de_melo);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_joao_vitor_kulka_de_souza_201, @tur_current_joao_vitor_kulka_de_souza);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_joaquim_torrens_campos_2023_0, @tur_current_joaquim_torrens_campos);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_laura_dubas_matocheck_2022_11, @tur_current_laura_dubas_matocheck);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_laura_marcondes_ribas_zini_20, @tur_current_laura_marcondes_ribas_zini);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_layla_glass_da_fonseca_silva_, @tur_current_layla_glass_da_fonseca_silva);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_livia_malucelli_2020_07_07, @tur_current_livia_malucelli);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_lorenzo_fidelis_lopes_2015_04, @tur_current_lorenzo_fidelis_lopes);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_louise_martins_sornas_2014_10, @tur_current_louise_martins_sornas);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_luana_fernandes_paiva_2010_05, @tur_current_luana_fernandes_paiva);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_luca_gauer_marchini_2019_07_1, @tur_current_luca_gauer_marchini);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_luca_spitz_rorato_baron_2022_, @tur_current_luca_spitz_rorato_baron);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_lucas_crippa_mazzarotto_2024_, @tur_current_lucas_crippa_mazzarotto);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_lucas_gallego_tavares_2019_05, @tur_current_lucas_gallego_tavares);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_lucas_henrique_simoes_2020_01, @tur_current_lucas_henrique_simoes);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_lucas_zavattaro_rezende_2019_, @tur_current_lucas_zavattaro_rezende);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_lucca_fidelis_lopes_2017_01_0, @tur_current_lucca_fidelis_lopes);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_luisa_malucelli_2016_10_01, @tur_current_luisa_malucelli);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_luiz_ce_neto_2015_10_26, @tur_current_luiz_ce_neto);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_luiza_santos_andor_2016_04_21, @tur_current_luiza_santos_andor);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_manoel_cassio_antunes_2015_05, @tur_current_manoel_cassio_antunes);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_marcella_bonatto_urbano_2021_, @tur_current_marcella_bonatto_urbano);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_maria_eduarda_coan_fidelis_al, @tur_current_maria_eduarda_coan_fidelis_alvea);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_maria_eduarda_girardi_roesler, @tur_current_maria_eduarda_girardi_roesler);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_maria_luiza_ferreira_primo_pe, @tur_current_maria_luiza_ferreira_primo_perei);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_maya_boiko_2021_07_08, @tur_current_maya_boiko);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_maya_rezzadori_valdez_2021_03, @tur_current_maya_rezzadori_valdez);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_melina_silva_varjao_2016_08_2, @tur_current_melina_silva_varjao);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_nathan_boiko_2019_08_28, @tur_current_nathan_boiko);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_nicolas_couto_dos_santos_da_s, @tur_current_nicolas_couto_dos_santos_da_silv);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_paola_carneiro_akiyama_2016_0, @tur_current_paola_carneiro_akiyama);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_pedro_carneiro_akiyama_2018_0, @tur_current_pedro_carneiro_akiyama);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_rafaela_favareto_cerqueira_le, @tur_current_rafaela_favareto_cerqueira_leite);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_ravi_silvestre_franco_2022_09, @tur_current_ravi_silvestre_franco);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_rebeca_rubbo_pereira_cardoso_, @tur_current_rebeca_rubbo_pereira_cardoso);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_samuel_rawlyk_lopes_ribeiro_2, @tur_current_samuel_rawlyk_lopes_ribeiro);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_sofia_de_biagi_cerci_2023_04_, @tur_current_sofia_de_biagi_cerci);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_sofia_pereira_de_morais_2015_, @tur_current_sofia_pereira_de_morais);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_theo_couto_dos_santos_da_silv, @tur_current_theo_couto_dos_santos_da_silva);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_theo_tosato_ferreira_2015_04_, @tur_current_theo_tosato_ferreira);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_valentina_becker_cordeiro_201, @tur_current_valentina_becker_cordeiro);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_valentina_dos_santos_domingos, @tur_current_valentina_dos_santos_domingos);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_vicente_lima_bassi_2017_11_20, @tur_current_vicente_lima_bassi);
INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES (@alu_name_birth_zoe_couto_dos_santos_da_silva, @tur_current_zoe_couto_dos_santos_da_silva);

-- 7. Contratos 2026

-- Arthur Fuganti Pereira / Cássia Fuganti
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04795963959, @cli_cpf_04795963959, @alu_name_birth_arthur_fuganti_pereira_2022_0, 1, 3, @tur_current_arthur_fuganti_pereira, 6780, NULL, NULL, NULL, NULL, 0.00, 6780, NULL, NULL, 40, NULL, NULL, NULL, '2025-05-15', '2026-05-15', '2025-05-15'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_arthur_fuganti_pereira);

-- Escola Kambalhota / Escola Escola Kambalhota
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_14089735963, @cli_cpf_14089735963, @alu_name_birth_escola_kambalhota_2012_12_12, 1, 1, @tur_current_escola_kambalhota, 19829.85, NULL, NULL, NULL, NULL, 0.00, 19829.85, NULL, NULL, 120, NULL, NULL, NULL, '2026-02-04', '2027-02-04', '2026-02-04'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_escola_kambalhota);

-- Escola Kids / Escola Escola Kids
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_81310020999, @cli_cpf_81310020999, @alu_name_birth_escola_kids_2025_12_12, 1, 1, @tur_current_escola_kids, 14442.6, NULL, NULL, NULL, NULL, 0.00, 14442.6, NULL, NULL, 238, NULL, NULL, NULL, '2026-02-19', '2027-02-19', '2026-02-19'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_escola_kids);

-- Gabriel Favaretto Ruppel / Jaqueline Lebbos Favaretto Ruppel
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06642913922, @cli_cpf_06642913922, @alu_name_birth_gabriel_favaretto_ruppel_2020, 1, 3, @tur_current_gabriel_favaretto_ruppel, 9828, NULL, NULL, NULL, NULL, 0.00, 9828, NULL, NULL, 80, NULL, NULL, NULL, '2025-04-29', '2026-04-24', '2025-04-29'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_gabriel_favaretto_ruppel);

-- Luiza Santos Andor / Ingrid Araujo Santos Andor
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_33452508889, @cli_cpf_33452508889, @alu_name_birth_luiza_santos_andor_2016_04_21, 1, 3, @tur_current_luiza_santos_andor, 5520, NULL, NULL, NULL, NULL, 0.00, 5520, NULL, NULL, 40, NULL, NULL, NULL, '2024-10-21', '2025-10-21', '2024-10-21'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_luiza_santos_andor);

-- Rafaela Favareto Cerqueira Leite / Andrea Favareto
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03008220908, @cli_cpf_03008220908, @alu_name_birth_rafaela_favareto_cerqueira_le, 1, 3, @tur_current_rafaela_favareto_cerqueira_leite, 4968, NULL, NULL, NULL, NULL, 0.00, 4968, NULL, NULL, 40, NULL, NULL, NULL, '2025-03-17', '2026-03-17', '2025-03-17'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_rafaela_favareto_cerqueira_leite);

-- Henrique Favareto Cerqueira Leite / Andrea Favareto
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03008220908, @cli_cpf_03008220908, @alu_name_birth_henrique_favareto_cerqueira_l, 1, 3, @tur_current_henrique_favareto_cerqueira_leit, 4968, NULL, NULL, NULL, NULL, 0.00, 4968, NULL, NULL, 40, NULL, NULL, NULL, '2025-03-17', '2026-03-17', '2025-03-17'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_henrique_favareto_cerqueira_leit);

-- Gloria Guimarães Da Costa Benato / Maria Beatriz Benato
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04410925946, @cli_cpf_04410925946, @alu_name_birth_gloria_guimaraes_da_costa_ben, 1, 3, @tur_current_gloria_guimaraes_da_costa_benato, 5520, NULL, NULL, NULL, NULL, 0.00, 5520, NULL, NULL, 40, NULL, NULL, NULL, '2025-03-12', '2026-03-12', '2025-03-12'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_gloria_guimaraes_da_costa_benato);

-- Laura Dubas Matocheck / Valeska da Fonseca Dubas Matocheck
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07797705950, @cli_cpf_07797705950, @alu_name_birth_laura_dubas_matocheck_2022_11, 1, 3, @tur_current_laura_dubas_matocheck, 3276, NULL, NULL, NULL, NULL, 0.00, 3276, NULL, NULL, 78, NULL, NULL, NULL, '2025-04-18', '2026-04-18', '2025-04-18'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_laura_dubas_matocheck);

-- Bernardo Sichelschimidt de Oliveira / Fabiane Sichelschimidt
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06313544927, @cli_cpf_06313544927, @alu_name_birth_bernardo_sichelschimidt_de_ol, 1, 3, @tur_current_bernardo_sichelschimidt_de_olive, 5520, NULL, NULL, NULL, NULL, 0.00, 5520, NULL, NULL, 40, NULL, NULL, NULL, '2025-04-09', '2026-04-09', '2025-04-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_bernardo_sichelschimidt_de_olive);

-- Augusto Bisetto Correa / Bianca Bacci Bisetto
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04296555928, @cli_cpf_04296555928, @alu_name_birth_augusto_bisetto_correa_2017_0, 1, 1, @tur_current_augusto_bisetto_correa, 4968, NULL, NULL, NULL, NULL, 0.00, 4968, NULL, NULL, 40, NULL, NULL, NULL, '2025-06-03', '2026-06-03', '2025-06-03'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_augusto_bisetto_correa);

-- Catarina Bisetto Corrêa / Bianca Bacci Bisetto
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04296555928, @cli_cpf_04296555928, @alu_name_birth_catarina_bisetto_correa_2015_, 1, 1, @tur_current_catarina_bisetto_correa, 4968, NULL, NULL, NULL, NULL, 0.00, 4968, NULL, NULL, 40, NULL, NULL, NULL, '2025-06-03', '2026-06-03', '2025-06-03'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_catarina_bisetto_correa);

-- Layla Glass da Fonseca Silva / Cinthia Fernanda da Fonseca Silva
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04350194908, @cli_cpf_04350194908, @alu_name_birth_layla_glass_da_fonseca_silva_, 1, 1, @tur_current_layla_glass_da_fonseca_silva, 5520, NULL, NULL, NULL, NULL, 0.00, 5520, NULL, NULL, 40, NULL, NULL, NULL, '2025-06-05', '2026-06-05', '2025-06-05'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_layla_glass_da_fonseca_silva);

-- Augusto Medeiros Ribas / Pollyana Ribeiro Medeiros Ribas
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04471465996, @cli_cpf_04471465996, @alu_name_birth_augusto_medeiros_ribas_2017_0, 1, 1, @tur_current_augusto_medeiros_ribas, 10875.6, NULL, NULL, NULL, NULL, 0.00, 10875.6, NULL, NULL, 80, NULL, NULL, NULL, '2025-06-09', '2026-06-09', '2025-06-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_augusto_medeiros_ribas);

-- Isadora Medeiros Ribas / Pollyana Ribeiro Medeiros Ribas
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04471465996, @cli_cpf_04471465996, @alu_name_birth_isadora_medeiros_ribas_2020_0, 1, 1, @tur_current_isadora_medeiros_ribas, 10875.6, NULL, NULL, NULL, NULL, 0.00, 10875.6, NULL, NULL, 80, NULL, NULL, NULL, '2025-06-09', '2026-06-09', '2025-06-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_isadora_medeiros_ribas);

-- Beatriz Krebs Dias / Amanda Krebs Dias
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07877848935, @cli_cpf_07877848935, @alu_name_birth_beatriz_krebs_dias_2012_12_21, 1, 1, @tur_current_beatriz_krebs_dias, 4725, NULL, NULL, NULL, NULL, 0.00, 4725, NULL, NULL, 40, NULL, NULL, NULL, '2025-06-09', '2026-06-09', '2025-06-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_beatriz_krebs_dias);

-- Nathan Boiko / Sarah Boiko
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05290559965, @cli_cpf_05290559965, @alu_name_birth_nathan_boiko_2019_08_28, 1, 1, @tur_current_nathan_boiko, 6270.3, NULL, NULL, NULL, NULL, 0.00, 6270.3, NULL, NULL, 40, NULL, NULL, NULL, '2025-09-20', '2026-09-20', '2025-09-20'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_nathan_boiko);

-- Maya Boiko / Sarah Boiko
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05045931962, @cli_cpf_05045931962, @alu_name_birth_maya_boiko_2021_07_08, 1, 1, @tur_current_maya_boiko, 6270.3, NULL, NULL, NULL, NULL, 0.00, 6270.3, NULL, NULL, 40, NULL, NULL, NULL, '2025-09-27', '2026-09-27', '2025-09-27'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_maya_boiko);

-- Théo Tosato Ferreira / Bruna Tosato Ferreira
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07130432969, @cli_cpf_07130432969, @alu_name_birth_theo_tosato_ferreira_2015_04_, 1, 1, @tur_current_theo_tosato_ferreira, 9828, NULL, NULL, NULL, NULL, 0.00, 9828, NULL, NULL, 80, NULL, NULL, NULL, '2025-09-17', '2026-09-17', '2025-09-17'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_theo_tosato_ferreira);

-- Maria Eduarda Coan Fidelis Alvea / Maria Fernanda Coan
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03540623957, @cli_cpf_03540623957, @alu_name_birth_maria_eduarda_coan_fidelis_al, 1, 1, @tur_current_maria_eduarda_coan_fidelis_alvea, 6967, NULL, NULL, NULL, NULL, 0.00, 6967, NULL, NULL, 40, NULL, NULL, NULL, '2025-10-22', '2026-10-22', '2025-10-22'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_maria_eduarda_coan_fidelis_alvea);

-- Gustavo Becker Cordeiro / Tchesari Becker Cordeiro
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03023947961, @cli_cpf_03023947961, @alu_name_birth_gustavo_becker_cordeiro_2015_, 1, 1, @tur_current_gustavo_becker_cordeiro, 8319.72, NULL, NULL, NULL, NULL, 0.00, 8319.72, NULL, NULL, 80, NULL, NULL, NULL, '2025-10-23', '2026-10-23', '2025-10-23'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_gustavo_becker_cordeiro);

-- Valentina Becker Cordeiro / Tchesari Becker Cordeiro
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03023947961, @cli_cpf_03023947961, @alu_name_birth_valentina_becker_cordeiro_201, 1, 1, @tur_current_valentina_becker_cordeiro, 8319.72, NULL, NULL, NULL, NULL, 0.00, 8319.72, NULL, NULL, 80, NULL, NULL, NULL, '2025-10-24', '2026-10-24', '2025-10-24'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_valentina_becker_cordeiro);

-- Sofia de Biagi Cerci / Viviane Moscatto De Biagi
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04932359900, @cli_cpf_04932359900, @alu_name_birth_sofia_de_biagi_cerci_2023_04_, 2, 3, @tur_current_sofia_de_biagi_cerci, 7229.46, NULL, NULL, NULL, NULL, 0.00, 7229.46, NULL, NULL, 40, NULL, NULL, NULL, '2025-11-10', '2026-05-10', '2025-11-10'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_sofia_de_biagi_cerci);

-- Laura Marcondes Ribas Zini / Fernanda Marcondes Ribas
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_00915861941, @cli_cpf_00915861941, @alu_name_birth_laura_marcondes_ribas_zini_20, 1, 1, @tur_current_laura_marcondes_ribas_zini, 12418, NULL, NULL, NULL, NULL, 0.00, 12418, NULL, NULL, 80, NULL, NULL, NULL, '2025-11-28', '2026-11-28', '2025-11-28'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_laura_marcondes_ribas_zini);

-- Melina Silva Varjão / Louise Nascimento e Silva
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_33015427865, @cli_cpf_33015427865, @alu_name_birth_melina_silva_varjao_2016_08_2, 1, 1, @tur_current_melina_silva_varjao, 12381.82, NULL, NULL, NULL, NULL, 0.00, 12381.82, NULL, NULL, 80, NULL, NULL, NULL, '2026-02-25', '2027-02-25', '2026-02-25'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_melina_silva_varjao);

-- Antonella Gonçalves Machado / Jessica Goncalves Machado
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05075867944, @cli_cpf_05075867944, @alu_name_birth_antonella_goncalves_machado_2, 1, 1, @tur_current_antonella_goncalves_machado, 7007.68, NULL, NULL, NULL, NULL, 0.00, 7007.68, NULL, NULL, 40, NULL, NULL, NULL, '2026-04-02', '2027-04-02', '2026-04-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_antonella_goncalves_machado);

-- Isadora Gonçalves Machado / Leonardo Silva Machado
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04385456992, @cli_cpf_04385456992, @alu_name_birth_isadora_goncalves_machado_202, 1, 1, @tur_current_isadora_goncalves_machado, 6554.56, NULL, NULL, NULL, NULL, 0.00, 6554.56, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-02', '2027-02-02', '2026-02-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_isadora_goncalves_machado);

-- Arthur Fisbein Katz / Renata Fisbein e Richard Katz
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_621566918, @cli_cpf_621566918, @alu_name_birth_arthur_fisbein_katz_2019_12_2, 2, 1, @tur_current_arthur_fisbein_katz, 3870.94, NULL, NULL, NULL, NULL, 0.00, 3870.94, NULL, NULL, 20, NULL, NULL, NULL, '2026-02-02', '2026-08-02', '2026-02-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_arthur_fisbein_katz);

-- Benjamin Fisbein Katz / Renata Fisbein e Richard Katz
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_00621566918, @cli_cpf_00621566918, @alu_name_birth_benjamin_fisbein_katz_2023_03, 2, 1, @tur_current_benjamin_fisbein_katz, 3870.94, NULL, NULL, NULL, NULL, 0.00, 3870.94, NULL, NULL, 20, NULL, NULL, NULL, '2026-02-02', '2026-08-02', '2026-02-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_benjamin_fisbein_katz);

-- Isabela Mainetti Gabardo / Camila Mainetti
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03488609944, @cli_cpf_03488609944, @alu_name_birth_isabela_mainetti_gabardo_2020, 2, 1, @tur_current_isabela_mainetti_gabardo, 3906.65, NULL, NULL, NULL, NULL, 0.00, 3906.65, NULL, NULL, 20, NULL, NULL, NULL, '2026-02-02', '2026-08-02', '2026-02-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_isabela_mainetti_gabardo);

-- Bianca Gauer Marchini / Andrea Elisa Gauer Marchini
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04989193903, @cli_cpf_04989193903, @alu_name_birth_bianca_gauer_marchini_2019_07, 1, 1, @tur_current_bianca_gauer_marchini, 10013.08, NULL, NULL, NULL, NULL, 0.00, 10013.08, NULL, NULL, 80, NULL, NULL, NULL, '2026-02-18', '2027-02-18', '2026-02-18'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_bianca_gauer_marchini);

-- Luca Gauer Marchini / Andrea Elisa Gauer Marchini
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04989193903, @cli_cpf_04989193903, @alu_name_birth_luca_gauer_marchini_2019_07_1, 1, 1, @tur_current_luca_gauer_marchini, 10013.08, NULL, NULL, NULL, NULL, 0.00, 10013.08, NULL, NULL, 80, NULL, NULL, NULL, '2026-02-18', '2027-02-18', '2026-02-18'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_luca_gauer_marchini);

-- Gabriela Greggio Corrêa / Bruna Greggio
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05387010992, @cli_cpf_05387010992, @alu_name_birth_gabriela_greggio_correa_2016_, 2, 1, @tur_current_gabriela_greggio_correa, 3887.29, NULL, NULL, NULL, NULL, 0.00, 3887.29, NULL, NULL, 20, NULL, NULL, NULL, '2026-02-02', '2026-08-02', '2026-02-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_gabriela_greggio_correa);

-- Lucas Henrique Simões / Mariele Simões
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_10725235910, @cli_cpf_10725235910, @alu_name_birth_lucas_henrique_simoes_2020_01, 2, 1, @tur_current_lucas_henrique_simoes, 3887.29, NULL, NULL, NULL, NULL, 0.00, 3887.29, NULL, NULL, 20, NULL, NULL, NULL, '2026-02-02', '2026-08-02', '2026-02-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_lucas_henrique_simoes);

-- Samuel Rawlyk Lopes Ribeiro / Juliane Rawlyk Lopes Ribeiro
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_00654307946, @cli_cpf_00654307946, @alu_name_birth_samuel_rawlyk_lopes_ribeiro_2, 2, 1, @tur_current_samuel_rawlyk_lopes_ribeiro, 3977.68, NULL, NULL, NULL, NULL, 0.00, 3977.68, NULL, NULL, 20, NULL, NULL, NULL, '2026-02-02', '2026-08-02', '2026-02-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_samuel_rawlyk_lopes_ribeiro);

-- Aline Vera Lima Bassi / Luiz Eduardo Lima Bassi
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03785684932, @cli_cpf_03785684932, @alu_name_birth_aline_vera_lima_bassi_2015_03, 2, 1, @tur_current_aline_vera_lima_bassi, 3074.49, NULL, NULL, NULL, NULL, 0.00, 3074.49, NULL, NULL, 20, NULL, NULL, NULL, '2026-01-23', '2026-07-23', '2026-01-23'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_aline_vera_lima_bassi);

-- Vicente Lima Bassi / Luiz Eduardo Lima Bassi
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03785684932, @cli_cpf_03785684932, @alu_name_birth_vicente_lima_bassi_2017_11_20, 2, 1, @tur_current_vicente_lima_bassi, 3074.49, NULL, NULL, NULL, NULL, 0.00, 3074.49, NULL, NULL, 20, NULL, NULL, NULL, '2026-01-23', '2026-07-23', '2026-01-23'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_vicente_lima_bassi);

-- Alice Oliveira Pinto Tomazini / Gabriel Canto Tomazini
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04343114996, @cli_cpf_04343114996, @alu_name_birth_alice_oliveira_pinto_tomazini, 2, 1, @tur_current_alice_oliveira_pinto_tomazini, 6597.14, NULL, NULL, NULL, NULL, 0.00, 6597.14, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-02', '2026-08-02', '2026-02-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_alice_oliveira_pinto_tomazini);

-- Clara Demeterco Pessoa / Isabella Demeterco
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_00392058944, @cli_cpf_00392058944, @alu_name_birth_clara_demeterco_pessoa_2018_0, 2, 1, @tur_current_clara_demeterco_pessoa, 12545.69, NULL, NULL, NULL, NULL, 0.00, 12545.69, NULL, NULL, 20, NULL, NULL, NULL, '2026-02-04', '2026-08-04', '2026-02-04'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_clara_demeterco_pessoa);

-- Isabela Zavattaro Rezende / Mayra dos Santos Zavattaro
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_3505251780710, @cli_cpf_3505251780710, @alu_name_birth_isabela_zavattaro_rezende_201, 1, 1, @tur_current_isabela_zavattaro_rezende, 5871.95, NULL, NULL, NULL, NULL, 0.00, 5871.95, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-05', '2027-02-05', '2026-02-05'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_isabela_zavattaro_rezende);

-- Lucas Zavattaro Rezende / Mayra dos Santos Zavattaro
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_3505251780710, @cli_cpf_3505251780710, @alu_name_birth_lucas_zavattaro_rezende_2019_, 1, 1, @tur_current_lucas_zavattaro_rezende, 5871.95, NULL, NULL, NULL, NULL, 0.00, 5871.95, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-05', '2027-02-05', '2026-02-05'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_lucas_zavattaro_rezende);

-- Gabriel Guerreiro de Souza / Luana Guerreiro
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07024187905, @cli_cpf_07024187905, @alu_name_birth_gabriel_guerreiro_de_souza_20, 2, 1, @tur_current_gabriel_guerreiro_de_souza, 5997.4, NULL, NULL, NULL, NULL, 0.00, 5997.4, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-09', '2026-08-09', '2026-02-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_gabriel_guerreiro_de_souza);

-- Arthur Guerreiro de Souza / Luana Guerreiro
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07024187905, @cli_cpf_07024187905, @alu_name_birth_arthur_guerreiro_de_souza_202, 2, 1, @tur_current_arthur_guerreiro_de_souza, 5997.4, NULL, NULL, NULL, NULL, 0.00, 5997.4, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-09', '2026-08-09', '2026-02-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_arthur_guerreiro_de_souza);

-- Nicolas Couto dos Santos da Silva / Elines Couto dos Santos da Silva
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05091973966, @cli_cpf_05091973966, @alu_name_birth_nicolas_couto_dos_santos_da_s, 2, 1, @tur_current_nicolas_couto_dos_santos_da_silv, 6117.32, NULL, NULL, NULL, NULL, 0.00, 6117.32, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-24', '2026-08-24', '2026-02-24'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_nicolas_couto_dos_santos_da_silv);

-- Theo Couto dos Santos da Silva / Elines Couto dos Santos da Silva
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05091973966, @cli_cpf_05091973966, @alu_name_birth_theo_couto_dos_santos_da_silv, 2, 1, @tur_current_theo_couto_dos_santos_da_silva, 6117.32, NULL, NULL, NULL, NULL, 0.00, 6117.32, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-24', '2026-08-24', '2026-02-24'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_theo_couto_dos_santos_da_silva);

-- Zoe Couto dos Santos da Silva / Elines Couto dos Santos da Silva
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05091973966, @cli_cpf_05091973966, @alu_name_birth_zoe_couto_dos_santos_da_silva, 2, 1, @tur_current_zoe_couto_dos_santos_da_silva, 6117.32, NULL, NULL, NULL, NULL, 0.00, 6117.32, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-24', '2026-08-24', '2026-02-24'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_zoe_couto_dos_santos_da_silva);

-- Valentina dos Santos Domingos / Danielle Mello dos Santos
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03779292980, @cli_cpf_03779292980, @alu_name_birth_valentina_dos_santos_domingos, 1, 1, @tur_current_valentina_dos_santos_domingos, 8319.72, NULL, NULL, NULL, NULL, 0.00, 8319.72, NULL, NULL, 80, NULL, NULL, NULL, '2026-03-04', '2027-03-04', '2026-03-04'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_valentina_dos_santos_domingos);

-- Antonio Spitz Rorato Baron / Jacqueline Rorato
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06622157960, @cli_cpf_06622157960, @alu_name_birth_antonio_spitz_rorato_baron_20, 2, 1, @tur_current_antonio_spitz_rorato_baron, 3615.30, NULL, NULL, NULL, NULL, 0.00, 3615.30, NULL, NULL, 21, NULL, NULL, NULL, '2026-03-04', '2026-09-04', '2026-03-04'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_antonio_spitz_rorato_baron);

-- Luca Spitz Rorato Baron / Jacqueline Rorato
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06622157960, @cli_cpf_06622157960, @alu_name_birth_luca_spitz_rorato_baron_2022_, 2, 1, @tur_current_luca_spitz_rorato_baron, 3615.30, NULL, NULL, NULL, NULL, 0.00, 3615.30, NULL, NULL, 21, NULL, NULL, NULL, '2026-03-04', '2026-09-04', '2026-03-04'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_luca_spitz_rorato_baron);

-- Esther Fogaça dos Santos / Priscilla Raquel Fogaça dos Santos
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03718109905, @cli_cpf_03718109905, @alu_name_birth_esther_fogaca_dos_santos_2015, 2, 1, @tur_current_esther_fogaca_dos_santos, 3839.75, NULL, NULL, NULL, NULL, 0.00, 3839.75, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-17', '2026-09-17', '2026-03-17'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_esther_fogaca_dos_santos);

-- Antonella Perfeito Falavina Dias / Amanda Paula Perfeito Falavina Dias
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04538616958, @cli_cpf_04538616958, @alu_name_birth_antonella_perfeito_falavina_d, 1, 1, @tur_current_antonella_perfeito_falavina_dias, 7007.68, NULL, NULL, NULL, NULL, 0.00, 7007.68, NULL, NULL, 40, NULL, NULL, NULL, '2026-02-06', '2027-02-06', '2026-02-06'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_antonella_perfeito_falavina_dias);

-- Helena Monteiro Mengue / Rosângela Alves Monteiro
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03643334990, @cli_cpf_03643334990, @alu_name_birth_helena_monteiro_mengue_2020_0, 2, 1, @tur_current_helena_monteiro_mengue, 6717.09, NULL, NULL, NULL, NULL, 0.00, 6717.09, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-05', '2026-09-05', '2026-03-05'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_helena_monteiro_mengue);

-- Helena Longo De Camargo / Rodrigo Mendes Camargo
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_00849598940, @cli_cpf_00849598940, @alu_name_birth_helena_longo_de_camargo_2016_, 1, 1, @tur_current_helena_longo_de_camargo, 7109.39, NULL, NULL, NULL, NULL, 0.00, 7109.39, NULL, NULL, 80, NULL, NULL, NULL, '2026-03-05', '2027-03-05', '2026-03-05'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_helena_longo_de_camargo);

-- Luiz Cé Neto / Talita Tamara da Silva Ramos Cé
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06841989910, @cli_cpf_06841989910, @alu_name_birth_luiz_ce_neto_2015_10_26, 2, 1, @tur_current_luiz_ce_neto, 3964.35, NULL, NULL, NULL, NULL, 0.00, 3964.35, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-06', '2026-09-06', '2026-03-06'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_luiz_ce_neto);

-- Rebeca Rubbo Pereira Cardoso / Gabriella Fraletti de Souza Rubbo
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_00676175902, @cli_cpf_00676175902, @alu_name_birth_rebeca_rubbo_pereira_cardoso_, 1, 1, @tur_current_rebeca_rubbo_pereira_cardoso, 5239.51, NULL, NULL, NULL, NULL, 0.00, 5239.51, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-06', '2027-03-06', '2026-03-06'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_rebeca_rubbo_pereira_cardoso);

-- Marcella Bonatto Urbano / Hugo Evo Magro Corrêa Urbano
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04766182669, @cli_cpf_04766182669, @alu_name_birth_marcella_bonatto_urbano_2021_, 2, 1, @tur_current_marcella_bonatto_urbano, 3977.78, NULL, NULL, NULL, NULL, 0.00, 3977.78, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-03', '2026-09-03', '2026-03-03'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_marcella_bonatto_urbano);

-- Isabela Anile Mansur / Renata Anile Mansur
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06847027975, @cli_cpf_06847027975, @alu_name_birth_isabela_anile_mansur_2024_05_, 2, 1, @tur_current_isabela_anile_mansur, 4048.71, NULL, NULL, NULL, NULL, 0.00, 4048.71, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-02', '2026-09-02', '2026-03-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_isabela_anile_mansur);

-- Maya Rezzadori Valdez / Deborah Fernandes Rezzadori Valdez
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05674028940, @cli_cpf_05674028940, @alu_name_birth_maya_rezzadori_valdez_2021_03, 1, 1, @tur_current_maya_rezzadori_valdez, 11412.8, NULL, NULL, NULL, NULL, 0.00, 11412.8, NULL, NULL, 80, NULL, NULL, NULL, '2026-03-09', '2027-03-09', '2026-03-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_maya_rezzadori_valdez);

-- Catarina Rezzadori Valdez / Deborah Fernandes Rezzadori Valdez
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05674028940, @cli_cpf_05674028940, @alu_name_birth_catarina_rezzadori_valdez_201, 1, 1, @tur_current_catarina_rezzadori_valdez, 6343.16, NULL, NULL, NULL, NULL, 0.00, 6343.16, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-16', '2027-03-16', '2026-03-16'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_catarina_rezzadori_valdez);

-- Luisa Malucelli / Isabella Zviejkovski Malucelli
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04732644988, @cli_cpf_04732644988, @alu_name_birth_luisa_malucelli_2016_10_01, 2, 1, @tur_current_luisa_malucelli, 3519.59, NULL, NULL, NULL, NULL, 0.00, 3519.59, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-16', '2026-09-16', '2026-03-16'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_luisa_malucelli);

-- Livia Malucelli / Isabella Zviejkovski Malucelli
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04732644988, @cli_cpf_04732644988, @alu_name_birth_livia_malucelli_2020_07_07, 2, 1, @tur_current_livia_malucelli, 3519.59, NULL, NULL, NULL, NULL, 0.00, 3519.59, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-23', '2026-09-23', '2026-03-23'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_livia_malucelli);

-- Paola Carneiro Akiyama / Thais Gualda Carneiro Akiyama
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05368042906, @cli_cpf_05368042906, @alu_name_birth_paola_carneiro_akiyama_2016_0, 2, 1, @tur_current_paola_carneiro_akiyama, 3693.56, NULL, NULL, NULL, NULL, 0.00, 3693.56, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-02', '2026-09-02', '2026-03-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_paola_carneiro_akiyama);

-- Pedro Carneiro Akiyama / Thais Gualda Carneiro Akiyama
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05368042906, @cli_cpf_05368042906, @alu_name_birth_pedro_carneiro_akiyama_2018_0, 2, 1, @tur_current_pedro_carneiro_akiyama, 3693.56, NULL, NULL, NULL, NULL, 0.00, 3693.56, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-02', '2026-09-02', '2026-03-02'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_pedro_carneiro_akiyama);

-- Joana Perillo de Melo / Ana Luiza Jaime Perillo de Melo
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06101777103, @cli_cpf_06101777103, @alu_name_birth_joana_perillo_de_melo_2021_09, 2, 1, @tur_current_joana_perillo_de_melo, 3622.53, NULL, NULL, NULL, NULL, 0.00, 3622.53, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-10', '2026-09-10', '2026-03-10'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_joana_perillo_de_melo);

-- João Gabriel Perillo de Melo / Ana Luiza Jaime Perillo de Melo
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06101777103, @cli_cpf_06101777103, @alu_name_birth_joao_gabriel_perillo_de_melo_, 2, 1, @tur_current_joao_gabriel_perillo_de_melo, 3622.53, NULL, NULL, NULL, NULL, 0.00, 3622.53, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-16', '2026-09-16', '2026-03-16'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_joao_gabriel_perillo_de_melo);

-- Diana dos Santos Pellanda / Patricia Ribas dos Santos
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_02174697955, @cli_cpf_02174697955, @alu_name_birth_diana_dos_santos_pellanda_201, 1, 1, @tur_current_diana_dos_santos_pellanda, 10524.56, NULL, NULL, NULL, NULL, 0.00, 10524.56, NULL, NULL, 80, NULL, NULL, NULL, '2026-03-18', '2027-03-18', '2026-03-18'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_diana_dos_santos_pellanda);

-- João Vitor Kulka de Souza / Regiane Cristina Kulka de Souza
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_02866238974, @cli_cpf_02866238974, @alu_name_birth_joao_vitor_kulka_de_souza_201, 2, 1, @tur_current_joao_vitor_kulka_de_souza, 3682.00, NULL, NULL, NULL, NULL, 0.00, 3682.00, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-11', '2026-09-11', '2026-03-11'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_joao_vitor_kulka_de_souza);

-- Bárbara Kulka de Souza / Regiane Cristina Kulka de Souza
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_02866238974, @cli_cpf_02866238974, @alu_name_birth_barbara_kulka_de_souza_2015_0, 2, 1, @tur_current_barbara_kulka_de_souza, 3682.00, NULL, NULL, NULL, NULL, 0.00, 3682.00, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-09', '2026-09-09', '2026-03-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_barbara_kulka_de_souza);

-- Clarice Arend Schmidt / Beatriz Aguiar Arend Schmidt
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04125184909, @cli_cpf_04125184909, @alu_name_birth_clarice_arend_schmidt_2022_01, 2, 1, @tur_current_clarice_arend_schmidt, 6837.03, NULL, NULL, NULL, NULL, 0.00, 6837.03, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-17', '2026-09-17', '2026-03-17'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_clarice_arend_schmidt);

-- Lucas Gallego Tavares / Sâmia Silva Gallego Campos Tavares
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04150354901, @cli_cpf_04150354901, @alu_name_birth_lucas_gallego_tavares_2019_05, 1, 1, @tur_current_lucas_gallego_tavares, 7007.68, NULL, NULL, NULL, NULL, 0.00, 7007.68, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-18', '2027-03-18', '2026-03-18'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_lucas_gallego_tavares);

-- Manoel Cassio Antunes / Emilene Semirames de Oliveira Silva
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_00975428900, @cli_cpf_00975428900, @alu_name_birth_manoel_cassio_antunes_2015_05, 1, 1, @tur_current_manoel_cassio_antunes, 10068.71, NULL, NULL, NULL, NULL, 0.00, 10068.71, NULL, NULL, 80, NULL, NULL, NULL, '2026-03-13', '2027-03-13', '2026-03-13'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_manoel_cassio_antunes);

-- Lorenzo Fidelis Lopes / Francieli Dias Fidelis
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_86176234115, @cli_cpf_86176234115, @alu_name_birth_lorenzo_fidelis_lopes_2015_04, 1, 1, @tur_current_lorenzo_fidelis_lopes, 4526.90, NULL, NULL, NULL, NULL, 0.00, 4526.90, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-25', '2027-03-25', '2026-03-25'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_lorenzo_fidelis_lopes);

-- Lucca Fidelis Lopes / Francieli Dias Fidelis
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_86176234115, @cli_cpf_86176234115, @alu_name_birth_lucca_fidelis_lopes_2017_01_0, 1, 1, @tur_current_lucca_fidelis_lopes, 4526.90, NULL, NULL, NULL, NULL, 0.00, 4526.90, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-25', '2027-03-25', '2026-03-25'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_lucca_fidelis_lopes);

-- Cecilia Zaninelli de Araujo / Gustavo Weigert de Araujo
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05141580938, @cli_cpf_05141580938, @alu_name_birth_cecilia_zaninelli_de_araujo_2, 2, 1, @tur_current_cecilia_zaninelli_de_araujo, 5637.55, NULL, NULL, NULL, NULL, 0.00, 5637.55, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-23', '2026-09-23', '2026-03-23'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_cecilia_zaninelli_de_araujo);

-- Daniel Zaninelli de Araujo / Gustavo Weigert de Araujo
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05141580938, @cli_cpf_05141580938, @alu_name_birth_daniel_zaninelli_de_araujo_20, 2, 1, @tur_current_daniel_zaninelli_de_araujo, 5637.55, NULL, NULL, NULL, NULL, 0.00, 5637.55, NULL, NULL, 40, NULL, NULL, NULL, '2026-03-23', '2026-09-23', '2026-03-23'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_daniel_zaninelli_de_araujo);

-- Maria Eduarda Girardi Roesler / Marcio Aleksey Roesler
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_00770961932, @cli_cpf_00770961932, @alu_name_birth_maria_eduarda_girardi_roesler, 2, 1, @tur_current_maria_eduarda_girardi_roesler, 3977.68, NULL, NULL, NULL, NULL, 0.00, 3977.68, NULL, NULL, 20, NULL, NULL, NULL, '2026-03-25', '2026-09-25', '2026-03-25'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_maria_eduarda_girardi_roesler);

-- Guilherme Pedroso Dresch / Jussara Pedroso Dresch
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04132333914, @cli_cpf_04132333914, @alu_name_birth_guilherme_pedroso_dresch_2017, 2, 1, @tur_current_guilherme_pedroso_dresch, 3964.35, NULL, NULL, NULL, NULL, 0.00, 3964.35, NULL, NULL, 20, NULL, NULL, NULL, '2026-04-09', '2026-10-09', '2026-04-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_guilherme_pedroso_dresch);

-- Louise Martins Sornas / Lydia Aparecida Martins
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03266166914, @cli_cpf_03266166914, @alu_name_birth_louise_martins_sornas_2014_10, 2, 1, @tur_current_louise_martins_sornas, 3835.62, NULL, NULL, NULL, NULL, 0.00, 3835.62, NULL, NULL, 20, NULL, NULL, NULL, '2026-04-06', '2026-10-06', '2026-04-06'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_louise_martins_sornas);

-- Isabelle Martins Sornas / Lydia Aparecida Martins
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03266166914, @cli_cpf_03266166914, @alu_name_birth_isabelle_martins_sornas_2012_, 2, 1, @tur_current_isabelle_martins_sornas, 3835.62, NULL, NULL, NULL, NULL, 0.00, 3835.62, NULL, NULL, 20, NULL, NULL, NULL, '2026-04-06', '2026-10-06', '2026-04-06'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_isabelle_martins_sornas);

-- Ravi Silvestre Franco / Raíra Silvestre Mulling
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_03833723130, @cli_cpf_03833723130, @alu_name_birth_ravi_silvestre_franco_2022_09, 2, 1, @tur_current_ravi_silvestre_franco, 4119.83, NULL, NULL, NULL, NULL, 0.00, 4119.83, NULL, NULL, 20, NULL, NULL, NULL, '2026-04-01', '2026-10-01', '2026-04-01'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_ravi_silvestre_franco);

-- Giuseppe Piegel Ferreira / Pérola Piegel
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07726833955, @cli_cpf_07726833955, @alu_name_birth_giuseppe_piegel_ferreira_2021, 2, 1, @tur_current_giuseppe_piegel_ferreira, 4291.8, NULL, NULL, NULL, NULL, 0.00, 4291.8, NULL, NULL, 20, NULL, NULL, NULL, '2026-04-10', '2026-10-10', '2026-04-10'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_giuseppe_piegel_ferreira);

-- Isabela Kasaoka Cherbiski / Raphael Taura Cherbiski
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_02729298916, @cli_cpf_02729298916, @alu_name_birth_isabela_kasaoka_cherbiski_201, 1, 1, @tur_current_isabela_kasaoka_cherbiski, 5937.24, NULL, NULL, NULL, NULL, 0.00, 5937.24, NULL, NULL, 40, NULL, NULL, NULL, '2026-04-22', '2027-04-22', '2026-04-22'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_isabela_kasaoka_cherbiski);

-- Joaquim Torrens Campos / Victor Cangussu Teixeira Campos
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07977934612, @cli_cpf_07977934612, @alu_name_birth_joaquim_torrens_campos_2023_0, 1, 1, @tur_current_joaquim_torrens_campos, 12274.152, NULL, NULL, NULL, NULL, 0.00, 12274.152, NULL, NULL, 80, NULL, NULL, NULL, '2026-04-27', '2027-04-27', '2026-04-27'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_joaquim_torrens_campos);

-- Gregório Abeling de Camargo / Rodrigo Camargo de Camargo
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06206515982, @cli_cpf_06206515982, @alu_name_birth_gregorio_abeling_de_camargo_2, 1, 1, @tur_current_gregorio_abeling_de_camargo, 7249.32, NULL, NULL, NULL, NULL, 0.00, 7249.32, NULL, NULL, 40, NULL, NULL, NULL, '2026-04-30', '2027-04-30', '2026-04-30'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_gregorio_abeling_de_camargo);

-- Maria Luiza Ferreira Primo Pereira Lima / Amanda Ferreira Primo
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_05694520904, @cli_cpf_05694520904, @alu_name_birth_maria_luiza_ferreira_primo_pe, 1, 1, @tur_current_maria_luiza_ferreira_primo_perei, 12920.16, NULL, NULL, NULL, NULL, 0.00, 12920.16, NULL, NULL, 80, NULL, NULL, NULL, '2026-05-06', '2027-05-06', '2026-05-06'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_maria_luiza_ferreira_primo_perei);

-- Sofia Pereira de Morais / Pamela Ferraz
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07848378993, @cli_cpf_07848378993, @alu_name_birth_sofia_pereira_de_morais_2015_, 1, 1, @tur_current_sofia_pereira_de_morais, 7249.32, NULL, NULL, NULL, NULL, 0.00, 7249.32, NULL, NULL, 40, NULL, NULL, NULL, '2026-05-06', '2027-05-06', '2026-05-06'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_sofia_pereira_de_morais);

-- Lucas Crippa Mazzarotto / Joanna Vitória Crippa Mazzarotto
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_01019405996, @cli_cpf_01019405996, @alu_name_birth_lucas_crippa_mazzarotto_2024_, 1, 1, @tur_current_lucas_crippa_mazzarotto, 7249.32, NULL, NULL, NULL, NULL, 0.00, 7249.32, NULL, NULL, 40, NULL, NULL, NULL, '2026-05-09', '2027-05-09', '2026-05-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_lucas_crippa_mazzarotto);

-- Luana Fernandes Paiva / Vanessa Fernandes de Paiva
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_04375673974, @cli_cpf_04375673974, @alu_name_birth_luana_fernandes_paiva_2010_05, 2, 1, @tur_current_luana_fernandes_paiva, 4261.80, NULL, NULL, NULL, NULL, 0.00, 4261.80, NULL, NULL, 20, NULL, NULL, NULL, '2026-05-13', '2026-11-13', '2026-05-13'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_luana_fernandes_paiva);

-- Gustavo Milani Weyll / Camila Trevisan Milani Weyll
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_07659914979, @cli_cpf_07659914979, @alu_name_birth_gustavo_milani_weyll_2018_10_, 1, 1, @tur_current_gustavo_milani_weyll, 5937.24, NULL, NULL, NULL, NULL, 0.00, 5937.24, NULL, NULL, 40, NULL, NULL, NULL, '2026-05-13', '2027-05-13', '2026-05-13'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_gustavo_milani_weyll);

-- Heitor Tonatto Fernandes / Flavia Tonatto Dorneles Barboza
INSERT INTO contratos (id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula)
SELECT @cli_cpf_06344115947, @cli_cpf_06344115947, @alu_name_birth_heitor_tonatto_fernandes_2022, 2, 1, @tur_current_heitor_tonatto_fernandes, 3977.68, NULL, NULL, NULL, NULL, 0.00, 3977.68, NULL, NULL, 20, NULL, NULL, NULL, '2026-02-09', '2026-08-09', '2026-02-09'
WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = @tur_current_heitor_tonatto_fernandes);

COMMIT;

-- Fim da carga do nucleo vigente 2026