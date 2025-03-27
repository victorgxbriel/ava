package br.com.stbp.controller;

import br.com.stbp.model.dto.DisciplinaDto;
import br.com.stbp.model.entity.Disciplina;
import br.com.stbp.service.DisciplinaService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/disciplinas")
public class DisciplinaController extends BaseController<Disciplina, DisciplinaDto, DisciplinaService> {

    protected  DisciplinaController(DisciplinaService service) { super(service); }

}