import { CommonModule } from '@angular/common';
import { Component, Input } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';

@Component({
  selector: 'app-classe-summary',
  imports: [MatCardModule, CommonModule, MatIconModule],
  templateUrl: './classe-summary.component.html',
  styleUrl: './classe-summary.component.css'
})
export class ClasseSummaryComponent {

  @Input() nota!: number;
  @Input() situacao!: string
  @Input() disciplina!: string

}
