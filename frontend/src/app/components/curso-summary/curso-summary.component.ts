import { CommonModule } from '@angular/common';
import { Component, Input } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatTableModule } from '@angular/material/table';
import { Router } from '@angular/router';

export interface ICursoSummary {
  matricula: string,
  curso: string,
  turma: string
}

@Component({
  selector: 'app-curso-summary',
  imports: [CommonModule, MatButtonModule, MatTableModule, MatCardModule],
  templateUrl: './curso-summary.component.html',
  styleUrl: './curso-summary.component.css'
})
export class CursoSummaryComponent {
  @Input() data: ICursoSummary[] = []

  constructor(private router: Router){}

  acessar(curso: string) {
    this.router.navigate(['curso', curso])
  }
}
