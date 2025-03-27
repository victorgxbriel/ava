package br.com.stbp.model.dto;

import br.com.stbp.model.entity.Discente;
import br.com.stbp.model.entity.Classe;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;

@Builder
public record MatriculaDto(
        Long id,

        @NotNull
        Long discente,

        String nomeDiscente,

        @NotNull
        Long classe,

        String nomeClasse,

        String situacao,

        Float nota

) implements BaseDto<MatriculaDto> {

    @Override
    public MatriculaDto withId(Long id) {
        return new MatriculaDto(id, discente, nomeDiscente, classe, nomeClasse, situacao, nota);
    }
}
