import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { environment } from "../../../../environment";
import { Observable } from "rxjs";

@Injectable({
    providedIn: 'root'
})
export class DocumentoService {

    private baseUrl = `${environment.apiUrl}/documentos`

    constructor( private http: HttpClient) {

    }

    gerarDeclaracao(id: number) : Observable<Blob> {
        return this.http.get(`${this.baseUrl}/declaracao/${id}`, { responseType: 'blob'})
    }

    gerarMatricula(id: number) : Observable<Blob> {
        return this.http.get(`${this.baseUrl}/matricula/${id}`, { responseType: 'blob'})
    }

    gerarHistorico(id: number) : Observable<Blob> {
        return this.http.get(`${this.baseUrl}/historico/${id}`, { responseType: 'blob'})
    }
}