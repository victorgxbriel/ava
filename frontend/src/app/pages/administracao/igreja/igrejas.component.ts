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
import { IIgreja } from '../../../shared/interfaces/IIgreja';
import { IgrejaService } from '../../../shared/services/igreja.service';

@Component({
  selector: 'app-igrejas',
  standalone: true,
  imports: [
    MatFormFieldModule, MatInputModule, MatSelectModule, MatButtonModule, MatIconModule, MatTableModule, MatSortModule, MatPaginatorModule,
    FormsModule, CommonModule, MatCardModule, SidenavComponent
  ],
  templateUrl: './igrejas.component.html',
  styleUrls: ['./igrejas.component.css']
})
export class IgrejasComponent extends BasePageList<IIgreja> implements OnInit {

  // Exemplo: opções para filtro de situação (caso a igreja possua um campo de status)
  situacaoOptions = [
    { label: 'ATIVO', value: true },
    { label: 'INATIVO', value: false }
  ];

  constructor(
    private igrejaService: IgrejaService,
    private router: Router
  ) {
    super(igrejaService);
  }

  ngOnInit(): void {
    this.carregarDados(true);
  }

  // Colunas a serem exibidas na tabela
  displayedColumns: string[] = ['index', 'nome', 'localizacao', 'nomePastor', 'telefonePastor', 'situacao', 'acoes'];
  // Colunas de filtros (você pode adaptar conforme os campos desejados)
  filterColumns: string[] = ['empty', 'nomeFilter', 'localizacaoFilter', 'nomePastorFilter', 'telefoneFilter', 'situacaoFilter', 'empty'];

  editarNovo(id?: number) {
    this.router.navigate(['administracao','igreja', id || 'novo']);
  }

  detalhar(id: number) {
    this.router.navigate(['administracao','igreja', id, 'view']);
  }

  getSituacaoLabel(situacao: boolean): string {
    return situacao ? 'Ativo' : 'Inativo';
  }
}
