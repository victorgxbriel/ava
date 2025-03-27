package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.PastorPresidenteDto;
import br.com.stbp.model.entity.PastorPresidente;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class PastorPresidenteConverter implements BaseConverter<PastorPresidente, PastorPresidenteDto> {

    public PastorPresidente toEntity(PastorPresidenteDto dto) {
        return PastorPresidente.builder()
                .nome(dto.nome())
                .telefone(dto.telefone())
                .id(dto.id())
                .build();
    }

    public PastorPresidenteDto toDto(PastorPresidente entity){
        return PastorPresidenteDto.builder()
                .nome(entity.getNome())
                .id(entity.getId())
                .telefone(entity.getTelefone())
                .build();
    }

}
