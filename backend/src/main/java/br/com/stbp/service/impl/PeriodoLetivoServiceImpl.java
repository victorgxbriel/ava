package br.com.stbp.service.impl;

import br.com.stbp.model.dto.PeriodoLetivoDto;
import br.com.stbp.model.entity.PeriodoLetivo;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.PeriodoLetivoConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.PeriodoLetivoRepository;
import br.com.stbp.service.PeriodoLetivoService;
import org.springframework.stereotype.Service;

@Service
public class PeriodoLetivoServiceImpl implements PeriodoLetivoService {

    private final PeriodoLetivoConverter periodoLetivoConverter;
    private final PeriodoLetivoRepository periodoLetivoRepository;

    public PeriodoLetivoServiceImpl(PeriodoLetivoRepository periodoLetivoRepository, PeriodoLetivoConverter periodoLetivoConverter) {
        this.periodoLetivoConverter = periodoLetivoConverter;
        this.periodoLetivoRepository = periodoLetivoRepository;
    }

    @Override
    public BaseRepository<PeriodoLetivo> getRepository() {
        return this.periodoLetivoRepository;
    }

    @Override
    public BaseConverter<PeriodoLetivo, PeriodoLetivoDto> getDtoMapper() {
        return this.periodoLetivoConverter;
    }

    @Override
    public void validateBeforeSave(PeriodoLetivo entity) {}

    @Override
    public void validateBeforeUpdate(PeriodoLetivo entity) {}

}
