package br.com.stbp.model.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.Builder;

@Builder
public record PastorPresidenteDto(
        Long id,

        @NotBlank(message = "O nome é obrigatório")
        String nome,

        @NotBlank(message = "O telefone é obrigatório")
        String telefone
) implements BaseDto<PastorPresidenteDto> {

        @Override
        public PastorPresidenteDto withId(Long id) {
                return new PastorPresidenteDto(id, nome, telefone);
        }
}