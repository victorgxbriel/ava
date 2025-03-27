import { Component, inject, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatDialog } from '@angular/material/dialog';
import { MatInputModule } from '@angular/material/input';
import { MatStepperModule } from '@angular/material/stepper';
import { DialogComponent } from '../dialog/dialog.component';


export function emailMatchValidator(formGroup: FormGroup): { [key: string]: any } | null {
  const email = formGroup.get('email')?.value;
  const confirmarEmail = formGroup.get('confirmarEmail')?.value;
  // Se ambos existirem e forem diferentes, retorna o erro
  return email && confirmarEmail && email !== confirmarEmail ? { emailsMismatch: true } : null;
}
@Component({
  selector: 'app-form-esqueci-senha',
  imports: [ ReactiveFormsModule, MatCardModule, MatStepperModule, MatButtonModule, MatInputModule ],
  templateUrl: './form-esqueci-senha.component.html',
  styleUrl: './form-esqueci-senha.component.css'
})
export class FormEsqueciSenhaComponent implements OnInit {
  emailForm!: FormGroup
  codigo: FormControl = new FormControl('', Validators.required)
  senhaForm!: FormGroup

  form = inject(FormBuilder)
  dialog = inject(MatDialog)
  

  ngOnInit(): void {
    this.setForms()
  }

  setForms(){
    this.emailForm = this.form.group({
      email: ['', [Validators.required, Validators.email]],
      confirmarEmail: ['', [Validators.required, Validators.email]]
    }, { validators: emailMatchValidator })

    this.senhaForm = this.form.group({
      senha: ['', [Validators.required]],
      confirmarSenha: ['', [Validators.required]]
    })
  }

  openAvisoEmail() {
    if(this.emailForm.hasError('emailsMismatch')){
      this.dialog.open(DialogComponent, {
        data: {
          title: 'E-mail diferente',
          confirmButton: false,
          cancelButton: false
        }
      })
    }
  }

}
