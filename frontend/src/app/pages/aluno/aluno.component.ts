import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { NavbarAlunoComponent } from "../../shared/components/navbar-aluno/navbar-aluno.component";
import { SidenavAlunoComponent } from '../../shared/components/sidenav-aluno/sidenav-aluno.component';

@Component({
  selector: 'app-aluno',
  imports: [SidenavAlunoComponent, RouterOutlet, NavbarAlunoComponent],
  templateUrl: './aluno.component.html',
  styleUrl: './aluno.component.css'
})
export class AlunoComponent {
}
