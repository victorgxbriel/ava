package br.com.stbp.model.entity;


import br.com.stbp.model.enums.Vinculo;
import br.com.stbp.model.enums.converter.VinculoConverter;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class Docente extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_DOSCENTE")
    @SequenceGenerator(name = "SEQ_DOSCENTE", sequenceName = "doscente_iddoscente_seq", allocationSize = 1)
    @Column(name = "id_docente")
    private Long id;

    @Column(name = "codigo", unique = true)
    private String codigo;

    @Column(name = "nome", nullable = false)
    private String nome;

    @Column(name = "cpf", unique = true, nullable = false, length = 14)
    private String cpf;

    @Column(name = "email",unique = true, nullable = false)
    private String email;

    // todo Vinculo docente

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}
