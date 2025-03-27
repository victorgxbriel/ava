package br.com.stbp.model.dto;

import lombok.Builder;

@Builder
public record CursoDto(
        Long id,

        String nome,

        int codigo,

        boolean situacao

) implements BaseDto<CursoDto> {

    @Override
    public CursoDto withId(Long id) {
        return new CursoDto(id, nome, codigo, situacao);
    }
}