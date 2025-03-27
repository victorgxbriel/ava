package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.PoloDto;
import br.com.stbp.model.entity.Polo;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class PoloConverter implements BaseConverter<Polo, PoloDto> {

    public Polo toEntity(PoloDto dto) {
        return Polo.builder()
                .id(dto.id())
                .nome(dto.nome())
                .build();
    }

    public PoloDto toDto(Polo entity){
        return PoloDto.builder()
                .id(entity.getId())
                .nome(entity.getNome())
                .situacao(entity.isActive())
                .build();
    }

}

