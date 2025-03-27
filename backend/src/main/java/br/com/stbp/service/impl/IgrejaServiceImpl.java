package br.com.stbp.service.impl;

import br.com.stbp.model.dto.IgrejaDto;
import br.com.stbp.model.entity.Igreja;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.IgrejaConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.IgrejaRepository;
import br.com.stbp.service.IgrejaService;
import org.springframework.stereotype.Service;

@Service
public class IgrejaServiceImpl implements IgrejaService {

    private final IgrejaRepository igrejaRepository;
    private final IgrejaConverter igrejaConverter;

    public IgrejaServiceImpl(IgrejaConverter igrejaConverter, IgrejaRepository igrejaRepository) {
        this.igrejaConverter = igrejaConverter;
        this.igrejaRepository = igrejaRepository;
    }

    @Override
    public BaseRepository<Igreja> getRepository() {
        return this.igrejaRepository;
    }

    @Override
    public BaseConverter<Igreja, IgrejaDto> getDtoMapper() {
        return this.igrejaConverter;
    }

    @Override
    public void validateBeforeSave(Igreja entity) {}

    @Override
    public void validateBeforeUpdate(Igreja entity) {}

}
