package br.com.stbp.controller;

import br.com.stbp.model.dto.CursoDto;
import br.com.stbp.model.entity.Curso;
import br.com.stbp.service.CursoService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/cursos")
public class CursoController extends BaseController<Curso, CursoDto, CursoService> {

    protected CursoController(CursoService service) { super(service);}
}