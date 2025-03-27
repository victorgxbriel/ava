package br.com.stbp.controller;

import br.com.stbp.model.dto.ClasseDto;
import br.com.stbp.model.dto.DiscenteDto;
import br.com.stbp.model.dto.matricula.ClasseAlunoDto;
import br.com.stbp.model.entity.Discente;
import br.com.stbp.service.DiscenteService;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/discentes")
public class DiscenteController extends BaseController<Discente, DiscenteDto, DiscenteService> {

    protected DiscenteController(DiscenteService service) { super(service); }

    public ResponseEntity<List<ClasseDto>> getClassesByDiscente(@PathVariable("id") Long discenteId) {
        List<ClasseDto> classes = service.getClassesByDiscente(discenteId);
        return ResponseEntity.ok(classes);
    }

    @GetMapping("/{id}/{periodo}")
    public ResponseEntity<List<ClasseAlunoDto>> getClassesByDiscenteAndPeriodo(@PathVariable("id") Long discenteId,
                                                                               @PathVariable("periodo") String periodo) {
        List<ClasseAlunoDto> classes = service.getClassesByDiscenteAndPeriodo(discenteId, periodo);

        return ResponseEntity.ok().body(classes);
    }


}
