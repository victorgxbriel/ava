import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule } from '@angular/material/select';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatTableModule } from '@angular/material/table';
import { MatSortModule } from '@angular/material/sort';
import { MatPaginatorModule } from '@angular/material/paginator';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { MatCardModule } from '@angular/material/card';
import { SidenavComponent } from '../../../shared/components/sidenav/sidenav.component';
import { BasePageList } from '../../../shared/base/base.pagelist';
import { MatriculaService } from '../../../shared/services/matricula.service';
import { IMatricula } from '../../../shared/interfaces/IMatricula';

@Component({
  selector: 'app-matriculas',
  standalone: true,
  imports: [
    MatFormFieldModule, MatInputModule, MatSelectModule, MatButtonModule, MatIconModule, MatTableModule, MatSortModule, MatPaginatorModule,
    FormsModule, CommonModule, MatCardModule, SidenavComponent
  ],
  templateUrl: './matriculas.component.html',
  styleUrls: ['./matriculas.component.css']
})
export class MatriculasComponent extends BasePageList<IMatricula> implements OnInit {

  situacaoOptions = [
    { label: 'Aprovado', value: 'Aprovado' },
    { label: 'Reprovado', value: 'Reprovado' },
    { label: 'Matriculado', value: 'Matriculado' },
  ];

  constructor(
    private matriculaService: MatriculaService,
    private router: Router
  ) {
    super(matriculaService);
  }

  ngOnInit(): void {
    this.carregarDados(true);
  }

  displayedColumns: string[] = ['index', 'nomeDiscente', 'nomeClasse', 'situacao', 'acoes'];
  filterColumns: string[] = ['empty', 'nomeDiscenteFilter', 'nomeClasseFilter', 'situacaoFilter', 'empty'];

  editarNovo(id?: number) {
    this.router.navigate(['administracao','matricula', id || 'novo']);
  }

  detalhar(id: number) {
    this.router.navigate(['administracao','matricula', id, 'view']);
  }

  getSituacaoLabel(situacao: string): string {
    switch (situacao) {
      case 'Aprovado':
        return 'Aprovado';
      case 'Reprovado':
        return 'Reprovado';
      case 'Matriculado':
        return 'Matriculado';
      default:
        return 'Desconhecido';
    }
  }
  
}
