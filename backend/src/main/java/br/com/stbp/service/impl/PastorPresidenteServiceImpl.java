package br.com.stbp.service.impl;

import br.com.stbp.model.dto.PastorPresidenteDto;
import br.com.stbp.model.entity.PastorPresidente;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.PastorPresidenteConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.PastorPresidenteRepository;
import br.com.stbp.service.PastorPresidenteService;
import org.springframework.stereotype.Service;

@Service
public class PastorPresidenteServiceImpl implements PastorPresidenteService {

    private final PastorPresidenteRepository pastorPresidenteRepository;
    private final PastorPresidenteConverter pastorPresidenteConverter;

    public PastorPresidenteServiceImpl(PastorPresidenteConverter pastorPresidenteConverter, PastorPresidenteRepository pastorPresidenteRepository) {
        this.pastorPresidenteConverter = pastorPresidenteConverter;
        this.pastorPresidenteRepository = pastorPresidenteRepository;
    }

    @Override
    public BaseRepository<PastorPresidente> getRepository() {
        return this.pastorPresidenteRepository;
    }

    @Override
    public BaseConverter<PastorPresidente, PastorPresidenteDto> getDtoMapper() {
        return this.pastorPresidenteConverter;
    }

    @Override
    public void validateBeforeSave(PastorPresidente entity) {}

    @Override
    public void validateBeforeUpdate(PastorPresidente entity) {}

}
