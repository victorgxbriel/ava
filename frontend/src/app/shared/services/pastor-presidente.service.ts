import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IPastorPresidente } from "../interfaces/IPastorPresidente";

@Injectable({
    providedIn: 'root'
})
export class PastorPresidenteService extends BaseService<IPastorPresidente> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('pastores-presidentes', injector)
    }

} 