package br.com.stbp.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
public class Classe extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_CLASSE")
    @SequenceGenerator(name = "SEQ_CLASSE", sequenceName = "classe_idclasse_seq", allocationSize = 1)
    @Column(name = "id_classe")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_docente", nullable = false)
    private Docente docente;

    @ManyToOne
    @JoinColumn(name = "id_disciplina", nullable = false)
    private Disciplina disciplina;

    @Column(name = "periodo", length = 6)
    private String periodo;

    @Column(name = "max_alunos")
    private Integer maxAlunos;

    @Column(name = "codigo", unique = true)
    private String codigo;

    @OneToMany(mappedBy = "classe", fetch = FetchType.LAZY)
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

