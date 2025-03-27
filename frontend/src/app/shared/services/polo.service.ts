import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IPolo } from "../interfaces/IPolo";

@Injectable({
    providedIn: 'root'
})
export class PoloService extends BaseService<IPolo> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('polos', injector)
    }

} 