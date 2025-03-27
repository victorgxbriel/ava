package br.com.stbp.service.impl;

import br.com.stbp.model.dto.MatriculaDto;
import br.com.stbp.model.entity.Matricula;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.MatriculaConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.MatriculaRepository;
import br.com.stbp.service.MatriculaService;
import org.springframework.stereotype.Service;

@Service
public class MatriculaServiceImpl implements MatriculaService {

    private final MatriculaRepository matriculaRepository;
    private final MatriculaConverter matriculaConverter;

    public MatriculaServiceImpl(MatriculaConverter matriculaConverter, MatriculaRepository matriculaRepository) {
        this.matriculaConverter = matriculaConverter;
        this.matriculaRepository = matriculaRepository;
    }

    @Override
    public BaseRepository<Matricula> getRepository() {
        return this.matriculaRepository;
    }

    @Override
    public BaseConverter<Matricula, MatriculaDto> getDtoMapper() {
        return this.matriculaConverter;
    }

    @Override
    public void validateBeforeSave(Matricula entity) {}

    @Override
    public void validateBeforeUpdate(Matricula entity) {}

}
