import { Component } from '@angular/core';
import { FormMatriculaComponent } from '../../components/form-matricula/form-matricula.component';
import { FooterComponent } from "../../shared/components/footer/footer.component";
import { NavbarComponent } from "../../shared/components/navbar/navbar.component";
import { RouterLink } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';

@Component({
  selector: 'app-matricula',
  imports: [FormMatriculaComponent, FooterComponent, NavbarComponent, RouterLink],
  templateUrl: './matricula.component.html',
  styleUrl: './matricula.component.css'
})
export class MatriculaComponent {

}
