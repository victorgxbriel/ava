package br.com.stbp.controller;

import br.com.stbp.model.dto.PastorPresidenteDto;
import br.com.stbp.model.entity.PastorPresidente;
import br.com.stbp.service.PastorPresidenteService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/pastores-presidentes")
public class PastorPresidenteController extends BaseController<PastorPresidente, PastorPresidenteDto, PastorPresidenteService> {

    protected PastorPresidenteController(PastorPresidenteService service) { super(service); }

}