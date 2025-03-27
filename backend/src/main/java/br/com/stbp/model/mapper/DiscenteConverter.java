package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.DiscenteDto;
import br.com.stbp.model.entity.Discente;
import br.com.stbp.model.enums.Escolaridade;
import br.com.stbp.model.enums.EstadoCivil;
import br.com.stbp.model.enums.Situacao;
import br.com.stbp.repository.IgrejaRepository;
import br.com.stbp.repository.PoloRepository;
import br.com.stbp.repository.TurmaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class DiscenteConverter implements BaseConverter<Discente, DiscenteDto>{

    @Autowired
    private PoloRepository poloRepository;

    @Autowired
    private TurmaRepository turmaRepository;

    @Autowired
    private IgrejaRepository igrejaRepository;

    public Discente toEntity(DiscenteDto dto){
        return Discente.builder()
                .id(dto.id())
                .polo(poloRepository.getReferenceById(dto.polo()))
                .igreja(igrejaRepository.getReferenceById(dto.igreja()))
                .turma(turmaRepository.getReferenceById(dto.turma()))
                .matricula(dto.matricula())
                .nome(dto.nome())
                .cpf(dto.cpf())
                .email(dto.email())
                .telefone(dto.telefone())
                .situacao(Situacao.valueOf(dto.situacao()))
                .sexo(dto.sexo())
                .naturalidade(dto.naturalidade())
                .orgaoEmissor(dto.orgaoEmissor())
                .dataNascimento(dto.dataNascimento())
                .filiacao(dto.filiacao())
                .estadoCivil(EstadoCivil.valueOf(dto.estadoCivil()))
                .endereco(dto.endereco())
                .escolaridade(Escolaridade.valueOf(dto.escolaridade()))
                .dataIngresso(dto.dataIngresso())
                .build();
    }

    public DiscenteDto toDto(Discente entity) {
        return DiscenteDto.builder()
                .id(entity.getId())
                .polo(entity.getPolo().getId())
                .igreja(entity.getIgreja().getId())
                .turma(entity.getTurma().getId())
                .matricula(entity.getMatricula())
                .nome(entity.getNome())
                .cpf(entity.getCpf())
                .email(entity.getEmail())
                .telefone(entity.getTelefone())
                .situacao(entity.getSituacao().name())
                .sexo(entity.getSexo())
                .naturalidade(entity.getNaturalidade())
                .orgaoEmissor(entity.getOrgaoEmissor())
                .dataNascimento(entity.getDataNascimento())
                .filiacao(entity.getFiliacao())
                .estadoCivil(entity.getEstadoCivil().name())
                .endereco(entity.getEndereco())
                .escolaridade(entity.getEscolaridade().name())
                .dataIngresso(entity.getDataIngresso())
                .active(entity.isActive())
                .build();
    }
}
