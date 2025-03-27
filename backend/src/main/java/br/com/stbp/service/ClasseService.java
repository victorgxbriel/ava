package br.com.stbp.service;

import br.com.stbp.model.dto.ClasseDto;
import br.com.stbp.model.dto.DiscenteDto;
import br.com.stbp.model.entity.Classe;
import br.com.stbp.model.entity.Discente;
import org.springframework.stereotype.Service;

import java.util.List;


public interface ClasseService extends BaseService<Classe, ClasseDto> {

    public List<DiscenteDto> getDiscentesByClasse(Long id);

}
