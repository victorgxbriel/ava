-- Renomeando tabelas
ALTER TABLE PastorPresidente RENAME TO pastor_presidente;
ALTER TABLE Doscente RENAME TO docente;
ALTER TABLE PeriodoLetivo RENAME TO periodo_letivo;

-- Renomeando colunas das tabelas
ALTER TABLE pastor_presidente RENAME COLUMN idPastorPresidente TO id_pastor_presidente;
ALTER TABLE docente RENAME COLUMN idDoscente TO id_docente;
ALTER TABLE periodo_letivo RENAME COLUMN idPeriodoLetivo TO id_periodo_letivo;
ALTER TABLE curso RENAME COLUMN idCurso TO id_curso;
ALTER TABLE igreja RENAME COLUMN idIgreja TO id_igreja;
ALTER TABLE disciplina RENAME COLUMN idDisciplina TO id_disciplina;
ALTER TABLE equivalencia RENAME COLUMN idEquivalencia TO id_equivalencia;
ALTER TABLE classe RENAME COLUMN idClasse TO id_classe;
ALTER TABLE turma RENAME COLUMN idTurma TO id_turma;
ALTER TABLE discente RENAME COLUMN idDiscente TO id_discente;
ALTER TABLE matricula RENAME COLUMN idMatricula TO id_matricula;

-- Renomeando colunas restantes
ALTER TABLE docente RENAME COLUMN dataInicio TO data_inicio;
ALTER TABLE docente RENAME COLUMN dataFim TO data_fim;
ALTER TABLE periodo_letivo RENAME COLUMN dataInicio TO data_inicio;
ALTER TABLE periodo_letivo RENAME COLUMN dataFinal TO data_final;
ALTER TABLE igreja RENAME COLUMN idPastorPresidente TO id_pastor_presidente;
ALTER TABLE disciplina RENAME COLUMN cargaHoraria TO carga_horaria;
ALTER TABLE equivalencia RENAME COLUMN idDisciplina TO id_disciplina;
ALTER TABLE classe RENAME COLUMN idDoscente TO id_docente;
ALTER TABLE classe RENAME COLUMN idDisciplina TO id_disciplina;
ALTER TABLE classe RENAME COLUMN maxAlunos TO max_alunos;
ALTER TABLE turma RENAME COLUMN idPeriodoLetivo TO id_periodo_letivo;
ALTER TABLE turma RENAME COLUMN idCurso TO id_curso;
ALTER TABLE discente RENAME COLUMN idPolo TO id_polo;
ALTER TABLE discente RENAME COLUMN idIgreja TO id_igreja;
ALTER TABLE discente RENAME COLUMN idTurma TO id_turma;
ALTER TABLE discente RENAME COLUMN dataNascimento TO data_nascimento;
ALTER TABLE discente RENAME COLUMN orgaoEmissor TO orgao_emissor;
ALTER TABLE discente RENAME COLUMN estadoCivil TO estado_civil;
ALTER TABLE discente RENAME COLUMN dataIngresso TO data_ingresso;
ALTER TABLE matricula RENAME COLUMN idClasse TO id_classe;
ALTER TABLE matricula RENAME COLUMN idDiscente TO id_discente;
