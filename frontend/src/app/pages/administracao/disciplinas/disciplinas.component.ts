import { Component, OnInit } from '@angular/core';
import { BasePageList } from '../../../shared/base/base.pagelist';
import { IDisciplina } from '../../../shared/interfaces/IDisciplina';
import { DisciplinaService } from '../../../shared/services/disciplina.service';
import { Router } from '@angular/router';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule } from '@angular/material/select';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatTableModule } from '@angular/material/table'
import { MatSortModule } from '@angular/material/sort'
import { MatPaginatorModule } from '@angular/material/paginator'
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { MatCardModule } from '@angular/material/card';
import { CursoService } from '../../../shared/services/curso.service';
import { SidenavComponent } from "../../../shared/components/sidenav/sidenav.component";


@Component({
  selector: 'app-disciplina',
  imports: [MatFormFieldModule, MatInputModule, MatSelectModule, MatButtonModule, MatIconModule, MatTableModule, MatSortModule,
    MatPaginatorModule, FormsModule, CommonModule, MatCardModule, SidenavComponent],
  templateUrl: './disciplinas.component.html',
  styleUrl: './disciplinas.component.css'
})
export class DisciplinasComponent extends BasePageList<IDisciplina> implements OnInit {
  cursoOptions: {value: number, label: string}[] = []
  tipoOptions: {value: string, label: string}[] = []

  constructor(
    private disciplinasService: DisciplinaService,
    private router: Router,
    private cursoService: CursoService
  ) {
    super(disciplinasService)
  }

  displayedColumns: string[] = ['index', 'codigo', 'nome', 'curso', 'cargaHoraria' , 'tipo', 'situacao', 'acoes'];
  filterColumns: string[] = ['empty', 'codigoFilter', 'nomeFilter' , 'cursoFilter', 'cargaHorariaFilter', 'tipoFilter', 'situacaoFilter', 'empty'];
  
  // Exemplo de opções para o filtro de situação
  situacaoOptions = [
    { label: 'ATIVO', value: true },
    { label: 'INATIVO', value: false }
  ];

  ngOnInit(): void {
    this.filtro.situacao = '1'
    this.carregarDados(true)
    this.prepareScreen()
  }

  async prepareScreen() {
    const result = await this.cursoService.GetAll()
    if(result) {
      this.cursoOptions = result.content.map(ta => ({value: ta.id, label: ta.nome}))
    }
    this.tipoOptions = [
      {value: 'OBG' , label: 'Obrigatorio'},
      {value: 'OPT', label: 'Optatitvo'}
    ]
  }

  getCursoLabel(cursoId: number): string {
    const option = this.cursoOptions.find(o => o.value === cursoId);
    return option ? option.label : 'Desconhecido';
  }  

  editarNovo(id?: number) {
    this.router.navigate(['administracao','disciplina', id || 'novo' ])
  }

  detalhar(id: number) {
    this.router.navigate(['administracao','disciplina', id!, 'view'])
  }

  getSituacaoLabel(situacao: boolean): string {
    return situacao ? 'Ativo' : 'Inativo';
  }
}
