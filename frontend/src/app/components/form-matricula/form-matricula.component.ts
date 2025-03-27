import { Component, inject, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, ReactiveFormsModule, Validators, FormControl} from '@angular/forms';
import { MatCardModule } from '@angular/material/card'
import { MatFormFieldModule } from '@angular/material/form-field'
import { MatInputModule } from '@angular/material/input'
import { MatButtonModule } from '@angular/material/button' 
import { MatSelectModule } from '@angular/material/select'
import { MatStepperModule} from '@angular/material/stepper'
import { MatRadioModule} from '@angular/material/radio'
import { MatDialog, MatDialogActions } from '@angular/material/dialog';
import { DialogComponent } from '../dialog/dialog.component';
import {MatTooltipModule} from '@angular/material/tooltip'
import { PoloService } from '../../shared/services/polo.service';
import { IPolo } from '../../shared/interfaces/IPolo';


@Component({
  selector: 'app-form-matricula',
  imports: [ ReactiveFormsModule, MatCardModule, MatButtonModule, MatFormFieldModule, MatInputModule, MatSelectModule, 
    MatStepperModule, MatRadioModule, MatTooltipModule ],
  templateUrl: './form-matricula.component.html',
  styleUrl: './form-matricula.component.css'
})
export class FormMatriculaComponent implements OnInit {
  matriculaForm!: FormGroup
  mostrarOutrPolo: boolean = false
  polos: IPolo[] = []
  escolaridades: string[] = [
    "Ensino Medio",
    "Superior",
    "N/A"
  ]
  estadosCivis: string [] = [
    "Casado(a)",
    "Solteiro(a)",
    "Divorciado(a)",
    "Viuvo(a)"
  ]

  form = inject(FormBuilder)
  dialog = inject(MatDialog)
  poloService = inject(PoloService)

  ngOnInit(): void {
    this.setForm()
    this.prepareScreen()
  }

  async prepareScreen() {
    const result = await this.poloService.GetAll()
    console.log(result?.content)
    if(result) {
      this.polos = result.content
    }
  }

  setForm(){
    this.matriculaForm = this.form.group({
      polo: [''],
      nome: ['', Validators.required],
      cpf: ['', [Validators.required, Validators.pattern(/^\d{3}\.\d{3}\.\d{3}-\d{2}$/)]],
      telefone: ['', [Validators.required, Validators.pattern(/^\(\d{2}\)(\d{5})\-(\d{4})$/)]],
      escolaridade: ['', Validators.required],
      estadoCivil: ['', Validators.required],
      nomeIgreja: ['', Validators.required],
      cidadeIgreja: ['', Validators.required],
      estadoIgreja: ['', Validators.required],
      nomePastor: ['', Validators.required],
      telefonePastor: ['', [Validators.required, Validators.pattern(/^\(\d{2}\)(\d{5})\-(\d{4})$/)]],
      email: ['', [Validators.email, Validators.required]]
    })
  }

  formatCPF(event: any) {
    let value = event.target.value.replace(/\D/g, ''); // Remove tudo que não for número
    if (value.length > 11) value = value.slice(0, 11); // Limita a 11 dígitos
  
    let formatted = value.replace(/^(\d{3})(\d{3})(\d{3})(\d{2})$/, '$1.$2.$3-$4');
    
    event.target.value = formatted;
    this.matriculaForm.get('cpf')?.setValue(formatted, { emitEvent: false });
  }

  formatTelefone(event: any){
    let value = event.target.value.replace(/\D/g, ''); // Remove tudo que não for número
    if (value.length > 11) value = value.slice(0, 11); // Limita a 11 dígitos
  
    let formatted = value.replace(/^(\d{2})(\d{5})(\d{4})$/, '($1)$2-$3');
    
    event.target.value = formatted;
    this.matriculaForm.get('telefone')?.setValue(formatted, { emitEvent: false });
  }

  formatTelefonePastor(event: any){
    let value = event.target.value.replace(/\D/g, ''); // Remove tudo que não for número
    if (value.length > 11) value = value.slice(0, 11); // Limita a 11 dígitos
  
    let formatted = value.replace(/^(\d{2})(\d{5})(\d{4})$/, '($1)$2-$3');
    
    event.target.value = formatted;
    this.matriculaForm.get('telefonePastor')?.setValue(formatted, { emitEvent: false });
  }

  checkCustomPolo() {
    this.mostrarOutrPolo = this.matriculaForm.get('polo')?.value === "outro";
    this.matriculaForm.get('polo')?.setValue('')
  }

  openDialog(){
    this.dialog.open(DialogComponent, {
      data:{
        title: 'Confirmar matricula',
        message: 'Deseja confirmar a sua solicitação de matricula?',
        confirmLabel: 'Sim',
        cancelLabel: 'Não',
      }
    }).afterClosed().subscribe((result) => {
      console.log(result.sucess)
    })
  }
  
}
