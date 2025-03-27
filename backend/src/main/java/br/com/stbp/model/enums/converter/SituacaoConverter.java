package br.com.stbp.model.enums.converter;

import br.com.stbp.model.enums.Situacao;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class SituacaoConverter implements AttributeConverter<Situacao, String> {

    @Override
    public String convertToDatabaseColumn(Situacao situacao) {
        return situacao != null ? situacao.getDescricao() : null;
    }

    @Override
    public Situacao convertToEntityAttribute(String descricao) {
        if (descricao == null) {
            return null;
        }
        for (Situacao e : Situacao.values()) {
            if (e.getDescricao().equals(descricao)) {
                return e;
            }
        }
        throw new IllegalArgumentException("Situacao inválida: " + descricao);
    }
}
