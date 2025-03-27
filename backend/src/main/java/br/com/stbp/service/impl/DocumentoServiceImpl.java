package br.com.stbp.service.impl;

import br.com.stbp.model.dto.DiscenteDto;
import br.com.stbp.model.dto.IgrejaDto;
import br.com.stbp.model.dto.PeriodoLetivoDto;
import br.com.stbp.service.DiscenteService;
import br.com.stbp.service.DocumentoService;
import br.com.stbp.service.TurmaService;
import org.docx4j.convert.out.pdf.PdfConversion;
import org.docx4j.convert.out.pdf.viaXSLFO.Conversion;
import org.docx4j.convert.out.pdf.viaXSLFO.PdfSettings;
import org.docx4j.model.datastorage.migration.VariablePrepare;
import org.docx4j.model.fields.merge.DataFieldName;
import org.docx4j.model.fields.merge.MailMerger;
import org.docx4j.openpackaging.packages.WordprocessingMLPackage;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

@Service
public class DocumentoServiceImpl implements DocumentoService {

    private final DiscenteService discenteService;

    public DocumentoServiceImpl(DiscenteService discenteService) {
        this.discenteService = discenteService;
    }

    @Override
    public ResponseEntity<Resource> gerarDeclaracao(Long id) {
        Map<String, String> dados = new HashMap<>();
        DiscenteDto dto = discenteService.findById(id);
        dados.put("cpf", dto.cpf());
        dados.put("aluno", dto.nome());
        dados.put("matricula", dto.matricula().toString());

        try {
            Resource resource = gerarDocumentoPdf("declaracao.docx", dados);
            return ResponseEntity.ok()
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=declaracao.pdf")
                    .contentType(MediaType.APPLICATION_PDF)
                    .body(resource);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @Override
    public ResponseEntity<Resource> gerarHistorico(Long id) {
        return null;
    }

    @Override
    public ResponseEntity<Resource> gerarMatricula(Long id) {
        Map<String, String> dados = new HashMap<>();
        DiscenteDto dto = discenteService.findById(id);
        PeriodoLetivoDto periodoLetivoDto = discenteService.obterPeriodoLetivoPorDiscente(id);
        IgrejaDto igrejaDto = discenteService.obterIgrejaPorDiscente(id);
        dados.put("cpf", dto.cpf());
        dados.put("nome", dto.nome());
        dados.put("matricula", dto.matricula().toString());
        dados.put("telefone", dto.telefone());
        dados.put("email", dto.email());
        dados.put("nascimento", dto.dataNascimento().format(DateTimeFormatter.ofPattern("dd/MM/YYYY")));
        dados.put("naturalidade", dto.naturalidade());
        dados.put("filiacao", dto.filiacao());
        dados.put("estado_civil", dto.estadoCivil());
        dados.put("escolaridade", dto.escolaridade());
        dados.put("endereco", dto.endereco());
        dados.put("perlet", periodoLetivoDto.dataInicio().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
        dados.put("dt_ingresso", dto.dataIngresso().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
        dados.put("igreja", igrejaDto.nome());
        dados.put("cidade_igreja", igrejaDto.localizacao());
        dados.put("pastor", igrejaDto.nomePastor());
        dados.put("tel_pastor", igrejaDto.telefonePastor());

        try {
            Resource resource = gerarDocumentoPdf("matricula.docx", dados);
            return ResponseEntity.ok()
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=matricula.pdf")
                    .contentType(MediaType.APPLICATION_PDF)
                    .body(resource);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    private Resource gerarDocumentoPdf(String nomeDocumento, Map<String, String> dados) throws Exception {

        WordprocessingMLPackage wordprocessingMLPackage = WordprocessingMLPackage.load(
                this.getClass().getResourceAsStream("/templates/" + nomeDocumento)
        );

        VariablePrepare.prepare(wordprocessingMLPackage);

        Map<DataFieldName, String> mergeData = new HashMap<>();
        for(Map.Entry<String, String> entry : dados.entrySet()){
            mergeData.put(new DataFieldName(entry.getKey()), entry.getValue());
        }

        MailMerger.performMerge(wordprocessingMLPackage, mergeData, true);

        ByteArrayOutputStream os = new ByteArrayOutputStream();
        PdfConversion converter = new Conversion(wordprocessingMLPackage);
        converter.output(os, new PdfSettings());

        return new ByteArrayResource(os.toByteArray());
    }
}
