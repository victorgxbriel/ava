------------------------------
-- 3. Inserir Periodo Letivo (a partir de 2018.1 até 2025.1)
------------------------------
-- Os id_periodo_letivo começam em 2 (pois já existe um registro antigo)
INSERT INTO Periodo_letivo ( ano, semestre, data_inicio, data_final) VALUES
                                                                                           ( '2018', '1', '2018-03-05', '2020-02-29'),
                                                                                           ( '2018', '2', '2018-08-06', '2020-07-31'),
                                                                                           ( '2019', '1', '2019-03-11', '2021-02-28'),
                                                                                           ( '2019', '2', '2019-08-05', '2021-07-31'),
                                                                                           ( '2020', '1', '2020-03-02', '2022-02-28'),
                                                                                           ( '2020', '2', '2020-08-03', '2022-07-31'),
                                                                                           ( '2021', '1', '2021-03-01', '2023-02-28'),
                                                                                           ( '2021', '2', '2021-08-02', '2023-07-31'),
                                                                                           ( '2022', '1', '2022-03-01', '2024-02-28'),
                                                                                           ( '2022', '2', '2022-08-01', '2024-07-31'),
                                                                                           ( '2023', '1', '2023-03-01', '2025-02-28'),
                                                                                           ( '2023', '2', '2023-08-01', '2025-07-31'),
                                                                                           ( '2024', '1', '2024-03-01', '2026-02-28'),
                                                                                           ( '2025', '1', '2025-03-01', '2027-02-28');

------------------------------
-- 4. Inserir Turmas (id_curso fixo = 2)
------------------------------
-- Os id_turma também começam em 2.
INSERT INTO Turma ( id_periodo_letivo, id_curso, codigo) VALUES
                                                                      ( 1, (select id_curso from curso where nome = 'Teologia'), '009'),  -- 2018.1
                                                                      ( 2, (select id_curso from curso where nome = 'Teologia'), '010'),  -- 2018.2
                                                                      ( 3, (select id_curso from curso where nome = 'Teologia'), '011'),  -- 2019.1
                                                                      ( 4, (select id_curso from curso where nome = 'Teologia'), '012'),  -- 2019.2
                                                                      ( 5, (select id_curso from curso where nome = 'Teologia'), '013'),  -- 2020.1
                                                                      ( 6, (select id_curso from curso where nome = 'Teologia'), '014'),  -- 2020.2
                                                                      ( 7, (select id_curso from curso where nome = 'Teologia'), '015'),  -- 2021.1
                                                                      ( 8, (select id_curso from curso where nome = 'Teologia'), '016'),  -- 2021.2
                                                                      ( 9, (select id_curso from curso where nome = 'Teologia'), '017'), -- 2022.1
                                                                      ( 10, (select id_curso from curso where nome = 'Teologia'), '018'), -- 2022.2
                                                                      ( 11, (select id_curso from curso where nome = 'Teologia'), '019'), -- 2023.1
                                                                      ( 12, (select id_curso from curso where nome = 'Teologia'), '020'), -- 2023.2
                                                                      ( 13, (select id_curso from curso where nome = 'Teologia'), '021'), -- 2024.1 (criado manualmente)
                                                                      ( 14, (select id_curso from curso where nome = 'Teologia'), '022'); -- 2025.1 (criado manualmente)

------------------------------
-- 5. Inserir Polos
------------------------------
-- Exemplo de inserção de alguns polos extraídos dos dados (idpolo inicia em 2)
INSERT INTO Polo ( nome) VALUES
                                    ( 'Sede Natal/RN'),
                                    ( 'Polo Zona Norte/RN'),
                                    ( 'Extensão Goianinha/RN'),
                                    ( 'Extensão Patos/PB');
