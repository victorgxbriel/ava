package br.com.stbp.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class Matricula extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_MATRICULA")
    @SequenceGenerator(name = "SEQ_MATRICULA", sequenceName = "matricula_idmatricula_seq", allocationSize = 1)
    @Column(name = "id_matricula")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_discente", nullable = false)
    private Discente discente;

    @ManyToOne
    @JoinColumn(name = "id_classe", nullable = false)
    private Classe classe;

    @Column(name = "nota")
    private Float nota;

    @Column(name = "situacao")
    private String situacao;

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}
