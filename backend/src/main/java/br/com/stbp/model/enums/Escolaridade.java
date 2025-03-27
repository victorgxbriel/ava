package br.com.stbp.model.enums;

public enum Escolaridade {
    ENSINO_MEDIO("Ensino Médio"),
    SUPERIOR("Superior"),
    NA("N/A"),
    SUPERIOR_COMPLETO("Superior completo"),
    SUPERIOR_INCOMPLETO("Superior incompleto"),

    N_A("");

    private final String descricao;

    Escolaridade(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
