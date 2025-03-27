package br.com.stbp.model.dto;

import br.com.stbp.model.entity.Curso;
import br.com.stbp.model.entity.PeriodoLetivo;
import br.com.stbp.model.entity.Turma;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;

@Builder
public record TurmaDto(
        Long id,

        @NotNull
        Long periodoLetivo,

        String nomePeriodoLetivo,

        @NotNull
        Long curso,

        String nomeCurso,

        @NotBlank(message = "A código não pode ser nulo")
        String codigo,

        Boolean situacao

) implements BaseDto<TurmaDto> {

        @Override
        public TurmaDto withId(Long id) {
                return new TurmaDto(id, periodoLetivo, nomePeriodoLetivo, curso, nomeCurso, codigo, situacao);
        }
}
