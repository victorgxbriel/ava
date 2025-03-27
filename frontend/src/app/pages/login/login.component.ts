import { Component, inject, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { RouterLink } from '@angular/router';
import { NavbarComponent } from "../../shared/components/navbar/navbar.component";
import { FooterComponent } from "../../shared/components/footer/footer.component";

@Component({
  selector: 'app-login',
  imports: [MatCardModule, MatFormFieldModule, MatInputModule, MatButtonModule, ReactiveFormsModule, MatIconModule, RouterLink, NavbarComponent, FooterComponent],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent implements OnInit {
  loginForm!: FormGroup
  hide: boolean = true

  form = inject(FormBuilder)

  ngOnInit(): void {
    this.setForm()
  }

  setForm(): void {
    this.loginForm = this.form.group({
      username: ['', Validators.required],
      password: ['', Validators.required]
    })
  }

  verificaEmail() {
    console.log(isNaN(parseInt(this.loginForm.get('username')?.value)))
    if(isNaN(parseInt(this.loginForm.get('username')?.value)))
      this.loginForm.get('username')?.setValidators([Validators.required, Validators.email])
    else
    this.loginForm.get('username')?.setValidators([Validators.required])
  }

}
