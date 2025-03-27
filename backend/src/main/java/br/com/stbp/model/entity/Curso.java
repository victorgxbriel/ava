package br.com.stbp.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class Curso extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_CURSO")
    @SequenceGenerator(name = "SEQ_CURSO", sequenceName = "curso_idcurso_seq", allocationSize = 1)
    @Column(name = "id_curso")
    private Long id;

    @Column(name = "nome")
    private String nome;

    @Column(name = "codigo")
    private int codigo;

    // duracao - periodo

    // carga horaria - total



    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}