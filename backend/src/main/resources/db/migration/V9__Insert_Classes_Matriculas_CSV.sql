ALTER TABLE classe
    ALTER COLUMN codigo TYPE VARCHAR(50)
        USING codigo::VARCHAR;

Insert into docente(codigo, nome)
values ('N/A', 'N/A');

alter table discente
    alter column matricula type varchar(12)
        using matricula::varchar;

update discente set matricula = '20240201072' where id_discente = 116;

-- INSERTS PARA A TABELA CLASSE
INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HSC-001'), '2018.1', NULL, 'HSC-0012018.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'INB-001'), '2018.2', NULL, 'INB-0012018.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'PTC-001'), '2018.2', NULL, 'PTC-0012018.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HSC-002'), '2018.2', NULL, 'HSC-0022018.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'MTP-001'), '2019.1', NULL, 'MTP-0012019.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'ADE-001'), '2022.1', NULL, 'ADE-0012022.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HBI-002'), '2022.1', NULL, 'HBI-0022022.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'TLS-002'), '2022.2', NULL, 'TLS-0022022.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'FAB-001'), '2022.2', NULL, 'FAB-0012022.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'TLS-003'), '2022.2', NULL, 'TLS-0032022.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EVG-001'), '2023.1', NULL, 'EVG-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'FEC-001'), '2023.1', NULL, 'FEC-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'GRO-001'), '2023.2', NULL, 'GRO-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'GRO-002'), '2023.2', NULL, 'GRO-0022023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EXN-001'), '2023.2', NULL, 'EXN-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'TLP-001'), '2023.2', NULL, 'TLP-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'FAS-001'), '2024.1', NULL, 'FAS-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'FAB-001'), '2023.1', NULL, 'FAB-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HRM-001'), '2023.1', NULL, 'HRM-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'INT-001'), '2023.1', NULL, 'INT-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'LTJ-001'), '2023.2', NULL, 'LTJ-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HIB-001'), '2023.1', NULL, 'HIB-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'TCC-001'), '2024.1', NULL, 'TCC-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'ETC-001'), '2024.1', NULL, 'ETC-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'ESA-001'), '2024.2', NULL, 'ESA-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'CCC-001'), '2024.2', NULL, 'CCC-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'LPS-001'), '2024.2', NULL, 'LPS-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'MSS-001'), '2024.2', NULL, 'MSS-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'PDI-001'), '2024.2', NULL, 'PDI-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EVG-001'), '2024.1', NULL, 'EVG-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EXA-001'), '2024.1', NULL, 'EXA-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HIB-001'), '2024.2', NULL, 'HIB-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HBI-001'), '2024.1', NULL, 'HBI-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'PDI-001'), '2024.1', NULL, 'PDI-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'GRO-002'), '2024.1', NULL, 'GRO-0022024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'GRO-001'), '2024.1', NULL, 'GRO-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'RLM-001'), '2024.2', NULL, 'RLM-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EXN-001'), '2024.2', NULL, 'EXN-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EXN-001'), '2024.1', NULL, 'EXN-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'PTI-001'), '2023.1', NULL, 'PTI-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'TLS-002'), '2024.1', NULL, 'TLS-0022024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'LHA-001'), '2024.1', NULL, 'LHA-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EPP-001'), '2024.1', NULL, 'EPP-0012024.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EPP-001'), '2023.1', NULL, 'EPP-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'MSS-001'), '2023.1', NULL, 'MSS-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'PRI-001'), '2023.1', NULL, 'PRI-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'LTJ-001'), '2023.1', NULL, 'LTJ-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EXA-001'), '2023.2', NULL, 'EXA-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HOM-001'), '2023.1', NULL, 'HOM-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'ADE-001'), '2023.1', NULL, 'ADE-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HRM-001'), '2023.2', NULL, 'HRM-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HSI-001'), '2023.2', NULL, 'HSI-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HSC-001'), '2023.2', NULL, 'HSC-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'INB-001'), '2023.1', NULL, 'INB-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'PTC-001'), '2023.1', NULL, 'PTC-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'TLP-001'), '2023.1', NULL, 'TLP-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'HBI-001'), '2023.2', NULL, 'HBI-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'MTP-001'), '2023.2', NULL, 'MTP-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'FAB-001'), '2023.2', NULL, 'FAB-0012023.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'EPG-001'), '2023.1', NULL, 'EPG-0012023.1');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'ETC-001'), '2024.2', NULL, 'ETC-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'LTJ-001'), '2024.2', NULL, 'LTJ-0012024.2');

INSERT INTO classe (id_docente, id_disciplina, periodo, max_alunos, codigo)
VALUES ((select id_docente from docente where codigo = 'N/A'), (SELECT id_disciplina FROM disciplina WHERE codigo = 'TLS-001'), '2022.4', NULL, 'TLS-0012022.4');

-- INSERTS PARA A TABELA MATRICULA
INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HSC-0012018.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'INB-0012018.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTC-0012018.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HSC-0022018.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MTP-0012019.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ADE-0012022.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0022022.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLS-0022022.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'FAB-0012022.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLS-0032022.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'FEC-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'FAS-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'FAB-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HRM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'INT-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HIB-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TCC-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ESA-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'CCC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018020201'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020101'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020201'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020202'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020102'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020103'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020208'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023010101'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024010201'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LPS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020206'),
           '', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020201'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023010101'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020206'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020201'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020202'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020202'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018020201'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024010201'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020102'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020208'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020201'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020206'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020207'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018020201'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020201'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020203'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2023010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020206'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020202'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020202'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018020201'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Aprovado', 7.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EVG-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020102'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020207'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018020201'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020202'),
           'Aprovado', 7.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HIB-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020205'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HIB-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020201'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HIB-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020102'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HIB-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020103'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HIB-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020203'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HIB-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018020201'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020205'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020206'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020202'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020207'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018020201'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Reprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 7.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PDI-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 8.7
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020115'),
           'Aprovado', 8.7
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020114'),
           'Aprovado', 8.8
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Aprovado', 8.7
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 8.7
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 8.7
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Aprovado', 8.7
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020115'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020114'),
           'Aprovado', 9.4
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020115'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020109'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'RLM-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020115'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020114'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2022010101'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXN-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Aprovado', 9.6
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Aprovado', 9.6
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010102'),
           'Aprovado', 9.9
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Reprovado', 1.8
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 8.1
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', 7.9
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLS-0022024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020104'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 9.25
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020115'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 7.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 7.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LHA-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020115'),
           'Reprovado', 6.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 7.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Reprovado', 5.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020109'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012024.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Reprovado', 6.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MSS-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'INT-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010102'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'INT-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'INT-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020202'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Aprovado', 9.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXA-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Reprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EXA-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Reprovado', 8.7
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HOM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HOM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HOM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HOM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2022010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HOM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HOM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HOM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HOM-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ADE-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Aprovado', 9.4
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ADE-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Reprovado', 0.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ADE-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Aprovado', 9.7
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ADE-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ADE-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ADE-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Aprovado', 9.1
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ADE-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 9.4
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HRM-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010102'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HRM-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HRM-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HRM-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HSI-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010102'),
           'Aprovado', 9.3
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HSI-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 8.3
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HSI-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HSI-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HSC-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HSC-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'INB-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTC-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010102'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTC-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020110'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTC-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020117'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PTC-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020116'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLP-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'HBI-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'MTP-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Reprovado', 5.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'FAB-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'FAB-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2022010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'FAB-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'FAB-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'GRO-0012023.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020111'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010106'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020202'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020102'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2025010103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020103'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'PRI-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020108'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPG-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020107'),
           'Aprovado', 9.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'EPG-0012023.1'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020101'),
           'Aprovado', 8.1
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020205'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020201'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023010101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020102'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020101'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020202'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020201'),
           'Aprovado', 8.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2023020103'),
           'Aprovado', 7.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'ETC-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018010101'),
           'Matriculado', NULL
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020208'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020201'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020206'),
           'Aprovado', 10.0
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'LTJ-0012024.2'),
           (SELECT id_discente FROM discente WHERE matricula = '2018020201'),
           'Aprovado', 8.5
       );

INSERT INTO matricula (id_classe, id_discente, situacao, nota)
VALUES (
           (SELECT id_classe FROM classe WHERE codigo = 'TLS-0012022.4'),
           (SELECT id_discente FROM discente WHERE matricula = '2024020205'),
           'Aprovado', 10.0
       );

