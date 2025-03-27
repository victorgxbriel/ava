package br.com.stbp.controller;

import br.com.stbp.model.dto.DocenteDto;
import br.com.stbp.model.entity.Docente;
import br.com.stbp.service.DocenteService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/doscentes")
public class DocenteController extends BaseController<Docente, DocenteDto, DocenteService> {

    protected DocenteController(DocenteService service) {super(service); }

}