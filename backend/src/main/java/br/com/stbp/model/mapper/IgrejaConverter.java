package br.com.stbp.model.mapper;

import br.com.stbp.model.dto.IgrejaDto;
import br.com.stbp.model.entity.Igreja;
import br.com.stbp.repository.PastorPresidenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class IgrejaConverter implements BaseConverter<Igreja, IgrejaDto> {

    public Igreja toEntity(IgrejaDto dto) {
        return Igreja.builder()
                .nome(dto.nome())
                .id(dto.id())
                .localizacao(dto.localizacao())
                .nomePastor(dto.nomePastor())
                .telefonePastor(dto.telefonePastor())
                .build();
    }

    public IgrejaDto toDto(Igreja entity){
        return IgrejaDto.builder()
                .id(entity.getId())
                .localizacao(entity.getLocalizacao())
                .nome(entity.getNome())
                .nomePastor(entity.getNomePastor())
                .telefonePastor(entity.getTelefonePastor())
                .situacao(entity.isActive())
                .build();
    }

}
