package br.com.stbp.controller;

import br.com.stbp.model.dto.PeriodoLetivoDto;
import br.com.stbp.model.entity.PeriodoLetivo;
import br.com.stbp.service.PeriodoLetivoService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@Validated
@RequestMapping("/periodos-letivos")
public class PeriodoLetivoController extends BaseController<PeriodoLetivo, PeriodoLetivoDto, PeriodoLetivoService> {

    protected PeriodoLetivoController(PeriodoLetivoService service) { super(service); }

}