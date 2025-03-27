package br.com.stbp.service.impl;

import br.com.stbp.model.dto.DocenteDto;
import br.com.stbp.model.entity.Docente;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.DocenteConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.DocenteRepository;
import br.com.stbp.service.DocenteService;
import org.springframework.stereotype.Service;

@Service
public class DocenteServiceImpl implements DocenteService {

    private final DocenteRepository docenteRepository;
    private final DocenteConverter docenteConverter;

    public DocenteServiceImpl(DocenteConverter docenteConverter, DocenteRepository docenteRepository) {
        this.docenteConverter = docenteConverter;
        this.docenteRepository = docenteRepository;
    }

    @Override
    public BaseRepository<Docente> getRepository() {
        return this.docenteRepository;
    }

    @Override
    public BaseConverter<Docente, DocenteDto> getDtoMapper() {
        return this.docenteConverter;
    }

    @Override
    public void validateBeforeSave(Docente entity) {}

    @Override
    public void validateBeforeUpdate(Docente entity) {}
}
