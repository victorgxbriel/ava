import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AlunoComponent } from './aluno.component';
import { HomeComponent } from '../aluno/home/home.component';
import { ClassesComponent } from './classes/classes.component';
import { ClasseComponent } from './classes/classe/classe.component';

const routes: Routes = [
    {
        path: '',
        component: AlunoComponent,
        children: [
            { path: '', component: HomeComponent},
            { path: 'classe', component: ClassesComponent},
            { path: 'classe/:id', component: ClasseComponent}
        ]
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class AlunoRoutingModule { }
