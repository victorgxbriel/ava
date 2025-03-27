package br.com.stbp.model.entity;

import br.com.stbp.model.enums.Tipo;
import br.com.stbp.model.enums.converter.TipoConverter;
import jakarta.persistence.*;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class Disciplina extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_DISCIPLINA")
    @SequenceGenerator(name = "SEQ_DISCIPLINA", sequenceName = "disciplina_iddisciplina_seq", allocationSize = 1)
    @Column(name = "id_disciplina")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "idcurso", nullable = false)
    private Curso curso;

    @Column(name = "codigo", unique = true, nullable = false)
    private String codigo;

    @Column(name = "nome")
    private String nome;

    @Column(name = "carga_horaria", nullable = false)
    private Integer cargaHoraria;

    @Convert(converter = TipoConverter.class)
    @Column(name = "tipo", nullable = false)
    private Tipo tipo;

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }
}
