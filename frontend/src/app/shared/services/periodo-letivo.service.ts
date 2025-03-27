import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IPeriodoLetivo } from "../interfaces/IPeriodoLetivo";

@Injectable({
    providedIn: 'root'
})
export class PeriodoLetivoService extends BaseService<IPeriodoLetivo> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('periodos-letivos', injector)
    }

} 