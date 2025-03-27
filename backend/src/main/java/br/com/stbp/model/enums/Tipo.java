package br.com.stbp.model.enums;

public enum Tipo {
    OBG("OBG"), OPT("OPT");

    private final String descricao;

    Tipo(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
