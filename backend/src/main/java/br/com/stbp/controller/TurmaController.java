package br.com.stbp.controller;

import br.com.stbp.model.dto.TurmaDto;
import br.com.stbp.model.entity.Turma;
import br.com.stbp.service.TurmaService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/turmas")
public class TurmaController extends BaseController<Turma, TurmaDto, TurmaService> {

    protected TurmaController(TurmaService service) { super(service); }

}