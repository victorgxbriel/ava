package br.com.stbp.service.impl;

import br.com.stbp.model.dto.CursoDto;
import br.com.stbp.model.entity.Curso;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.CursoConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.CursoRepository;
import br.com.stbp.service.CursoService;
import org.springframework.stereotype.Service;

@Service
public class CursoServiceImpl implements CursoService {
    private final CursoRepository cursoRepository;
    private final CursoConverter cursoConverter;


    public CursoServiceImpl(CursoRepository cursoRepository, CursoConverter cursoConverter) {
        this.cursoConverter = cursoConverter;
        this.cursoRepository = cursoRepository;
    }

    @Override
    public BaseRepository<Curso> getRepository() {
        return this.cursoRepository;
    }

    @Override
    public BaseConverter<Curso, CursoDto> getDtoMapper() {
        return this.cursoConverter;
    }

    @Override
    public void validateBeforeSave(Curso entity) {}

    @Override
    public void validateBeforeUpdate(Curso entity) {}
}
