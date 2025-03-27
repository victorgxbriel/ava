import { Component } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { NavbarComponent } from "../../shared/components/navbar/navbar.component";

@Component({
  selector: 'app-about',
  standalone: true,  
  imports: [MatCardModule, NavbarComponent],
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css']  
})
export class AboutComponent { }
