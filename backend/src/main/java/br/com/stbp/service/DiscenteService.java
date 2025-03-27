package br.com.stbp.service;

import br.com.stbp.model.dto.ClasseDto;
import br.com.stbp.model.dto.DiscenteDto;
import br.com.stbp.model.dto.IgrejaDto;
import br.com.stbp.model.dto.PeriodoLetivoDto;
import br.com.stbp.model.dto.matricula.ClasseAlunoDto;
import br.com.stbp.model.entity.Discente;

import java.util.List;


public interface DiscenteService extends BaseService<Discente, DiscenteDto> {

    public PeriodoLetivoDto obterPeriodoLetivoPorDiscente(Long discenteId);

    public IgrejaDto obterIgrejaPorDiscente(Long discenteId);
    public List<ClasseDto> getClassesByDiscente(Long id);

    public List<ClasseAlunoDto> getClassesByDiscenteAndPeriodo(Long discenteId, String periodo);
}
