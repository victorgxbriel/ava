package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.ClasseDto;
import br.com.stbp.model.entity.Classe;
import br.com.stbp.repository.DisciplinaRepository;
import br.com.stbp.repository.DocenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ClasseConverter implements BaseConverter<Classe, ClasseDto> {

    @Autowired
    private DocenteRepository docenteRepository;

    @Autowired
    private DisciplinaRepository disciplinaRepository;

    public Classe toEntity(ClasseDto dto) {
        return Classe.builder()
                .id(dto.id())
                .docente(docenteRepository.getReferenceById(dto.docente()))
                .disciplina(disciplinaRepository.getReferenceById(dto.disciplina()))
                .periodo(dto.periodo())
                .codigo(dto.codigo())
                .build();
    }

    public ClasseDto toDto(Classe entity){
        return ClasseDto.builder()
                .id(entity.getId())
                .disciplina(entity.getDisciplina().getId())
                .nomeDisciplina(entity.getDisciplina().getNome())
                .docente(entity.getDocente().getId())
                .nomeDocente(entity.getDocente().getNome())
                .periodo(entity.getPeriodo())
                .codigo(entity.getCodigo())
                .situacao(entity.isActive())
                .build();
    }
}

