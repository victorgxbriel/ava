package br.com.stbp.model.mapper.matricula;

import br.com.stbp.model.dto.matricula.ClasseAlunoDto;
import br.com.stbp.model.entity.Classe;
import br.com.stbp.model.entity.Docente;
import br.com.stbp.model.entity.Matricula;
import br.com.stbp.model.mapper.ClasseConverter;
import br.com.stbp.model.mapper.DisciplinaConverter;
import br.com.stbp.model.mapper.DocenteConverter;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ClasseAlunoConverter {
    private final DocenteConverter docenteConverter;

    private final DisciplinaConverter disciplinaConverter;

    public ClasseAlunoConverter(DocenteConverter docenteConverter,
                                DisciplinaConverter disciplinaConverter){
        this.docenteConverter = docenteConverter;
        this.disciplinaConverter =disciplinaConverter;
    }

    public ClasseAlunoDto toDto(Matricula matricula) {
        return ClasseAlunoDto.builder()
                .id(matricula.getId())
                .codigo(matricula.getClasse().getCodigo())
                .disciplinaDto(disciplinaConverter.toDto(matricula.getClasse().getDisciplina()))
                .docenteDto(docenteConverter.toDto(matricula.getClasse().getDocente()))
                .situacao(matricula.getSituacao())
                .nota(matricula.getNota())
                .build();
    }

    public List<ClasseAlunoDto> toDto(List<Matricula> matriculas) {
        return matriculas.stream()
                .map(this::toDto)
                .toList();
    }
}
