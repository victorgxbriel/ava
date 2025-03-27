import { IQueryOptions } from "../interfaces/IQueryOptions";
import * as qs from 'qs'
import * as _ from 'lodash'

export const PrepareHttpQuery = (
    options?: IQueryOptions,
    addQueryPrefix: boolean = true,
) : string => {
    const query: any = {}
    query['size'] = _.get(options, 'registroPorPagina', 15);
    query['page'] = _.get(options, 'pagina', 0)
    const ordenar = _.get(options, 'ordenar')
    if(ordenar){
        query['sort'] = `${ordenar.campo},${ordenar.direction}`
    }

    const _pesquisa: any = _.get(options, 'pesquisa', {})
    Object.keys(_pesquisa).forEach( key => 
        query[key] = _pesquisa[key] instanceof Array && !!_pesquisa[key].length
            ? _pesquisa[key].join(', ')
            : _pesquisa[key]
    )
    return qs.stringify(query, { addQueryPrefix, encode: false})
}