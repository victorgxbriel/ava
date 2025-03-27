package br.com.stbp.model.enums.converter;

import br.com.stbp.model.enums.EstadoCivil;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class EstadoCivilConverter implements AttributeConverter<EstadoCivil, String> {

    @Override
    public String convertToDatabaseColumn(EstadoCivil estadoCivil) {
        return estadoCivil != null ? estadoCivil.getDescricao() : null;
    }

    @Override
    public EstadoCivil convertToEntityAttribute(String descricao) {
        if (descricao == null) {
            return null;
        }
        for (EstadoCivil e : EstadoCivil.values()) {
            if (e.getDescricao().equals(descricao)) {
                return e;
            }
        }
        throw new IllegalArgumentException("Estado civil inválido: " + descricao);
    }
}
