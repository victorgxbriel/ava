package br.com.stbp.repository;

import br.com.stbp.model.entity.Docente;
import org.springframework.stereotype.Repository;

import javax.print.Doc;
import java.util.Optional;

@Repository
public interface DocenteRepository extends BaseRepository<Docente> {
    Optional<Docente> findDocenteByEmail(String email);
}
