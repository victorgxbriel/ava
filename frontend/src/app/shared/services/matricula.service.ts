import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IMatricula } from "../interfaces/IMatricula";

@Injectable({
    providedIn: 'root'
})
export class MatriculaService extends BaseService<IMatricula> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('matriculas', injector)
    }

} 