import { Inject, Injectable, Injector } from "@angular/core";
import { BaseService } from "./base.service";
import { ITurma } from "../interfaces/ITurma";

@Injectable({
    providedIn: 'root'
})
export class TurmaService extends BaseService<ITurma> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('turmas', injector)
    }

} 