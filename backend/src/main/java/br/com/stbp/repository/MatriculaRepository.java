package br.com.stbp.repository;

import br.com.stbp.model.entity.Matricula;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MatriculaRepository extends BaseRepository<Matricula> {

    @Query("SELECT m FROM Matricula m " +
            "JOIN m.discente d " +
            "JOIN m.classe c " +
            "WHERE d.id = :discenteId AND c.periodo = :periodo")
    List<Matricula> findMatriculasByDiscenteAndPeriodo(@Param("discenteId") Long discenteID,
                                                       @Param("periodo") String periodo);
}