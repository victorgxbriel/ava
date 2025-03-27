package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.CursoDto;
import br.com.stbp.model.entity.Curso;
import org.springframework.stereotype.Component;

import javax.swing.text.html.parser.Entity;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class CursoConverter implements BaseConverter<Curso, CursoDto>{

    public Curso toEntity(CursoDto dto) {
        return Curso.builder()
                .id(dto.id())
                .nome(dto.nome())
                .codigo(dto.codigo())
                .build();
    }

    public CursoDto toDto(Curso entity){

        return CursoDto.builder()
                .id(entity.getId())
                .nome(entity.getNome())
                .codigo(entity.getCodigo())
                .situacao(entity.isActive())
                .build();
    }

}

