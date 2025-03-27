import { Inject, Injectable, Injector } from "@angular/core";
import { IDisciplina } from "../interfaces/IDisciplina";
import { BaseService } from "./base.service";
import { IQueryOptions } from "../interfaces/IQueryOptions";
import { PrepareHttpQuery } from "../utils/query.utils";
import { lastValueFrom } from "rxjs";
import { environment } from "../../../../environment";

@Injectable({
    providedIn: 'root'
})
export class DisciplinaService extends BaseService<IDisciplina> {

    constructor(
        @Inject(Injector) injector: Injector
    ) {
        super('disciplinas', injector)
    }


    async testeList(options?: IQueryOptions){
        const result = await lastValueFrom(this.http.get(`${environment.apiUrl}/disciplinas${PrepareHttpQuery(options)}`))
        return result
    }
} 