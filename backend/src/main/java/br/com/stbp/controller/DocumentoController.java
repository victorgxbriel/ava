package br.com.stbp.controller;

import br.com.stbp.service.DocumentoService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.core.io.Resource;


@RestController
@RequestMapping("documentos")
@CrossOrigin(origins = "http://localhost:4200")
public class DocumentoController {

    private final DocumentoService documentoService;

    public DocumentoController(DocumentoService documentoService) {
        this.documentoService = documentoService;
    }

    @GetMapping("/declaracao/{id}")
    public ResponseEntity<Resource> gerarDeclaracao(@PathVariable Long id) {
        return documentoService.gerarDeclaracao(id);
    }

    @GetMapping("/matricula/{id}")
    public ResponseEntity<Resource> gerarMatricula(@PathVariable Long id) {
        return documentoService.gerarMatricula(id);
    }

    @GetMapping("/historico/{id}")
    public ResponseEntity<Resource> gerarHistorico(@PathVariable Long id) {
        return documentoService.gerarHistorico(id);
    }
}
