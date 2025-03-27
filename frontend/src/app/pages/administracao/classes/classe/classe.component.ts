import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule } from '@angular/material/select';
import { SidenavComponent } from '../../../../shared/components/sidenav/sidenav.component';
import { ActivatedRoute, Router } from '@angular/router';
import { ClasseService } from '../../../../shared/services/classe.service';
import { CursoService } from '../../../../shared/services/curso.service';
import { DocenteService } from '../../../../shared/services/docente.service';
import { DisciplinaService } from '../../../../shared/services/disciplina.service';

@Component({
  selector: 'app-classe',
  imports: [ ReactiveFormsModule, MatCardModule, MatFormFieldModule, MatInputModule, MatIconModule, MatSelectModule, 
    MatButtonModule, SidenavComponent
  ],
  templateUrl: './classe.component.html',
  styleUrl: './classe.component.css'
})
export class ClasseComponent implements OnInit {
  form!: FormGroup
    viewMode: boolean = false
    permiteSalvar: boolean = true
    classeId?: number
    docenteOptions: {value: number, label: string}[] = []
    disciplinaOptions: {value: number, label: string}[] = []
  
  
    constructor(
      public formBuilder: FormBuilder,
      private router: Router,
      private classeService: ClasseService,
      private activeRouter: ActivatedRoute,
      private cursoService: CursoService,
      private docenteService: DocenteService,
      private disciplinaService: DisciplinaService
    ){
  
      activeRouter.paramMap.subscribe(async ({ params: {id}}: any) => {
        const segments  = activeRouter.snapshot.url
        this.viewMode = segments.length > 0 && segments[segments.length - 1].path === 'view';
        if( id !== 'novo'){
          const result = await this.classeService.GetById(id as number)
          this.classeId = id
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
        periodo: [ data?.periodo || '', Validators.required],
        disciplina: [data?.disciplina || '', Validators.required],
        docente: [data?.docente || '', Validators.required],
      })
      if(this.viewMode) this.form.disable()
    }
  
    async prepareScreen() {
      const result = await this.docenteService.GetAll()
      if(result) {
        this.docenteOptions = result.content.map(ta => ({value: ta.id, label: ta.nome}))
      }
      const result2 = await this.disciplinaService.GetAll()
      if(result) {
        this.disciplinaOptions = result.content.map(ta => ({value: ta.id, label: ta.nome}))
      }
    }
  
    cancelar() {
      this.router.navigate(['administracao','classe'])
    }
  
    async salvar(){
      if(!this.form.valid) return
  
      const { disciplina, docente, ...args } = this.form.getRawValue()
      const sender = {
        ...args,
        docente: parseInt(docente),
        disciplina: parseInt(disciplina)
      }
      let result
      if(this.classeId == undefined){
        result = await this.classeService.post(sender)
      } else {
        result = await this.classeService.put(sender, this.classeId!);
      }
  
      if(result.success){
        // dialog de sucesso
        this.cancelar()
      }
  
    }

}
