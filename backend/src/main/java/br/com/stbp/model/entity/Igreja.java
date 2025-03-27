package br.com.stbp.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class Igreja extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_IGREJA")
    @SequenceGenerator(name = "SEQ_IGREJA", sequenceName = "igreja_idigreja_seq", allocationSize = 1)
    @Column(name = "id_igreja")
    private Long id;

    @Column(name = "nome")
    private String nome;

    @Column(name = "localizacao")
    private String localizacao;

    @Column(name = "pastor_nome")
    private String nomePastor;

    @Column(name = "pastor_telefone", length = 14)
    private String telefonePastor;

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}
