------------------------------
-- 1. Excluir dados existentes
------------------------------
-- Exclui os registros já existentes em Igreja e Pastor_presidente
TRUNCATE TABLE Igreja RESTART IDENTITY CASCADE;
TRUNCATE TABLE Pastor_presidente RESTART IDENTITY CASCADE;

------------------------------
-- 2. Agrupar Igreja e Pastor_presidente
------------------------------
-- Como vamos incorporar as informações do pastor na tabela Igreja,
-- removemos a coluna de FK e adicionamos as colunas para nome e telefone do pastor.
ALTER TABLE Igreja DROP COLUMN id_pastor_presidente;
ALTER TABLE Igreja ADD COLUMN pastor_nome VARCHAR;
ALTER TABLE Igreja ADD COLUMN pastor_telefone VARCHAR(14);

-- Opcionalmente, se não for mais necessário manter a tabela Pastor_presidente:
DROP TABLE IF EXISTS Pastor_presidente;

------------------------------
-- 6. Inserir Igrejas (com as informações do pastor incorporadas)
INSERT INTO Igreja (nome, localizacao, pastor_nome, pastor_telefone) VALUES
                                                                         ('Igreja Batista da Esperança', 'Natal, RN', 'Celso Adriano Gibbs', '(84)98877-1111'),
                                                                         ('Santarém', 'Natal, RN', 'Eliabe de Oliveira e Silva', '(84)99958-4807'),
                                                                         ('Igreja Batista Jardim Progresso', 'Natal, RN', 'Isaías Herculano', '848876-7309'),
                                                                         ('Vera Cruz', 'Vera Cruz, RN', 'N/D', 'ND'),
                                                                         ('Igreja Batista Vera Cruz', 'Vera Cruz, RN', 'José Antônio Fonseca', 'N/A'),
                                                                         ('Jardim Brasil', 'Natal, RN', 'Marcos Aurélio', '#REF!'),
                                                                         ('Primeira Igreja Batista de Pitangui', 'Extremoz, RN', 'Rui Torres da Silva', '(84)92294-7851'),
                                                                         ('Igreja Batista Jardim Brasil', 'Natal, RN', 'Marcos Aurelio', '(84)9910-7851'),
                                                                         ('Igreja Batista do Santarém', 'Natal, RN', 'Eliabe de Oliveira e Silva', '(84)99958-4807'),
                                                                         ('Igreja Batista em Jardim Petrópolis', 'São Gonçalo do Amarante, RN', 'Eugenio Pacelly Soares de Araújo Sobrinho', '(84)99927-9942'),
                                                                         ('Primeira Igreja Batista em Extremoz', 'Primeirovicepresidente/RN', 'Genilson', '849462-6870'),
                                                                         ('Igreja Batista Água Viva (Bairro Golandim)', 'São Gonçalo do Amarante/ RN', 'Diácono João Batista (processodeconcílioparapastorearaIgreja)', '(84)99705-5150'),
                                                                         ('PIB Parnamirim', 'Parnamirim/RN', 'Carlos França', '848882-8030'),
                                                                         ('Comunidade Evangélica congregacional', 'Maturéia/PB', 'Kelton Carneiro Bezerra', '83988842348'),
                                                                         ('IBCidade', 'Natal, RN', 'Antonio Targino', '(84)99949-6200'),
                                                                         ('Pib Mipobu', 'São José do Mipibu/RN', 'Sagay', '84994165077'),
                                                                         ('PIB PEDRO VELHO', 'PEDRO VELHO/RN', 'ROBSON FREITAS (INTERINO)', '(84)991123556'),
                                                                         ('Igreja Batista Cidade', 'Natal, RN', 'Elisafá', '558499816-7999'),
                                                                         ('PIBP - Primeira igreja Batista em Parnamirim', 'Parnamirim/RN', 'Carlos França', '84988828030'),
                                                                         ('Igreja Batista em Monte Castelo (atuo na congregação Batista em Brejinho)', 'Parnamirim/RN', 'Daniel Santos', '8499973-1698'),
                                                                         ('Igreja Batista Jordão', 'Natal, RN', 'Lucas Hellen', '84994503734'),
                                                                         ('Igreja Batista Potiguar', 'Natal, RN', 'Pr Isaías', '988129179'),
                                                                         ('IBCidade', 'Natal, RN', 'Antônio Targino', '(84)99949-6200'),
                                                                         ('Igreja de Deixar no Brasil', 'Natal, RN', 'Fábio simplicio', '84999419633'),
                                                                         ('Segunda Igreja Batista de Parnamirim (SIBP)', 'Parnamirim/RN', 'Valtenci Oliveira', '8499664-5832'),
                                                                         ('Igreja batista do alecrim', 'Natal, RN', 'Josoniiel', '84999811049'),
                                                                         ('Igreja Batista do Santarém', 'Natal, RN', 'Eliabe de Oliveira Silva', '84999584807'),
                                                                         ('IB Potiguar', 'Natal, RN', 'Isaías Herculano', '8498876-7309'),
                                                                         ('Primeira Igreja Batista Jardim Progresso', 'Natal, RN', 'Isaías Herculano', '848876-7309'),
                                                                         ('Igreja Batista Cidade', 'Natal, RN', 'Targino', '8499949-6200'),
                                                                         ('IBCidade', 'Natal, RN', 'Antonio de Araújo Targino', '8499949-6200'),
                                                                         ('Igreja Batista Sinai', 'Natal, RN', 'Edjarde', '8498763-1370'),
                                                                         ('IBCidade Elói de Souza', 'Senador Elói de Souza/RN', 'Antonio de Araújo Targino', '84999496200'),
                                                                         ('Igreja Batista Cidade', 'Natal, RN', 'Antonio de Araújo Targino', '8499949-6200'),
                                                                         ('PIB do Farol', 'Natal, RN', 'Jucelino Tavares da Silva', '84996683358'),
                                                                         ('Igreja Batista do Nova Natal', 'Natal', 'Isaías Herculano', '84988767399'),
                                                                         ('IBcidade', 'Natal', 'Antônio Targino', '8499949-6200'),
                                                                         ('PIB NATAL', 'Natal', 'Edison Vicente', '8488299228'),
                                                                         ('Igreja Batista Água Viva em Maracajaú', 'Maxaranguape', 'Responsável: Irmão João Batista.', '84997055150');
