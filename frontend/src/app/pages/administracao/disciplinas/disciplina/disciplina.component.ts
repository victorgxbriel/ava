import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { DisciplinaService } from '../../../../shared/services/disciplina.service';
import { CursoService } from '../../../../shared/services/curso.service';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatOptionModule } from '@angular/material/core';
import { MatInputModule } from '@angular/material/input';
import { MatIconModule } from '@angular/material/icon';
import { MatSelectModule } from '@angular/material/select';
import { MatButtonModule } from '@angular/material/button';
import { SidenavComponent } from "../../../../shared/components/sidenav/sidenav.component";

@Component({
  selector: 'app-disciplina',
  imports: [ReactiveFormsModule, MatCardModule, MatFormFieldModule, MatOptionModule, MatInputModule, MatIconModule, MatSelectModule,
    MatButtonModule, SidenavComponent],
  templateUrl: './disciplina.component.html',
  styleUrl: './disciplina.component.css'
})
export class DisciplinaComponent implements OnInit {
  form!: FormGroup
  viewMode: boolean = false
  permiteSalvar: boolean = true
  disciplinaId?: number
  cursoOptions: {value: number, label: string}[] = []
  tipoOptions: {value: string, label: string}[] = []


  constructor(
    public formBuilder: FormBuilder,
    private router: Router,
    private disciplinaService: DisciplinaService,
    private activeRouter: ActivatedRoute,
    private cursoService: CursoService
  ){

    activeRouter.paramMap.subscribe(async ({ params: {id}}: any) => {
      const segments  = activeRouter.snapshot.url
      this.viewMode = segments.length > 0 && segments[segments.length - 1].path === 'view';
      if( id !== 'novo'){
        const result = await this.disciplinaService.GetById(id as number)
        this.disciplinaId = id
        this.setForm(result)
      }
      if(this.viewMode) this.permiteSalvar = false
    })
  }

  ngOnInit(): void {
    if(!this.form)  this.setForm();
    this.prepareScreen()
  }

  setForm(data?: any) {
    this.form = this.formBuilder.group({
      codigo: [data?.codigo || '', Validators.required],
      nome: [ data?.nome || '', Validators.required],
      curso: [data?.curso || '', Validators.required],
      cargaHoraria: [data?.cargaHoraria || '', Validators.required],
      tipo: [data?.tipo || '', Validators.required]
    })
    if(this.viewMode) this.form.disable()
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

  cancelar() {
    this.router.navigate(['administracao','disciplina'])
  }

  async salvar(){
    if(!this.form.valid) return

    const { curso, tipo, ...args } = this.form.getRawValue()
    const sender = {
      ...args,
      curso: parseInt(curso),
      tipo: tipo
    }
    let result
    if(this.disciplinaId == undefined){
      result = await this.disciplinaService.post(sender)
    } else {
      result = await this.disciplinaService.put(sender, this.disciplinaId!);
    }

    if(result.success){
      // dialog de sucesso
      this.cancelar()
    }

  }
}
