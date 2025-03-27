package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.DocenteDto;
import br.com.stbp.model.entity.Docente;
import br.com.stbp.model.enums.Vinculo;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class DocenteConverter implements BaseConverter<Docente, DocenteDto> {

    public Docente toEntity(DocenteDto dto) {
        return Docente.builder()
                .id(dto.id())
                .nome(dto.nome())
                .codigo(dto.codigo())
                .cpf(dto.cpf())
                .email(dto.email())
                .build();
    }

    public DocenteDto toDto(Docente entity){
        return DocenteDto.builder()
                .id(entity.getId())
                .nome(entity.getNome())
                .codigo(entity.getCodigo())
                .cpf(entity.getCpf())
                .email(entity.getEmail())
                .situacao(entity.isActive())
                .build();
    }
}
