package br.com.stbp.model.enums;

public enum Situacao {
    CURSANDO("Cursando"), TRANCADO("Trancado"), FORMADO("Formado");

    private final String descricao;

    Situacao(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
