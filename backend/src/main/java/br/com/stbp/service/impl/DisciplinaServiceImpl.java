package br.com.stbp.service.impl;

import br.com.stbp.model.dto.DisciplinaDto;
import br.com.stbp.model.entity.Disciplina;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.DisciplinaConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.DisciplinaRepository;
import br.com.stbp.service.DisciplinaService;
import org.springframework.stereotype.Service;

@Service
public class DisciplinaServiceImpl implements DisciplinaService {

    private final DisciplinaRepository disciplinaRepository;
    private final DisciplinaConverter disciplinaConverter;

    public DisciplinaServiceImpl(DisciplinaConverter disciplinaConverter, DisciplinaRepository disciplinaRepository) {
        this.disciplinaConverter = disciplinaConverter;
        this.disciplinaRepository = disciplinaRepository;
    }

    @Override
    public BaseRepository<Disciplina> getRepository() {
        return this.disciplinaRepository;
    }

    @Override
    public BaseConverter<Disciplina, DisciplinaDto> getDtoMapper() {
        return this.disciplinaConverter;
    }

    @Override
    public void validateBeforeSave(Disciplina entity) {}

    @Override
    public void validateBeforeUpdate(Disciplina entity) {}

}
