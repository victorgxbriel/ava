import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IDiscente } from "../interfaces/IDiscente";

@Injectable({
    providedIn: 'root'
})
export class DiscenteService extends BaseService<IDiscente> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('discentes', injector)
    }

} 