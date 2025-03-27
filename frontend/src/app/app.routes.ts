import { Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { AboutComponent } from './pages/about/about.component';
import { MatriculaComponent } from './pages/matricula/matricula.component';
import { LoginComponent } from './pages/login/login.component';
import { EsqueciSenhaComponent } from './pages/esqueci-senha/esqueci-senha.component';
import { RegistroComponent } from './pages/registro/registro.component';
import { AuthGuard } from './shared/base/auth.guard';
import { RoleGuard } from './shared/base/role.guard';
import { AcessoNegadoComponent } from './pages/acesso-negado/acesso-negado.component';

export const routes: Routes = [
    { path: '', component: MatriculaComponent },
    { path: 'about', component: AboutComponent},
    { path: 'matricula', component:MatriculaComponent},
    { path: 'login', component: LoginComponent},
    { path: 'recuperar-senha', component:EsqueciSenhaComponent},
    { path: 'registro', component: RegistroComponent},
    { path: 'acesso-negado', component: AcessoNegadoComponent},
    {
        path: 'aluno',
        loadChildren: () => import('./pages/aluno/aluno.module').then(m => m.AlunoModule),
        //canActivate: [AuthGuard, RoleGuard],
        data: { roles: ['ROLE_DISCENTE']}
    },

    { 
        path: 'administracao', 
        loadChildren: () => import('./pages/administracao/administracao.module').then(m => m.AdministrationModule),
        //canActivate: [AuthGuard, RoleGuard],
        data: { roles: ['ROLE_ADMIN']} 
    }

];