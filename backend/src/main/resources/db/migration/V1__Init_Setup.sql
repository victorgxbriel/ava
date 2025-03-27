CREATE TABLE PastorPresidente (
                                  idPastorPresidente SERIAL  NOT NULL ,
                                  nome VARCHAR    ,
                                  telefone VARCHAR(14)      ,
                                  PRIMARY KEY(idPastorPresidente));



CREATE TABLE Doscente (
                          idDoscente SERIAL  NOT NULL ,
                          codigo VARCHAR(4)    ,
                          nome VARCHAR    ,
                          cpf VARCHAR(14)    ,
                          email VARCHAR    ,
                          dataInicio DATE    ,
                          dataFim DATE    ,
                          vinculo VARCHAR CHECK (vinculo in ('Permanente', 'Colaborador'))   ,
                          PRIMARY KEY(idDoscente));



CREATE TABLE PeriodoLetivo (
                               idPeriodoLetivo SERIAL  NOT NULL ,
                               ano VARCHAR(4)    ,
                               semestre VARCHAR(1)    ,
                               dataInicio DATE    ,
                               dataFinal DATE      ,
                               PRIMARY KEY(idPeriodoLetivo));



CREATE TABLE Polo (
                      idPolo SERIAL  NOT NULL ,
                      nome VARCHAR      ,
                      PRIMARY KEY(idPolo));



CREATE TABLE Curso (
                       idCurso SERIAL  NOT NULL ,
                       nome VARCHAR    ,
                       codigo INTEGER      ,
                       PRIMARY KEY(idCurso));



CREATE TABLE Igreja (
                        idIgreja SERIAL  NOT NULL ,
                        idPastorPresidente INTEGER   NOT NULL ,
                        nome VARCHAR    ,
                        localizacao VARCHAR      ,
                        PRIMARY KEY(idIgreja),
                        FOREIGN KEY(idPastorPresidente)
                            REFERENCES PastorPresidente(idPastorPresidente));



CREATE TABLE Disciplina (
                            idDisciplina SERIAL  NOT NULL ,
                            idCurso INTEGER   NOT NULL ,
                            codigo VARCHAR    ,
                            nome VARCHAR    ,
                            cargaHoraria INT    ,
                            tipo VARCHAR    check ( tipo in ('OBG', 'OPT') )  ,
                            PRIMARY KEY(idDisciplina),
                            FOREIGN KEY(idCurso)
                                REFERENCES Curso(idCurso));



CREATE TABLE Equivalencia (
                              idEquivalencia SERIAL  NOT NULL ,
                              idDisciplina INTEGER   NOT NULL ,
                              codigo VARCHAR    ,
                              nome VARCHAR      ,
                              PRIMARY KEY(idEquivalencia),
                              FOREIGN KEY(idDisciplina)
                                  REFERENCES Disciplina(idDisciplina));



CREATE TABLE Classe (
                        idClasse SERIAL  NOT NULL ,
                        idDoscente INTEGER   NOT NULL ,
                        idDisciplina INTEGER   NOT NULL ,
                        periodo VARCHAR(6)    ,
                        maxAlunos INTEGER    ,
                        codigo INTEGER      ,
                        PRIMARY KEY(idClasse),
                        FOREIGN KEY(idDoscente)
                            REFERENCES Doscente(idDoscente),
                        FOREIGN KEY(idDisciplina)
                            REFERENCES Disciplina(idDisciplina));



CREATE TABLE Turma (
                       idTurma SERIAL  NOT NULL ,
                       idPeriodoLetivo INTEGER   NOT NULL ,
                       idCurso INTEGER   NOT NULL ,
                       codigo VARCHAR(4)      ,
                       PRIMARY KEY(idTurma),
                       FOREIGN KEY(idPeriodoLetivo)
                           REFERENCES PeriodoLetivo(idPeriodoLetivo),
                       FOREIGN KEY(idCurso)
                           REFERENCES Curso(idCurso));



CREATE TABLE Discente (
                          idDiscente SERIAL   NOT NULL ,
                          idPolo INTEGER   NOT NULL ,
                          idIgreja INTEGER   NOT NULL ,
                          idTurma INTEGER   NOT NULL ,
                          matricula INTEGER    ,
                          nome VARCHAR    ,
                          cpf VARCHAR(14)    ,
                          email VARCHAR    ,
                          telefone VARCHAR(14)    ,
                          situacao VARCHAR  check ( situacao in ('Cursando', 'Trancado', 'Formado') )  ,
                          sexo VARCHAR(1) check (sexo in ('M', 'F'))   ,
                          naturalidade VARCHAR    ,
                          orgaoEmissor VARCHAR    ,
                          dataNascimento DATE    ,
                          filiacao VARCHAR    ,
                          estadoCivil VARCHAR   check (estadoCivil in ('Casado(a)', 'Solteiro(a)', 'Divorciado(a)', 'Viuvo(a)', ''))  ,
                          endereco VARCHAR    ,
                          escolaridade VARCHAR  check ( escolaridade in ('Ensino Medio', 'Superior', 'N/A') )  ,
                          dataIngresso DATE      ,
                          PRIMARY KEY(idDiscente),
                          FOREIGN KEY(idTurma)
                              REFERENCES Turma(idTurma),
                          FOREIGN KEY(idIgreja)
                              REFERENCES Igreja(idIgreja),
                          FOREIGN KEY(idPolo)
                              REFERENCES Polo(idPolo));



CREATE TABLE Matricula (
                           idMatricula SERIAL  NOT NULL ,
                           idClasse INTEGER   NOT NULL ,
                           idDiscente INTEGER   NOT NULL ,
                           situacao VARCHAR    ,
                           nota FLOAT      ,
                           PRIMARY KEY(idMatricula),
                           FOREIGN KEY(idDiscente)
                               REFERENCES Discente(idDiscente),
                           FOREIGN KEY(idClasse)
                               REFERENCES Classe(idClasse));
