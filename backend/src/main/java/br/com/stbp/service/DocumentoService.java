package br.com.stbp.service;

import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;


public interface DocumentoService {


    public ResponseEntity<Resource> gerarDeclaracao(Long id);

    public ResponseEntity<Resource> gerarHistorico(Long id);

    public ResponseEntity<Resource> gerarMatricula(Long id);
}
