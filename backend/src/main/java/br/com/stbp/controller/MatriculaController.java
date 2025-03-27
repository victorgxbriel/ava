package br.com.stbp.controller;


import br.com.stbp.model.dto.MatriculaDto;
import br.com.stbp.model.entity.Matricula;
import br.com.stbp.service.MatriculaService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/matriculas")

public class MatriculaController extends BaseController<Matricula, MatriculaDto, MatriculaService> {

    protected MatriculaController(MatriculaService service) { super(service); }

}
