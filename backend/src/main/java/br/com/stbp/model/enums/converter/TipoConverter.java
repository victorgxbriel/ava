package br.com.stbp.model.enums.converter;

import br.com.stbp.model.enums.Tipo;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class TipoConverter implements AttributeConverter<Tipo, String> {

    @Override
    public String convertToDatabaseColumn(Tipo tipo) {
        return tipo != null ? tipo.getDescricao() : null;
    }

    @Override
    public Tipo convertToEntityAttribute(String descricao) {
        if (descricao == null) {
            return null;
        }
        for (Tipo e : Tipo.values()) {
            if (e.getDescricao().equals(descricao)) {
                return e;
            }
        }
        throw new IllegalArgumentException("Tipo inválida: " + descricao);
    }
}
