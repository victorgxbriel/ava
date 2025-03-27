package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.TurmaDto;
import br.com.stbp.model.entity.Turma;
import br.com.stbp.repository.CursoRepository;
import br.com.stbp.repository.PeriodoLetivoRepository;
import br.com.stbp.repository.TurmaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TurmaConverter implements BaseConverter<Turma, TurmaDto> {

    @Autowired
    private PeriodoLetivoRepository periodoLetivoRepository;

    @Autowired
    private CursoRepository cursoRepository;

    public Turma toEntity(TurmaDto dto) {
        return Turma.builder()
                .periodoLetivo(periodoLetivoRepository.getReferenceById(dto.periodoLetivo()))
                .curso(cursoRepository.getReferenceById(dto.curso()))
                .codigo(dto.codigo())
                .id(dto.id())
                .build();
    }

    public TurmaDto toDto(Turma entity){
        return TurmaDto.builder()
                .periodoLetivo(entity.getPeriodoLetivo().getId())
                .curso(entity.getCurso().getId())
                .nomePeriodoLetivo(String.format("%s.%s", entity.getPeriodoLetivo().getAno(), entity.getPeriodoLetivo().getSemestre()))
                .nomeCurso(entity.getCurso().getNome())
                .codigo(entity.getCodigo())
                .id(entity.getId())
                .situacao(entity.isActive())
                .build();
    }
}

