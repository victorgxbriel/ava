-- Script de migração dos dados para a tabela Docente
ALTER TABLE docente
    DROP COLUMN vinculo,
    DROP COLUMN data_inicio,
    DROP COLUMN data_fim;

CREATE TABLE docente_vinculo (
                                 id_vinculo SERIAL PRIMARY KEY,
                                 docente_id INTEGER NOT NULL,
                                 descricao VARCHAR(255) NOT NULL,
                                 data_inicio DATE,
                                 data_fim DATE,
                                 created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                 updated_at TIMESTAMPTZ,
                                 active BOOLEAN NOT NULL DEFAULT TRUE,
                                 CONSTRAINT fk_docente_vinculo FOREIGN KEY (docente_id)
                                     REFERENCES docente(id_docente)
);

INSERT INTO Docente (codigo, nome, cpf, email ) VALUES
    ('001', 'Marco Aurelio de Moura Freire', '614.823.582-04', 'freire.m@gmail.com'),
    ('002', 'Romulo Antonio Fuentes Flores', '017.980.004-31', 'romulo.a.fuentes@gmail.com'),
    ('003', 'Miguel Angelo Laporta Nicolelis', '057.247.458-01', 'nicolelis@isd.org.br'),
    ('004', 'Edgard Morya', '136.914.698-17', 'edgard.morya@isd.org.br'),
    ('005', 'Fabrício Lima Brasil', '509.822.652-04', 'fabricio.brasil@isd.org.br'),
    ('006', 'Renan Cipriano Moioli', '309.115.878-02', 'renan.moioli@gmail.com'),
    ('007', 'Mariana Ferreira Pereira de Araújo', '135.561.198-97', 'mfparaujo@gmail.com'),
    ('008', 'Cicilia Raquel Maia Leite', '037.778.574-16', 'ciciliamaia@gmail.com'),
    ('009', 'Hougelle Simplicio Gomes Pereira', '019.450.784-05', 'hougelle.simplicio@isd.org.br'),
    ('011', 'Reginaldo Antônio de Oliveira Freitas Júnior', '030.274.724-96', 'reginaldo@isd.org.br'),
    ('013', 'Ana Carolina Bione Kunicki', '012.969.884-90', 'bionekunicki@gmail.com'),
    ('014', 'Manuela Sales Lima Nascimento', '072.667.274-21', 'nascimentomsl@gmail.com'),
    ('015', 'André Salles Cunha Peres', '218.705.618-05', 'peres.asc@gmail.com'),
    ('020', 'André Felipe Oliveira de Azevedo Dantas', '065.163.594-23', 'andre.dantas@isd.org.br'),
    ('021', 'Abner Cardoso Rodrigues Neto', '000.897.003-33', 'abner.neto@isd.org.br'),
    ('022', 'Ramón Hypolito Lima', '003.367.070-61', 'ramon.lima@isd.org.br'),
    ('024', 'Maria Carolina Gonzalez', '069.631.671-41', 'carolina.gonzalez@isd.org.br'),
    ('025', 'Felipe Porto Fiuza', '012.219.163-35', 'felipe.fiuza@isd.org.br'),
    ('026', 'Andressa Radiske', '010.452.540-10', 'andressa.radiske@isd.org.br'),
    ('027', 'Caroline Cunha do Espírito Santo', '009.248.849-83', 'caroline.santo@isd.org.br'),
    ('028', 'Denis Delisle Rodriguez', '062.525.767-78', 'denis.rodriguez@isd.org.br'),
    ('029', 'Gabriel Alves Vasiljevic Mendes', '097.268.694-04', 'gabriel.vasiljevic@isd.org.br');


insert into docente_vinculo (docente_id, data_inicio, data_fim, descricao) VALUES
    ((select id_docente from docente where cpf = '614.823.582-04'), '2012-07-02', '2014-09-30', 'Permanente'),
    ((select id_docente from docente where cpf = '017.980.004-31'), '2012-07-02', '2015-05-29', 'Permanente'),
    ((select id_docente from docente where cpf = '057.247.458-01'), '2012-07-02', '2015-05-29', 'Permanente'),
    ((select id_docente from docente where cpf = '136.914.698-17'), '2013-09-13', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '509.822.652-04'), '2013-09-13', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '309.115.878-02'), '2013-09-13', '2019-01-03', 'Permanente'),
    ((select id_docente from docente where cpf = '135.561.198-97'), '2013-09-13', '2019-05-15', 'Permanente'),
    ((select id_docente from docente where cpf = '037.778.574-16'), '2013-09-13', NULL, 'Colaborador'),
    ((select id_docente from docente where cpf = '019.450.784-05'),'2013-10-01', '2015-05-31', 'Colaborador'),
    ((select id_docente from docente where cpf = '017.980.004-31'), '2014-10-01', '2015-07-31', 'Colaborador'),
    ((select id_docente from docente where cpf = '030.274.724-96'), '2015-01-05', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '019.450.784-05'), '2015-06-01', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '012.969.884-90'), '2015-06-01', '2019-05-16', 'Permanente'),
    ((select id_docente from docente where cpf = '072.667.274-21'), '2016-06-07', '2019-08-23', 'Permanente'),
    ((select id_docente from docente where cpf = '218.705.618-05'), '2016-07-01', '2019-05-16', 'Permanente'),
    ((select id_docente from docente where cpf = '309.115.878-02'), '2019-01-04', NULL, 'Colaborador'),
    ((select id_docente from docente where cpf = '135.561.198-97'), '2019-05-16', NULL, 'Colaborador'),
    ((select id_docente from docente where cpf = '012.969.884-90'), '2019-05-17', NULL, 'Colaborador'),
    ((select id_docente from docente where cpf = '218.705.618-05'), '2019-05-17', NULL, 'Colaborador'),
    ((select id_docente from docente where cpf = '065.163.594-23'), '2019-06-18', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '000.897.003-33'), '2019-07-22', '2023-07-07', 'Permanente'),
    ((select id_docente from docente where cpf = '003.367.070-61'), '2019-08-01', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '072.667.274-21'), '2019-08-26', NULL, 'Colaborador'),
    ((select id_docente from docente where cpf = '069.631.671-41'), '2019-11-04', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '012.219.163-35'), '2019-11-11', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '010.452.540-10'), '2022-05-02', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '009.248.849-83'), '2022-05-02', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '062.525.767-78'), '2022-05-02', NULL, 'Permanente'),
    ((select id_docente from docente where cpf = '097.268.694-04'), '2023-09-04', NULL, 'Permanente');


