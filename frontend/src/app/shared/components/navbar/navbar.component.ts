import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { Router } from '@angular/router';

@Component({
  selector: 'app-navbar',
  imports: [ MatButtonModule, MatIconModule, 
  ],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.css'
})
export class NavbarComponent {
  isMenuOpen = false;
  constructor(private router: Router) {}

  toggleMenu() {
    this.isMenuOpen = !this.isMenuOpen;
  }

  goTo(route: string) {
    this.router.navigate([route]);
  }
}