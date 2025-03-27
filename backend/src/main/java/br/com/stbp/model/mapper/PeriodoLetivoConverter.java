package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.PeriodoLetivoDto;
import br.com.stbp.model.entity.PeriodoLetivo;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class PeriodoLetivoConverter implements BaseConverter<PeriodoLetivo, PeriodoLetivoDto> {

    public PeriodoLetivo toEntity(PeriodoLetivoDto dto) {
        return PeriodoLetivo.builder()
                .ano(dto.ano())
                .semestre(dto.semestre())
                .dataInicio(dto.dataInicio())
                .dataFim(dto.dataFim())
                .id(dto.id())
                .build();
    }

    public PeriodoLetivoDto toDto(PeriodoLetivo entity){
        return PeriodoLetivoDto.builder()
                .ano(entity.getAno())
                .semestre(entity.getSemestre())
                .dataFim(entity.getDataFim())
                .dataInicio(entity.getDataInicio())
                .id(entity.getId())
                .build();
    }

}