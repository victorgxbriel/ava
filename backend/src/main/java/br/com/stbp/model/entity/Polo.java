package br.com.stbp.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class Polo extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_POLO")
    @SequenceGenerator(name = "SEQ_POLO", sequenceName = "polo_idpolo_seq", allocationSize = 1)
    @Column(name = "idpolo")
    private Long id;

    @Column(name = "nome")
    private String nome; // descricao

    // endereco

    // codigo

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}