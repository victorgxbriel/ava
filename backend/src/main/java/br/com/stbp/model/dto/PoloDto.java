package br.com.stbp.model.dto;

import lombok.Builder;

@Builder
public record PoloDto(
        Long id,

        String nome,

        boolean situacao
) implements BaseDto<PoloDto> {

    @Override
    public PoloDto withId(Long id) {
        return new PoloDto(id, nome, situacao);
    }
}