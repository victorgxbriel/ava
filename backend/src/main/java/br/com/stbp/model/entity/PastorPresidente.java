package br.com.stbp.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.*;
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class PastorPresidente extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_PASTOR_PRESIDENTE")
    @SequenceGenerator(name = "SEQ_PASTOR_PRESIDENTE", sequenceName = "pastorpresidente_idpastorpresidente_seq", allocationSize = 1)
    @Column(name = "id_pastor_presidente")
    private Long id;

    @Column(name = "nome")
    private String nome;

    @Column(name = "telefone", length = 14)
    private String telefone;

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}
