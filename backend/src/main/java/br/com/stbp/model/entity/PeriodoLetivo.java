package br.com.stbp.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.aspectj.bridge.Message;
import java.time.LocalDate;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter

public class PeriodoLetivo extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_PERIODO_LETIVO")
    @SequenceGenerator(name = "SEQ_PERIODO_LETIVO", sequenceName = "periodoletivo_idperiodoletivo_seq", allocationSize = 1)
    @Column(name = "id_periodo_letivo")
    private Long id;

    @Column(name = "ano", nullable = false, length = 4)
    private String ano;

    @Column(name = "semestre", nullable = false, length = 1)
    private String semestre;

    @Column(name = "data_inicio", nullable = false)
    private LocalDate dataInicio;

    @Column(name = "data_final", nullable = false)
    private LocalDate dataFim;

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

}