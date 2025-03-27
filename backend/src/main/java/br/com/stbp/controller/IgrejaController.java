package br.com.stbp.controller;

import br.com.stbp.model.dto.IgrejaDto;
import br.com.stbp.model.entity.Igreja;
import br.com.stbp.service.IgrejaService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/igrejas")
public class IgrejaController extends BaseController<Igreja, IgrejaDto, IgrejaService> {

    protected IgrejaController(IgrejaService service){ super(service);}

}