package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.EquivalenciaDto;
import br.com.stbp.model.entity.Equivalencia;
import br.com.stbp.repository.DisciplinaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class EquivalenciaConverter implements BaseConverter<Equivalencia, EquivalenciaDto> {

    @Autowired
    private DisciplinaRepository disciplinaRepository;

    public Equivalencia toEntity(EquivalenciaDto dto) {
        return Equivalencia.builder()
                .disciplina(disciplinaRepository.getReferenceById(dto.disciplina()))
                .nome(dto.nome())
                .codigo(dto.codigo())
                .id(dto.id())
                .build();
    }

    public EquivalenciaDto toDto(Equivalencia entity){
        return EquivalenciaDto.builder()
                .id(entity.getId())
                .disciplina(entity.getDisciplina().getId())
                .nome(entity.getNome())
                .codigo(entity.getCodigo())
                .build();
    }

}
