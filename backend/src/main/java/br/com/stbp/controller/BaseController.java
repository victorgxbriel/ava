package br.com.stbp.controller;

import br.com.stbp.model.dto.BaseDto;
import br.com.stbp.model.entity.BaseEntity;
import br.com.stbp.service.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Validated
public abstract class BaseController<E extends BaseEntity, DTO extends BaseDto<DTO>, S extends BaseService<E, DTO>> {

    protected S service;

    protected BaseController(S service) {
        this.service = service;
    }

    @GetMapping("/list")
    public ResponseEntity<List<DTO>> getList() {
        return ResponseEntity.ok(service.findAll());
    }

    @GetMapping
    public ResponseEntity<Page<DTO>> getAll(Pageable pageable) {
        return ResponseEntity.ok(service.findAll(pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<DTO> getById(@PathVariable Long id) {
        return ResponseEntity.ok(service.findById(id));
    }

    @PostMapping
    public ResponseEntity<DTO> create(@Validated @RequestBody DTO dto) {
        return ResponseEntity.status(HttpStatus.CREATED).body(service.create(dto));
    }

    @PutMapping("/{id}")
    public ResponseEntity<DTO> update(@PathVariable Long id, @Validated @RequestBody DTO dto) {
        DTO newDto = dto.withId(id);
        return ResponseEntity.status(HttpStatus.OK).body(service.update(id, newDto));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<DTO> delete(@PathVariable Long id) {
        service.deleteById(id);
        return ResponseEntity.ok(null);
    }
}
