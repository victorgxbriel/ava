package br.com.stbp.model.enums.converter;

import br.com.stbp.model.enums.Vinculo;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class VinculoConverter implements AttributeConverter<Vinculo, String> {

    @Override
    public String convertToDatabaseColumn(Vinculo vinculo) {
        return vinculo != null ? vinculo.getDescricao() : null;
    }

    @Override
    public Vinculo convertToEntityAttribute(String descricao) {
        if (descricao == null) {
            return null;
        }
        for (Vinculo e : Vinculo.values()) {
            if (e.getDescricao().equals(descricao)) {
                return e;
            }
        }
        throw new IllegalArgumentException("Vinculo inválida: " + descricao);
    }}
