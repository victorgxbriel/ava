package br.com.stbp.model.enums;

public enum Vinculo {

    PERMANENTE("Permanente"), COLABORADOR("Colaborador");

    private final String descricao;

    Vinculo(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
