package br.com.stbp.repository;

import br.com.stbp.model.entity.BaseEntity;
import jakarta.transaction.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;

import java.util.List;
import java.util.Optional;

@NoRepositoryBean
public interface BaseRepository<T extends BaseEntity> extends JpaRepository<T, Long> {

    @Override
    @Transactional
    default void deleteById(Long id) {
        Optional<T> entity = findById(id);
        if (entity.isPresent()) {
            entity.get().setActive(false);
            save(entity.get());
        }
    }

    @Override
    @Transactional
    default void delete(T obj) {
        obj.setActive(false);
        save(obj);
    }

    @Override
    @Transactional
    default void deleteAll(Iterable<? extends T> arg0) {
        arg0.forEach(entity -> deleteById(entity.getId()));
    }

    @Query("select e from #{#entityName} e where e.active = true")
    List<T> findAtivos();

    @Query("select e from #{#entityName} e where e.active = true")
    Page<T> findAtivosPage(Pageable pageable);
}
