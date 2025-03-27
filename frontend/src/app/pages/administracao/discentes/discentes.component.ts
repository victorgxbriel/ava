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
import { IDiscente } from '../../../shared/interfaces/IDiscente';
import { DiscenteService } from '../../../shared/services/discente.service';

@Component({
  selector: 'app-discente',
  standalone: true,
  imports: [
    MatFormFieldModule, MatInputModule, MatSelectModule, MatButtonModule, MatIconModule, MatTableModule, MatSortModule,
    MatPaginatorModule, FormsModule, CommonModule, MatCardModule, SidenavComponent
  ],
  templateUrl: './discentes.component.html',
  styleUrls: ['./discentes.component.css']
})
export class DiscentesComponent extends BasePageList<IDiscente> implements OnInit {

  activeOptions = [
    { label: 'ATIVO', value: true },
    { label: 'INATIVO', value: false }
  ];

  situacaoOptions = [
    {label: 'Cursando', value: 'Cursando'},
    {label: 'Trancado', value: 'Trancado'},
    { label: 'Formado', value: 'Formado'}
  ]

  escolaridadeOptions = [
    {label: 'Ensino médio', value: 'Ensino médio'},
    {label: 'Superior', value: 'Superior'},
    { label: 'N/A', value: 'N/A'},
    {label: 'Superior completo', value: 'Superior completo'},
    {label: 'Superior incompleto', value: 'Superior incompleto'},
    {label: 'NA', value: ''}
  ]

  estadoCivilOptions = [
    {label: 'Casado(a)', value: 'Casado(a)'},
    {label: 'Solteiro(a)', value: 'Solteiro(a)'},
    { label: 'Divorciado(a)', value: 'Divorciado(a)'},
    {label: 'Viuvo(a)', value: 'Viuvo(a)'},
    {label: 'N/A', value: ''}
  ]

  constructor(
    private discenteService: DiscenteService,
    private router: Router,
  ) {
    super(discenteService);
  }

  ngOnInit(): void {
    this.carregarDados(true);
  }

  displayedColumns: string[] = [
    'index','nome', 'cpf', 'email', 'telefone', 'situacao',  'sexo', 'naturalidade', 'orgaoEmissor', 'dataNascimento', 'filiacao',  'estadoCivil', 'endereco', 'escolaridade', 'dataIngresso', 'active','acoes'
  ];
  
  filterColumns: string[] = [
    'empty', 'nomeFilter','cpfFilter', 'emailFilter', 'telefoneFilter',  'situacaoFilter','sexoFilter', 'naturalidadeFilter', 'orgaoEmissorFilter', 'dataNascimentoFilter', 'filiacaoFilter',  'estadoCivilFilter', 'enderecoFilter', 'escolaridadeFilter','dataIngressoFilter', 'activeFilter','empty'
  ];

  // Função para editar ou cadastrar novo discente
  editarNovo(id?: string): void {
    this.router.navigate(['administracao','discente', id || 'novo']);
  }

  // Função para detalhar um discente
  detalhar(id: string): void {
    this.router.navigate(['administracao','discente', id, 'view']);
  }

  // Função para obter o label de situação (Ativo ou Inativo)
  getSituacaoLabel(situacao: boolean): string {
    return situacao ? 'Ativo' : 'Inativo';
  }
}
