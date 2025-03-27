package br.com.stbp.model.dto;

import br.com.stbp.model.entity.Igreja;
import br.com.stbp.model.entity.Polo;
import br.com.stbp.model.entity.Turma;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.Builder;
import lombok.Getter;
import org.hibernate.validator.constraints.br.CPF;

import java.time.LocalDate;

@Builder
public record DiscenteDto(
        Long id,

        @NotNull(message = "O polo não pode ser nulo")
        Long polo,

        @NotNull(message = "A igreja não pode ser nula")
        Long igreja,

        @NotNull(message = "A turma não pode ser nula")
        Long turma,

        @NotNull(message = "A matrícula não pode ser nula")
        String matricula,

        @NotBlank(message = "O nome é obrigatório")
        String nome,

        @CPF(message = "CPF inválido")
        @NotNull(message = "O CPF é obrigatório")
        String cpf,

        @Email(message = "E-mail inválido")
        @NotBlank(message = "O e-mail é obrigatório")
        String email,

        @NotBlank(message = "O telefone é obrigatório")
        String telefone,

        @Enumerated(EnumType.STRING)
        @NotNull(message = "A situação do discente é obrigatória")
        String situacao,

        @Pattern(regexp = "M|F", message = "Sexo deve ser 'M' ou 'F'")
        char sexo,

        String naturalidade,

        String orgaoEmissor,

        @NotNull(message = "A data de nascimento é obrigatória")
        LocalDate dataNascimento,

        String filiacao,

        @Enumerated(EnumType.STRING)
        @NotNull(message = "O estado civil é obrigatório")
        String estadoCivil,

        String endereco,

        @Enumerated(EnumType.STRING)
        @NotNull(message = "A escolaridade é obrigatória")
        String escolaridade,

        @NotNull(message = "A data de ingresso é obrigatória")
        LocalDate dataIngresso,

        boolean active

) implements BaseDto<DiscenteDto> {

        @Override
        public DiscenteDto withId(Long id) {
                return new DiscenteDto(id, polo, igreja, turma, matricula,nome , cpf, email, telefone, situacao, sexo, naturalidade,
                        orgaoEmissor, dataNascimento, filiacao, estadoCivil, endereco, escolaridade, dataIngresso, active );
        }
}
