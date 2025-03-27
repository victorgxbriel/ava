import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { IClasse } from "../interfaces/IClasse";

@Injectable({
    providedIn: 'root'
})
export class ClasseService extends BaseService<IClasse> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('classes', injector)
    }

} 