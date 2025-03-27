package br.com.stbp.model.dto;


import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;


@Builder
public record IgrejaDto(
        Long id,

        @NotBlank(message = "O nome é obrigatório")
        String nome,

        @NotBlank(message = "A localização é obrigatório")
        String localizacao,

        String nomePastor,

        String telefonePastor,

        boolean situacao

        )  implements BaseDto<IgrejaDto> {

        @Override
        public IgrejaDto withId(Long id) {
                return new IgrejaDto(id ,nome, localizacao, nomePastor, telefonePastor, situacao);
        }
}
