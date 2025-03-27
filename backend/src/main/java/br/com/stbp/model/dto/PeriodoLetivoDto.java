package br.com.stbp.model.dto;

import br.com.stbp.model.entity.PeriodoLetivo;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;

import java.time.LocalDate;

@Builder
public record PeriodoLetivoDto(
        Long id,

        @NotNull(message = "A ano não pode ser nulo")
        String ano,

        @NotNull(message = "O semestre não pode ser nulo")
        String semestre,

        @NotNull(message = "A data de inicio é obrigatória")
        LocalDate dataInicio,

        @NotNull(message = "A data do fim é obrigatória")
        LocalDate dataFim

) implements BaseDto<PeriodoLetivoDto> {

        @Override
        public PeriodoLetivoDto withId(Long id) {
                return new PeriodoLetivoDto(id, ano, semestre, dataInicio, dataFim);
        }
}