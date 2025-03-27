package br.com.stbp.service.impl;

import br.com.stbp.model.dto.PoloDto;
import br.com.stbp.model.entity.Polo;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.PoloConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.PoloRepository;
import br.com.stbp.service.PoloService;
import org.springframework.stereotype.Service;

@Service
public class PoloServiceImpl implements PoloService {

    private final PoloConverter poloConverter;
    private final PoloRepository poloRepository;

    public PoloServiceImpl(PoloRepository poloRepository, PoloConverter poloConverter) {
        this.poloConverter = poloConverter;
        this.poloRepository = poloRepository;
    }

    @Override
    public BaseRepository<Polo> getRepository() {
        return this.poloRepository;
    }

    @Override
    public BaseConverter<Polo, PoloDto> getDtoMapper() {
        return this.poloConverter;
    }

    @Override
    public void validateBeforeSave(Polo entity) {}

    @Override
    public void validateBeforeUpdate(Polo entity) {}

}
