package br.com.stbp.service;

import br.com.stbp.exception.ResourceNotFoundException;
import br.com.stbp.model.entity.BaseEntity;
import br.com.stbp.model.mapper.BaseConverter;
import br.com.stbp.repository.BaseRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.stream.StreamSupport;

public interface BaseService<E extends BaseEntity, DTO> {

    BaseRepository<E> getRepository();
    BaseConverter<E, DTO> getDtoMapper();
    default List<DTO> findAll() {
        Iterable<E> entityList = getRepository().findAll();
        List<E> entityListasList = StreamSupport.stream(entityList.spliterator(), false)
                .toList();
        return getDtoMapper().toDto(entityListasList);
    }

    default Page<DTO> findAll(Pageable pageable) {
        Page<E> entityPage = getRepository().findAtivosPage(pageable);
        return new PageImpl<>(getDtoMapper().toDto(entityPage.getContent()), pageable, entityPage.getTotalElements());
    }

    default DTO findById(Long id) {

        E entity = getRepository().findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Id não encontrado: " + id));

        return getDtoMapper().toDto(entity);
    }

    // Método create
    default DTO create(DTO dto) {
        E entity = getDtoMapper().toEntity(dto);
        validateBeforeSave(entity);
        return getDtoMapper().toDto(getRepository().save(entity));
    }

    // Método update
    default DTO update(Long id, DTO dto) {

        getRepository().findById(id).orElseThrow(() -> new ResourceNotFoundException("Id não encontrado: " + id));

        E updatedEntity = getDtoMapper().toEntity(dto);
        validateBeforeUpdate(updatedEntity);
        getRepository().save(updatedEntity);

        return getDtoMapper().toDto(getRepository().save(updatedEntity));
    }

    default void deleteById(Long id){
        E entity = getRepository().findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Id não encontrado: " + id));
        getRepository().deleteById(id);
    }

    void validateBeforeSave(E entity);


    void validateBeforeUpdate(E entity);

}
