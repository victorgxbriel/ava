package br.com.stbp.model.dto;


import br.com.stbp.model.entity.Disciplina;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;
import lombok.Getter;

@Builder
public record EquivalenciaDto(
        Long id,

        Long disciplina,

        @NotBlank(message = "A código não pode ser nulo")
        String codigo,

        @NotBlank(message = "O nome é obrigatório")
        String nome

) implements BaseDto<EquivalenciaDto> {

        @Override
        public EquivalenciaDto withId(Long id) {
                return new EquivalenciaDto(id, disciplina, codigo, nome);
        }
}