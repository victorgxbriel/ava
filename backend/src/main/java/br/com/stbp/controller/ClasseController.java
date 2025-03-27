package br.com.stbp.controller;

import br.com.stbp.model.dto.ClasseDto;
import br.com.stbp.model.dto.DiscenteDto;
import br.com.stbp.model.entity.Classe;
import br.com.stbp.service.ClasseService;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/classes")
public class ClasseController extends BaseController<Classe, ClasseDto, ClasseService> {

    protected ClasseController(ClasseService service) { super(service);}

    @GetMapping("/{id}/discentes")
    public ResponseEntity<List<DiscenteDto>> getDiscentesByClasse(@PathVariable("id") Long classeId) {
        List<DiscenteDto> discentes = service.getDiscentesByClasse(classeId);
        return ResponseEntity.ok(discentes);
    }
}