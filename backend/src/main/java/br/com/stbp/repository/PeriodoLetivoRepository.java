package br.com.stbp.repository;

import br.com.stbp.model.entity.PeriodoLetivo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PeriodoLetivoRepository extends BaseRepository< PeriodoLetivo> {

}
