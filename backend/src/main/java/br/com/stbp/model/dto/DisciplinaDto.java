package br.com.stbp.model.dto;

import br.com.stbp.model.enums.Tipo;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;

@Builder
public record DisciplinaDto(
        Long id,

        @NotNull(message = "O curso não pode ser nulo")
        Long curso,

        String codigo,

        @NotBlank(message = "O nome é obrigatório")
        String nome,

        @NotNull(message = "A carga horária é obrigatória")
        Integer cargaHoraria,

        @Enumerated(EnumType.STRING)
        @NotNull(message = "O tipo da disciplína é obrigatória")
        String tipo,

        boolean situacao
)  implements BaseDto<DisciplinaDto> {

        @Override
        public DisciplinaDto withId(Long id) {
                return new DisciplinaDto(id, curso, codigo, nome, cargaHoraria, tipo, situacao);
        }
}
