package br.com.stbp.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class Equivalencia extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_EQUIVALENCIA")
    @SequenceGenerator(name = "SEQ_EQUIVALENCIA", sequenceName = "equivalencia_idequivalencia_seq", allocationSize = 1)
    @Column(name = "id_equivalencia")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_disciplina", nullable = false)
    private Disciplina disciplina;

    @Column(name = "codigo", unique = true, nullable = false)
    private String codigo;

    @Column(name = "nome")
    private String nome;

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}
