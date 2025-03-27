import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IEquivalencia } from "../interfaces/IEquivalencia";

@Injectable({
    providedIn: 'root'
})
export class EquivalenciaService extends BaseService<IEquivalencia> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('equivalencias', injector)
    }

} 