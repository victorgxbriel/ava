package br.com.stbp.model.mapper;

import br.com.stbp.model.entity.BaseEntity;

import java.util.List;
import java.util.stream.Collectors;

public interface BaseConverter<E extends BaseEntity, DTO> {
    DTO toDto(E entity);
    E toEntity(DTO dto);
    default List<DTO> toDto(List<E> entities){
        return entities.stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
}
