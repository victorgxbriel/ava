package br.com.stbp.service.impl;

import br.com.stbp.exception.ResourceNotFoundException;
import br.com.stbp.model.dto.ClasseDto;
import br.com.stbp.model.dto.DiscenteDto;
import br.com.stbp.model.dto.IgrejaDto;
import br.com.stbp.model.dto.PeriodoLetivoDto;
import br.com.stbp.model.dto.matricula.ClasseAlunoDto;
import br.com.stbp.model.entity.Discente;
import br.com.stbp.model.entity.Matricula;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.ClasseConverter;
import br.com.stbp.model.mapper.DiscenteConverter;
import br.com.stbp.model.mapper.matricula.ClasseAlunoConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.DiscenteRepository;
import br.com.stbp.repository.MatriculaRepository;
import br.com.stbp.service.DiscenteService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DiscenteServiceImpl implements DiscenteService {

    private final DiscenteRepository discenteRepository;
    private final DiscenteConverter discenteConverter;
    private final ClasseConverter classeConverter;
    private final MatriculaRepository matriculaRepository;
    private final ClasseAlunoConverter classeAlunoConverter;

    public DiscenteServiceImpl(DiscenteConverter discenteConverter,
                               DiscenteRepository discenteRepository,
                               ClasseConverter classeConverter,
                               MatriculaRepository matriculaRepository,
                               ClasseAlunoConverter classeAlunoConverter) {
        this.discenteConverter = discenteConverter;
        this.discenteRepository = discenteRepository;
        this.classeConverter = classeConverter;
        this.matriculaRepository = matriculaRepository;
        this.classeAlunoConverter = classeAlunoConverter;
    }

    public PeriodoLetivoDto obterPeriodoLetivoPorDiscente(Long discenteId){
        return discenteRepository.findPeriodoLetivoByDiscenteId(discenteId);
    }

    public IgrejaDto obterIgrejaPorDiscente(Long discenteId) {
        return discenteRepository.findIgrejaByDiscenteId(discenteId);
    }

    public List<ClasseDto> getClassesByDiscente(Long id) {
        Discente discente = discenteRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Discente não encontrado"));

        return discente.getMatriculas()
                .stream()
                .map( matricula -> {
                    return classeConverter.toDto(matricula.getClasse());
                })
                .toList();
    }

    public List<ClasseAlunoDto> getClassesByDiscenteAndPeriodo(Long discenteId, String periodo) {
        List<Matricula> matriculas = matriculaRepository.findMatriculasByDiscenteAndPeriodo(discenteId, periodo);

        return classeAlunoConverter.toDto(matriculas);
    }

    @Override
    public BaseRepository<Discente> getRepository() {
        return this.discenteRepository;
    }

    @Override
    public BaseConverter<Discente, DiscenteDto> getDtoMapper() {
        return this.discenteConverter;
    }

    @Override
    public void validateBeforeSave(Discente entity) {}

    @Override
    public void validateBeforeUpdate(Discente entity) {}
}
