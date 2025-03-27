package br.com.stbp.controller;

import br.com.stbp.model.dto.PoloDto;
import br.com.stbp.model.entity.Polo;
import br.com.stbp.service.PoloService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/polos")
public class PoloController extends BaseController<Polo, PoloDto, PoloService> {

    protected PoloController(PoloService service){ super(service); }

}