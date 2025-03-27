export type OrdenacaoType = {
    campo: string,
    direction: 'ASC' | 'DESC'
}

export interface IQueryOptions {
    registroPorPagina?: number,
    pagina?: number,
    ordenar?: OrdenacaoType,
    pesquisa?: object
}