package br.com.stbp.model.dto.matricula;

import br.com.stbp.model.dto.DisciplinaDto;
import br.com.stbp.model.dto.DocenteDto;
import lombok.Builder;

@Builder
public record ClasseAlunoDto(
        Long id,
        String codigo,
        DisciplinaDto disciplinaDto,
        DocenteDto docenteDto,
        String situacao,
        Float nota
) {
}
