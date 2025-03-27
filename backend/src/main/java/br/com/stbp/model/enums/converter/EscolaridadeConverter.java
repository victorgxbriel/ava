package br.com.stbp.model.enums.converter;
import br.com.stbp.model.enums.Escolaridade;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class EscolaridadeConverter implements AttributeConverter<Escolaridade, String> {

    @Override
    public String convertToDatabaseColumn(Escolaridade escolaridade) {
        return escolaridade != null ? escolaridade.getDescricao() : null;
    }

    @Override
    public Escolaridade convertToEntityAttribute(String descricao) {
        if (descricao == null) {
            return null;
        }
        for (Escolaridade e : Escolaridade.values()) {
            if (e.getDescricao().equals(descricao)) {
                return e;
            }
        }
        throw new IllegalArgumentException("Escolaridade inválida: " + descricao);
    }
}

