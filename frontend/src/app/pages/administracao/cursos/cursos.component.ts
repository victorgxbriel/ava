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
import { ICurso } from '../../../shared/interfaces/ICurso';
import { CursoService } from '../../../shared/services/curso.service';


@Component({
  selector: 'app-cursos',
  standalone: true,
  imports: [
    MatFormFieldModule, MatInputModule, MatSelectModule, MatButtonModule, MatIconModule, MatTableModule, MatSortModule, MatPaginatorModule,
    FormsModule, CommonModule, MatCardModule, SidenavComponent
  ],
  templateUrl: './cursos.component.html',
  styleUrls: ['./cursos.component.css']
})
export class CursosComponent extends BasePageList<ICurso> implements OnInit {

  situacaoOptions = [
    { label: 'Ativado', value: true },
    { label: 'Desativado', value: false }
  ];

  constructor(
    private cursoService: CursoService,
    private router: Router
  ) {
    super(cursoService);
  }

  ngOnInit(): void {
    this.carregarDados(true);
  }

  displayedColumns: string[] = ['index', 'nome', 'codigo', 'situacao', 'acoes'];
  filterColumns: string[] = ['empty', 'nomeFilter', 'codigoFilter', 'situacaoFilter', 'empty'];

  editarNovo(id?: number) {
    this.router.navigate(['administracao', 'curso', id || 'novo']);
  }

  detalhar(id: number) {
    this.router.navigate(['administracao','curso', id, 'view']);
  }

  getSituacaoLabel(situacao: boolean): string {
    return situacao ? 'Ativo' : 'Inativo';
  }
}
