export interface IResultPaginated<T> {
    dados: T[],
    paginacao: IPage
}

export interface IPage {
    totalRegistros?: number,
    registrosPorPagina?: number,
    totalPaginas: number,
    pagina: number
}

export interface IResultPage<T> {
    content: T[],
    number: number,
    size: number,
    totalElements: number,
    totalPages: number
}