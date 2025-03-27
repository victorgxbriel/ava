import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatListModule } from '@angular/material/list';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { MatMenuModule } from '@angular/material/menu';
import { RouterLink } from '@angular/router';
import { MatTooltipModule } from '@angular/material/tooltip';

@Component({
  selector: 'app-sidenav',
  imports: [ MatIconModule, MatSidenavModule, CommonModule, MatToolbarModule, MatListModule, MatButtonModule, MatMenuModule, RouterLink, MatTooltipModule],
  templateUrl: './sidenav.component.html',
  styleUrl: './sidenav.component.css'
})
export class SidenavComponent {
   // Controla se o menu está expandido (true) ou recolhido (false)
   isExpanded = true;

   // Lista de itens do menu com label e ícone
   menuItems = [
    { label: 'Disciplinas', icon: 'library_books', link: '/administracao/disciplina'},
    { label: 'Docentes', icon: 'school', link: '/administracao/docente'},
    { label: 'Polos', icon: 'flag', link: '/administracao/polo'},
    { label: 'Igrejas', icon: 'church', link: '/administracao/igreja'},
    { label: 'Cursos', icon: 'menu_book', link: '/administracao/curso'},
    { label: 'Matriculas', icon: 'loyalty', link: '/administracao/matricula'},
    { label: 'Discentes', icon: 'groups', link: '/administracao/discente'},
    { label: 'Classes', icon: 'class', link: '/administracao/classe'},
    { label: 'Turmas', icon: 'group', link: '/administracao/turma'},
     { label: 'Logout', icon: 'logout', link: '' }
   ];
 
   toggle() {
     this.isExpanded = !this.isExpanded;
   }
}
