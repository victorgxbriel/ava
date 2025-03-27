package br.com.stbp.repository;

import br.com.stbp.model.entity.Disciplina;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DisciplinaRepository extends BaseRepository<Disciplina> {

}