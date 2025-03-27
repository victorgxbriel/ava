package br.com.stbp.repository;

import br.com.stbp.model.entity.Polo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PoloRepository extends BaseRepository< Polo> {

}
