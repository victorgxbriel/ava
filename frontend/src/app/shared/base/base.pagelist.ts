import { Inject } from "@angular/core"
import { BaseService } from "../services/base.service"
import { OrdenacaoType } from "../interfaces/IQueryOptions"
import { Sort } from "@angular/material/sort"
import { PageEvent } from "@angular/material/paginator"


export abstract class BasePageList<T> {
    dados: T[] = []
    pagina: number = 0
    permiteAdicionar: boolean = false
    permiteExcluir: boolean = false
    permiteEditar: boolean = false
    totalRegistros: number = 0
    registrosPorPagina: number = 10
    lastFiltro: string = ''
    filtro: any = {}
    service: BaseService<T>

    constructor(
        @Inject(BaseService) service: BaseService<T>,
    ) {
        this.service = service
    }

    changePageSize() {
        this.pagina = 0
        this.carregarDados()
    }

    get hasFiltro() {
        return Object.keys(this.filtro).length > 0
    }

    get paginaInicialPaginator(): number {
        try {
            return this.pagina * this.registrosPorPagina
        } catch(error) {
            return 0
        }
    }

    get isFiltroChanged(): boolean {
        try {
            return (this.lastFiltro !== JSON.stringify(this.filtro))
        } catch(error) {
            return false;
        }
    }

    onChangeSort(sort: Sort ) {
        //this.filtro['ordenacao'] = { campo: field!, direction: order === 1 ? 'ASC' : 'DESC'}
        if(sort.direction){
            this.filtro['ordenacao']  = {
                campo: sort.active,
                direction: sort.direction === 'asc' ? 'ASC' : 'DESC'
            }
        }

        if(this.isFiltroChanged)
            this.onChangeFiltro()
    }

    async carregarDados(forceReload: boolean = false) {
        if( !this.isFiltroChanged && forceReload === false)
            return
        
        this.lastFiltro = JSON.stringify(this.filtro)
        const { ordenacao, ...args } = this.filtro

        const result = await this.service.GetAll({
            pagina: this.pagina,
            registroPorPagina: this.registrosPorPagina,
            ordenar: ordenacao as OrdenacaoType,
            pesquisa: {
                ...args
            }
        })
        console.log(result)
        if(result) {
            this.dados = result.content
            this.totalRegistros = result.totalElements
            this.pagina = result.number
        } else {
            this.dados = []
            this.totalRegistros = 0
            this.pagina = 0
        }
    }

    onChangeFiltro() {
        this.pagina = 0
        this.carregarDados(true)
    }

    onPageChange(event: PageEvent) {
        this.pagina = event.pageIndex
        this.registrosPorPagina = event.pageSize
        this.carregarDados(true)
    }

    async delete(record: T) {
        await this.service.delete(record)
        await this.carregarDados(true)
    }
}