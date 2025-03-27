package br.com.stbp.service.impl;

import br.com.stbp.model.dto.TurmaDto;
import br.com.stbp.model.entity.Turma;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.TurmaConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.TurmaRepository;
import br.com.stbp.service.TurmaService;
import org.springframework.stereotype.Service;

@Service
public class TurmaServiceImpl implements TurmaService {

    private final TurmaConverter turmaConverter;
    private final TurmaRepository turmaRepository;

    public TurmaServiceImpl(TurmaRepository turmaRepository, TurmaConverter turmaConverter) {
        this.turmaConverter = turmaConverter;
        this.turmaRepository = turmaRepository;
    }

    @Override
    public BaseRepository<Turma> getRepository() {
        return this.turmaRepository;
    }

    @Override
    public BaseConverter<Turma, TurmaDto> getDtoMapper() {
        return this.turmaConverter;
    }

    @Override
    public void validateBeforeSave(Turma entity) {}

    @Override
    public void validateBeforeUpdate(Turma entity) {}

}
