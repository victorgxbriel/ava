package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.DisciplinaDto;
import br.com.stbp.model.entity.Disciplina;
import br.com.stbp.model.enums.Tipo;
import br.com.stbp.repository.CursoRepository;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class DisciplinaConverter implements BaseConverter<Disciplina, DisciplinaDto> {

    private final CursoRepository cursoRepository;

    public DisciplinaConverter(CursoRepository cursoRepository) {
        this.cursoRepository = cursoRepository;
    }

    public Disciplina toEntity(DisciplinaDto dto) {
        return Disciplina.builder()
                .curso(cursoRepository.getReferenceById(dto.curso()))
                .nome(dto.nome())
                .codigo(dto.codigo())
                .cargaHoraria(dto.cargaHoraria())
                .tipo(Tipo.valueOf(dto.tipo()))
                .id(dto.id())
                .build();
    }

    public DisciplinaDto toDto(Disciplina entity){
        return DisciplinaDto.builder()
                .id(entity.getId())
                .curso(entity.getCurso().getId())
                .nome(entity.getNome())
                .codigo(entity.getCodigo())
                .cargaHoraria(entity.getCargaHoraria())
                .tipo(entity.getTipo().name())
                .situacao(entity.isActive())
                .build();
    }

}
