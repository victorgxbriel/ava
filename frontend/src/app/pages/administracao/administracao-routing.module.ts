import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DisciplinasComponent } from './disciplinas/disciplinas.component';
import { DisciplinaComponent } from './disciplinas/disciplina/disciplina.component';
import { DocentesComponent } from './docentes/docentes.component';
import { DocenteComponent } from './docentes/docente/docente.component';
import { PolosComponent } from './polos/polos.component';
import { IgrejasComponent } from './igreja/igrejas.component';
import { CursosComponent } from './cursos/cursos.component';
import { MatriculasComponent } from './matriculas/matriculas.component';
import { ClassesComponent } from './classes/classes.component';
import { DiscentesComponent } from './discentes/discentes.component';
import { TurmasComponent } from './turmas/turmas.component';
import { ClasseComponent } from './classes/classe/classe.component';
import { PoloComponent } from './polos/polo/polo.component';
import { CursoComponent } from './cursos/curso/curso.component';
import { DiscenteComponent } from './discentes/discente/discente.component';
import { TurmaComponent } from './turmas/turma/turma.component';
import { IgrejaComponent } from './igreja/igreja/igreja.component';
import { MatriculaComponent } from './matriculas/matricula/matricula.component';


const routes: Routes = [
    { path: '', component: DisciplinasComponent},
    { path: 'disciplina', component: DisciplinasComponent },
    { path: 'disciplina/:id', component: DisciplinaComponent },
    { path: 'disciplina/:id/view', component: DisciplinaComponent },
    { path: 'docente', component: DocentesComponent },
    { path: 'docente/:id', component: DocenteComponent },
    { path: 'docente/:id/view', component: DocenteComponent },
    { path: 'polo', component: PolosComponent }, 
    { path: 'polo/:id', component: PoloComponent},
    { path: 'polo/:id/view', component: PoloComponent},
    { path: 'igreja', component: IgrejasComponent },
    { path: 'igreja/:id', component: IgrejaComponent},
    { path: 'igreja/:id/view', component: IgrejaComponent},
    { path: 'curso', component: CursosComponent },
    { path: 'curso/:id', component: CursoComponent},
    { path: 'curso/:id/view', component: CursoComponent},
    { path: 'matricula', component: MatriculasComponent },
    { path: 'matricula/:id', component: MatriculaComponent},
    { path: 'matricula/:id/view', component:MatriculaComponent},
    { path: 'classe', component: ClassesComponent },
    { path: 'classe/:id', component: ClasseComponent},
    { path: 'classe/:id/view', component: ClasseComponent},
    { path: 'discente', component: DiscentesComponent },
    { path: 'discente/:id', component: DiscenteComponent},
    { path: 'discente/:id/view', component: DiscenteComponent},
    { path: 'turma', component: TurmasComponent },
    { path: 'turma/:id', component: TurmaComponent},
    { path: 'turma/:id/view', component: TurmaComponent}
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class AdministrationRoutingModule { }
