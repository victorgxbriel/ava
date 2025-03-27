package br.com.stbp.service.impl;

import br.com.stbp.exception.ResourceNotFoundException;
import br.com.stbp.model.dto.ClasseDto;
import br.com.stbp.model.dto.DiscenteDto;
import br.com.stbp.model.entity.Classe;
import br.com.stbp.model.entity.Discente;
import br.com.stbp.model.entity.Matricula;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.model.mapper.ClasseConverter;
import br.com.stbp.model.mapper.DiscenteConverter;
import br.com.stbp.repository.BaseRepository;
import br.com.stbp.repository.ClasseRepository;
import br.com.stbp.service.BaseService;
import br.com.stbp.service.ClasseService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ClasseServiceImpl implements ClasseService {
    private final ClasseRepository classeRepository;
    private final ClasseConverter classeConverter;

    private final DiscenteConverter discenteConverter;


    public ClasseServiceImpl(ClasseRepository classeRepository,
                             ClasseConverter classeConverter,
                             DiscenteConverter discenteConverter) {
        this.classeRepository = classeRepository;
        this.classeConverter = classeConverter;
        this.discenteConverter = discenteConverter;
    }

    public List<DiscenteDto> getDiscentesByClasse(Long id) {
        Classe classe = classeRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Classe não encontrada"));

        return classe.getMatriculas()
                .stream()
                .map( matricula -> {
                    return  discenteConverter.toDto(matricula.getDiscente());
                })
                .toList();
    }

    @Override
    public BaseRepository<Classe> getRepository() {
        return this.classeRepository;
    }

    @Override
    public BaseConverter<Classe, ClasseDto> getDtoMapper() {
        return this.classeConverter;
    }

    @Override
    public void validateBeforeSave(Classe entity) {}

    @Override
    public void validateBeforeUpdate(Classe entity) {}
}
