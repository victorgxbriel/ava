import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IIgreja } from "../interfaces/IIgreja";

@Injectable({
    providedIn: 'root'
})
export class IgrejaService extends BaseService<IIgreja> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('igrejas', injector)
    }

} 