import { Component } from '@angular/core';
import { ClasseSummaryComponent } from '../../../components/classe-summary/classe-summary.component';
import { CursoSummaryComponent, ICursoSummary } from "../../../components/curso-summary/curso-summary.component";
import { AulaSummaryComponent } from "../../../components/aula-summary/aula-summary.component";

@Component({
  selector: 'app-home',
  imports: [ClasseSummaryComponent, CursoSummaryComponent],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  aluno: string = "Victor Gabriel"
  classes = [
    {
      nota: 5,
      disciplina: 'Teologia 1',
      situacao: 'Reprovado'
    },
    {
      nota: 4.5 ,
      disciplina: 'Teologia 2',
      situacao: 'Aprovado'
    },
    {
      nota: 8,
      disciplina: 'Teologia 3',
      situacao: 'Trancado'
    },
    {
      nota:6 ,
      disciplina: 'Teologia 4',
      situacao: 'Cursando'
    },
  ]

  cursos: ICursoSummary[] = [
    {
      matricula: '233',
      curso: 'Teologia',
      turma: '1124',
    },
    {
      matricula: '2435',
      curso: 'Teologia 2',
      turma: '234',
    },
  ]

}
