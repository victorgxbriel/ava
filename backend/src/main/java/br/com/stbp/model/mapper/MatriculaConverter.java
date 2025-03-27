package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.MatriculaDto;
import br.com.stbp.model.entity.Matricula;
import br.com.stbp.repository.ClasseRepository;
import br.com.stbp.repository.DiscenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class MatriculaConverter implements BaseConverter<Matricula, MatriculaDto> {

    @Autowired
    private DiscenteRepository discenteRepository;

    @Autowired
    private ClasseRepository classeRepository;

    public Matricula toEntity(MatriculaDto dto) {
        return Matricula.builder()
                .discente(discenteRepository.getReferenceById(dto.discente()))
                .classe(classeRepository.getReferenceById(dto.classe()))
                .id(dto.id())
                .nota(dto.nota())
                .situacao(dto.situacao())
                .build();
    }

    public MatriculaDto toDto(Matricula entity){
        return MatriculaDto.builder()
                .classe(entity.getClasse().getId())
                .discente(entity.getDiscente().getId())
                .nomeDiscente(entity.getDiscente().getNome())
                .nomeClasse(entity.getClasse().getCodigo())
                .id(entity.getId())
                .nota(entity.getNota())
                .situacao(entity.getSituacao())
                .build();
    }
    
}
