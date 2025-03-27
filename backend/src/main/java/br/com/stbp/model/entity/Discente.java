package br.com.stbp.model.entity;

import br.com.stbp.model.enums.Escolaridade;
import br.com.stbp.model.enums.EstadoCivil;
import br.com.stbp.model.enums.Situacao;
import br.com.stbp.model.enums.converter.EscolaridadeConverter;
import br.com.stbp.model.enums.converter.EstadoCivilConverter;
import br.com.stbp.model.enums.converter.SituacaoConverter;
import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.*;
import org.hibernate.validator.constraints.br.CPF;

import java.time.LocalDate;
import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class Discente extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_DISCENTE")
    @SequenceGenerator(name = "SEQ_DISCENTE", sequenceName = "discente_iddiscente_seq", allocationSize = 1)
    @Column(name = "id_discente")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_polo", nullable = false)
    private Polo polo;

    @ManyToOne
    @JoinColumn(name = "id_igreja", nullable = false)
    private Igreja igreja;

    @ManyToOne
    @JoinColumn(name = "id_turma", nullable = false)
    private Turma turma;

    @Column(name = "matricula", unique = true, nullable = false)
    private String matricula;

    @Column(name = "nome", nullable = false)
    private String nome;

    @Column(name = "cpf", unique = true, nullable = false, length = 14)
    private String cpf;

    @Column(name = "email",unique = true, nullable = false)
    private String email;

    @Column(name = "telefone",nullable = false, length = 14)
    private String telefone;

    @Convert(converter = SituacaoConverter.class)
    @Column(name = "situacao", nullable = false)
    private Situacao situacao;

    @Column(name = "sexo", nullable = false, length = 1)
    private char sexo;

    @Column(name = "naturalidade", nullable = false)
    private String naturalidade;

    @Column(name = "orgao_emissor", nullable = false)
    private String orgaoEmissor;

    @Column(name = "data_nascimento", nullable = false)
    private LocalDate dataNascimento;

    @Column(name = "filiacao",nullable = false)
    private String filiacao;

    @Convert(converter = EstadoCivilConverter.class)
    @Column(name = "estado_civil", nullable = false)
    private EstadoCivil estadoCivil;

    @Column(name = "endereco", nullable = false)
    private String endereco;

    @Convert(converter = EscolaridadeConverter.class)
    @Column(name = "escolaridade", nullable = false)
    private Escolaridade escolaridade;

    @Column(name = "data_ingresso", nullable = false)
    private LocalDate dataIngresso;

    @OneToMany(mappedBy = "discente", fetch = FetchType.LAZY)
    private List<Matricula> matriculas;

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }
}
