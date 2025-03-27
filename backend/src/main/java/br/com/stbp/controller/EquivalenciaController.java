package br.com.stbp.controller;


import br.com.stbp.model.dto.EquivalenciaDto;
import br.com.stbp.model.entity.Equivalencia;
import br.com.stbp.service.EquivalenciaService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/equivalencias")

public class EquivalenciaController extends BaseController<Equivalencia, EquivalenciaDto, EquivalenciaService> {

    protected EquivalenciaController(EquivalenciaService service) { super(service); }

}
