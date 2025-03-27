package br.com.stbp.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;


@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class Turma extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_TURMA")
    @SequenceGenerator(name = "SEQ_TURMA", sequenceName = "turma_idturma_seq", allocationSize = 1)
    @Column(name = "id_turma")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_periodo_letivo", nullable = false)
    private PeriodoLetivo periodoLetivo;

    @ManyToOne
    @JoinColumn(name = "id_curso", nullable = false)
    private Curso curso;

    @Column(name = "codigo", unique = true, nullable = false, length = 4)
    private String codigo;

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}

