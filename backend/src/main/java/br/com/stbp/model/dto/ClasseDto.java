package br.com.stbp.model.dto;

import jakarta.validation.constraints.NotNull;
import lombok.Builder;

@Builder
public record ClasseDto(

        @NotNull(message = "A situação do ID de curso é obrigatório")
        Long id,

        @NotNull(message = "A situação do ID de docente é obrigatório")
        Long docente,

        String nomeDocente,

        @NotNull(message = "A situação do ID de disciplinas é obrigatório")
        Long disciplina,

        String nomeDisciplina,

        String periodo,

        String codigo,

        Boolean situacao

) implements BaseDto<ClasseDto> {

    @Override
    public ClasseDto withId(Long id) {
        return new ClasseDto(id , docente , nomeDocente, disciplina, nomeDisciplina, periodo, codigo, situacao );
    }
}
