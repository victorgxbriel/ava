import { Inject, Injectable, Injector } from "@angular/core";
import { IDisciplina } from "../interfaces/IDisciplina";
import { BaseService } from "./base.service";
import { ICurso } from "../interfaces/ICurso";

@Injectable({
    providedIn: 'root'
})
export class CursoService extends BaseService<ICurso> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('cursos', injector)
    }

} 