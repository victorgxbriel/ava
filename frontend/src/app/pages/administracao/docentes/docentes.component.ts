import { Component, OnInit } from '@angular/core';
import { BasePageList } from '../../../shared/base/base.pagelist';
import { IDocente } from '../../../shared/interfaces/IDocente';
import { Router } from '@angular/router';
import { DocenteService } from '../../../shared/services/docente.service';
import { MatCardModule } from '@angular/material/card';
import { MatTableModule } from '@angular/material/table';
import { SidenavComponent } from '../../../shared/components/sidenav/sidenav.component';
import { CommonModule } from '@angular/common';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatSelectModule } from '@angular/material/select';
import { MatPaginatorModule } from '@angular/material/paginator';
import { FormsModule } from '@angular/forms';
import { MatIconModule } from '@angular/material/icon';
import { MatSortModule } from '@angular/material/sort';
import { MatButtonModule } from '@angular/material/button';
import { MatInputModule } from '@angular/material/input';

@Component({
  selector: 'app-docentes',
  imports: [MatCardModule, MatTableModule, SidenavComponent, CommonModule, MatFormFieldModule, MatSelectModule, MatPaginatorModule, 
    FormsModule, MatIconModule, MatSortModule, MatButtonModule, MatInputModule],
  templateUrl: './docentes.component.html',
  styleUrl: './docentes.component.css'
})
export class DocentesComponent extends BasePageList<IDocente> implements OnInit {
  vinculoOptions: {label: string, value: string}[] = []
  constructor (
    private router: Router,
    private docenteService: DocenteService
  ) {
    super(docenteService)
  }

    // Exemplo de opções para o filtro de situação
    situacaoOptions = [
      { label: 'ATIVO', value: true },
      { label: 'INATIVO', value: false }
    ];
  displayedColumns: string[] = ['index', 'codigo', 'nome', 'cpf', 'email', 'situacao', 'acoes'];
  filterColumns: string[] = ['empty', 'codigoFilter', 'nomeFilter', 'cpfFilter', 'emailFilter', 'situacaoFilter', 'empty'];
  
  ngOnInit(): void {
    this.carregarDados(true)
  }

  editarNovo(id?: number) {
    this.router.navigate(['administracao','docente', id || 'novo' ])
  }

  detalhar(id: number) {
    this.router.navigate(['administracao','docente', id!, 'view'])
  }

  getSituacaoLabel(situacao: boolean): string {
    return situacao ? 'Ativo' : 'Inativo';
  }
}
