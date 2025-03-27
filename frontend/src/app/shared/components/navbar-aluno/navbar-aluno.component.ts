import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatMenuModule } from '@angular/material/menu';
import { Router } from '@angular/router';

@Component({
  selector: 'app-navbar-aluno',
  imports: [ MatButtonModule, MatIconModule, MatMenuModule],
  templateUrl: './navbar-aluno.component.html',
  styleUrl: './navbar-aluno.component.css'
})
export class NavbarAlunoComponent {
  nome: string = "Victor Gabriel"
  isExpanded = true;

  constructor(private router: Router) {}

  logout(){

  }
     
  toggle() {
    this.isExpanded = !this.isExpanded;
  }   
}
