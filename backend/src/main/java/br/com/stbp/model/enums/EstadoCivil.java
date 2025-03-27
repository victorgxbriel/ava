package br.com.stbp.model.enums;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

public enum EstadoCivil {
    CASADO_A("Casado(a)"), SOLTEIRO_A("Solteiro(a)"), DIVORCIADO_A("Divorciado(a)"), VIUVO_A("Viuvo(a)"), N_A("");

    private final String descricao;

    EstadoCivil(String descricao) {
        this.descricao = descricao;
    }

    @JsonValue
    public String getDescricao() {
        return descricao;
    }

    @JsonCreator
    public static Escolaridade forValue(String descricao) {
        for (Escolaridade e : Escolaridade.values()) {
            if (e.getDescricao().equals(descricao)) {
                return e;
            }
        }
        throw new IllegalArgumentException("Descrição inválida: " + descricao);
    }
}
