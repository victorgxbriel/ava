package br.com.stbp.service.impl;

import br.com.stbp.model.dto.EquivalenciaDto;
import br.com.stbp.model.entity.Equivalencia;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.EquivalenciaConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.EquivalenciaRepository;
import br.com.stbp.service.EquivalenciaService;
import org.springframework.stereotype.Service;

@Service
public class EquivalenciaServiceImpl implements EquivalenciaService {

    private final EquivalenciaRepository equivalenciaRepository;
    private final EquivalenciaConverter equivalenciaConverter;

    public EquivalenciaServiceImpl(EquivalenciaConverter equivalenciaConverter, EquivalenciaRepository equivalenciaRepository) {
        this.equivalenciaConverter = equivalenciaConverter;
        this.equivalenciaRepository = equivalenciaRepository;
    }

    @Override
    public BaseRepository<Equivalencia> getRepository() {
        return this.equivalenciaRepository;
    }

    @Override
    public BaseConverter<Equivalencia, EquivalenciaDto> getDtoMapper() {
        return this.equivalenciaConverter;
    }

    @Override
    public void validateBeforeSave(Equivalencia entity) {}

    @Override
    public void validateBeforeUpdate(Equivalencia entity) {}
}