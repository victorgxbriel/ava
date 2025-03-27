package br.com.stbp.repository;

import br.com.stbp.model.entity.Curso;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CursoRepository extends BaseRepository<Curso> {

}
