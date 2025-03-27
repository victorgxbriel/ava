import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IDocente } from "../interfaces/IDocente";

@Injectable({
    providedIn: 'root'
})
export class DocenteService extends BaseService<IDocente> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('doscentes', injector)
    }

} 