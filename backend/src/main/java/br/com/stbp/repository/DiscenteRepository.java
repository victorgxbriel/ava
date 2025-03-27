package br.com.stbp.repository;

import br.com.stbp.model.dto.IgrejaDto;
import br.com.stbp.model.dto.PeriodoLetivoDto;
import br.com.stbp.model.entity.Discente;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface DiscenteRepository extends BaseRepository<Discente> {


    Optional<Discente> findByEmail(String email);

    @Query("SELECT new br.com.stbp.model.dto.PeriodoLetivoDto(p.id, p.ano, p.semestre, p.dataInicio, p.dataFim) " +
            "FROM Discente d " +
            "JOIN d.turma t " +
            "JOIN t.periodoLetivo p " +
            "WHERE d.id = :discenteId")
    PeriodoLetivoDto findPeriodoLetivoByDiscenteId(@Param("discenteId") Long discenteId);

    @Query("SELECT new br.com.stbp.model.dto.IgrejaDto(i.id, i.nome, i.localizacao, i.nomePastor, i.telefonePastor, i.active) " +
            "FROM Discente d " +
            "JOIN d.igreja i " +
            "WHERE d.id = :discenteId")
    IgrejaDto findIgrejaByDiscenteId(@Param("discenteId") Long discenteId);


}
