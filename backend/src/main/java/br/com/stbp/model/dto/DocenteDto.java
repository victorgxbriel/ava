package br.com.stbp.model.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;
import org.hibernate.validator.constraints.br.CPF;

import java.time.LocalDate;

@Builder
public record DocenteDto(
        Long id,

        @NotNull(message = "A código não pode ser nulo")
        String codigo,

        @NotBlank(message = "O nome é obrigatório")
        String nome,

        @CPF(message = "CPF inválido")
        @NotBlank(message = "O CPF é obrigatório")
        String cpf,

        @Email(message = "E-mail inválido")
        @NotBlank(message = "O e-mail é obrigatório")
        String email,

        boolean situacao

        // todo vinculo docente

) implements BaseDto<DocenteDto> {

        @Override
        public DocenteDto withId(Long id) {
                return new DocenteDto(id, codigo, nome, cpf, email, situacao);
        }
}