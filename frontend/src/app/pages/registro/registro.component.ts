import { Component } from '@angular/core';
import { NavbarComponent } from "../../shared/components/navbar/navbar.component";
import { FooterComponent } from "../../shared/components/footer/footer.component";

@Component({
  selector: 'app-registro',
  imports: [NavbarComponent, FooterComponent],
  templateUrl: './registro.component.html',
  styleUrl: './registro.component.css'
})
export class RegistroComponent {

}
