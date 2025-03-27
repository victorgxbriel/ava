import { HttpClient } from "@angular/common/http"
import { Inject, Injector } from "@angular/core"
import { lastValueFrom } from "rxjs"
import { IResultHttp } from "../interfaces/IResultHttp"
import { IQueryOptions } from "../interfaces/IQueryOptions"
import { PrepareHttpQuery } from "../utils/query.utils"
import { IResultPage, IResultPaginated } from "../interfaces/IResultPaginated"
import _ from "lodash"
import { environment } from '../../../../environment'

export abstract class BaseService<T> {

    urlBase: string = ''
    http: HttpClient
    private urlBaseOriginal: string

    constructor(
        public url: string,
        @Inject(Injector) injector: Injector
    ) {
        this.urlBase = `${environment.apiUrl}/${this.url}`
        this.urlBaseOriginal = `${environment.apiUrl}/${this.url}`
        this.http = injector.get(HttpClient)
    }

    public async GetList(options?: IQueryOptions ): Promise<T[] | undefined> {
        const result = await
            lastValueFrom(this.http.get<T[]>(`${this.urlBase}/list`))
        
        return result ? result : undefined
    }

    public async GetAll(options?: IQueryOptions ): Promise<IResultPage<T> | undefined> {
        const result = await
            lastValueFrom(this.http.get<IResultPage<T>>(`${this.urlBase}${PrepareHttpQuery(options)}`))
        
        return result ? result : undefined
    }

    public async GetById(id: number): Promise<IResultHttp<T>> {
        const result = await lastValueFrom(this.http.get(`${this.urlBase}/${id}`))
        return result as IResultHttp<T>
    }

    public post(model: T): Promise<IResultHttp<T>> {
        return lastValueFrom(this.http.post(this.urlBase, model)) as Promise<IResultHttp<T>>
    }

    public put(model: T, id: number): Promise<IResultHttp<T>> {
        return lastValueFrom(this.http.put(`${this.urlBase}/${id}`, model)) as Promise<IResultHttp<T>>
    }

    public async delete(model: T) {
        return new Promise( async (resolve, reject) => {
            const _id = _.get(model, 'id')

            try {
                const result = await lastValueFrom(this.http.delete(`${this.urlBase}/${_id}`))
                resolve(_.get(result, 'success'))
            } catch (error) {
                reject(error)
                console.error(`delete-${this.urlBase}-${_id}-reason: `, error)
            }
        })
    }
}