import { IDisciplina } from "./IDisciplina";
import { IDocente } from "./IDocente";

export interface IClasseAluno {
    codigo: string,
    disciplina: IDisciplina,
    docente: IDocente,
    situacao: string,
    nota: number
}