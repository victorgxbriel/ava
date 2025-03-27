import { Component } from '@angular/core';
import { FormEsqueciSenhaComponent } from '../../components/form-esqueci-senha/form-esqueci-senha.component';
import { NavbarComponent } from "../../shared/components/navbar/navbar.component";
import { FooterComponent } from "../../shared/components/footer/footer.component";

@Component({
  selector: 'app-esqueci-senha',
  imports: [FormEsqueciSenhaComponent, NavbarComponent, FooterComponent],
  templateUrl: './esqueci-senha.component.html',
  styleUrl: './esqueci-senha.component.css'
})
export class EsqueciSenhaComponent {

}
