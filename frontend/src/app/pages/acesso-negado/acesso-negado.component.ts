import { Component } from '@angular/core';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import {  MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';

@Component({
  selector: 'app-acesso-negado',
  imports: [NavbarComponent, MatCardModule, MatIconModule],
  templateUrl: './acesso-negado.component.html',
  styleUrl: './acesso-negado.component.css'
})
export class AcessoNegadoComponent {

}
