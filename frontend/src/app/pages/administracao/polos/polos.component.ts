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
import { IPolo } from '../../../shared/interfaces/IPolo';
import { PoloService } from '../../../shared/services/polo.service';


@Component({
  selector: 'app-polos',
  standalone: true,
  imports: [
    MatFormFieldModule, MatInputModule, MatSelectModule, MatButtonModule, MatIconModule, MatTableModule, MatSortModule,
    MatPaginatorModule, FormsModule, CommonModule, MatCardModule, SidenavComponent
  ],
  templateUrl: './polos.component.html',
  styleUrl: './polos.component.css'
})
export class PolosComponent extends BasePageList<IPolo> implements OnInit {
  
  cursoOptions: { value: number; label: string }[] = [];
  tipoOptions: { value: string; label: string }[] = [];

  // Exemplo de opções para o filtro de situação
  situacaoOptions = [
    { label: 'ATIVO', value: true },
    { label: 'INATIVO', value: false }
  ];

  constructor(
    private poloService: PoloService,
    private router: Router, 
  ) {
    super(poloService);
  }


  ngOnInit(): void {
  this.carregarDados(true)
  }
  
  displayedColumns: string[] = ['index', 'nome', 'situacao' ,'acoes'];
  filterColumns: string[] = ['empty', 'nomeFilter','situacaoFilter', 'empty'];

  editarNovo(id?: number) {
    this.router.navigate(['administracao','polo', id || 'novo']); 
  }

  detalhar(id: number) {
    this.router.navigate(['administracao','polo', id, 'view']);
  }
  
  getSituacaoLabel(situacao: boolean): string {
    return situacao ? 'Ativo' : 'Inativo';
  }
}
