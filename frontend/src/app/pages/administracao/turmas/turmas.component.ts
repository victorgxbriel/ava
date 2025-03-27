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
import { ITurma } from '../../../shared/interfaces/ITurma';
import { TurmaService } from '../../../shared/services/turma.service';

@Component({
  selector: 'app-turma',
  standalone: true,
  imports: [
    MatFormFieldModule, MatInputModule, MatSelectModule, MatButtonModule, MatIconModule, MatTableModule, MatSortModule, MatPaginatorModule,
    FormsModule, CommonModule, MatCardModule, SidenavComponent,
  ],
  templateUrl: './turmas.component.html',
  styleUrls: ['./turmas.component.css']
})
export class TurmasComponent extends BasePageList<ITurma> implements OnInit {

  situacaoOptions = [
    { label: 'ATIVO', value: true },
    { label: 'INATIVO', value: false }
  ];

  constructor(
    private turmaService: TurmaService,
    private router: Router
  ) {
    super(turmaService);
  }

  ngOnInit(): void {
    this.carregarDados(true);
  }

  displayedColumns: string[] = ['index', 'codigo', 'nomeCurso','nomePeriodoLetivo', 'situacao', 'acoes'];
  filterColumns: string[] = ['empty','codigoFilter' ,'nomeCursoFilter','nomePeriodoLetivoFilter', 'situacaoFilter', 'empty'];
 
  editarNovo(id?: number) {
    this.router.navigate(['administracao','turma', id || 'novo']);
  }

  detalhar(id: number) {
    this.router.navigate(['administracao','turma', id, 'view']);
  }

  getSituacaoLabel(situacao: boolean): string {
    return situacao ? 'Ativo' : 'Inativo';
  }
}
