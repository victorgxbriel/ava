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
import { IClasse } from '../../../shared/interfaces/IClasse';
import { ClasseService } from '../../../shared/services/classe.service';


@Component({
  selector: 'app-polos',
  standalone: true,
  imports: [
    MatFormFieldModule, MatInputModule, MatSelectModule, MatButtonModule, MatIconModule, MatTableModule, MatSortModule,
    MatPaginatorModule, FormsModule, CommonModule, MatCardModule, SidenavComponent
  ],
  templateUrl: './classes.component.html',
  styleUrl: './classes.component.css'
})
export class ClassesComponent extends BasePageList<IClasse> implements OnInit {

  // Exemplo de opções para o filtro de situação
  situacaoOptions = [
    { label: 'ATIVO', value: true },
    { label: 'INATIVO', value: false }
  ];

  constructor(
    private classeService: ClasseService,
    private router: Router, 
  ) {
    super(classeService);
  }


  ngOnInit(): void {
  this.carregarDados(true)
  }
  
  displayedColumns: string[] = ['index', 'periodo', 'codigo', 'nomeDisciplina' ,'nomeDocente' ,'situacao','acoes'];
  filterColumns: string[] = ['empty', 'periodoFilter', 'codigoFilter','nomeDisciplinaFilter' , "nomeDocenteFilter" ,'situacaoFilter', 'empty'];

  editarNovo(id?: number) {
    this.router.navigate(['administracao','classe', id || 'novo']); 
  }

  detalhar(id: number) {
    this.router.navigate(['administracao','classe', id, 'view']);
  }
  
  getSituacaoLabel(situacao: boolean): string {
    return situacao ? 'Ativo' : 'Inativo';
  }
}
