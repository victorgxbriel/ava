package br.com.stbp.repository;

import br.com.stbp.model.entity.Igreja;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IgrejaRepository extends BaseRepository<Igreja> {

}
