import { Component } from '@angular/core';
import { ClasseSummaryComponent } from "../../../components/classe-summary/classe-summary.component";
import { IClasseAluno } from '../../../shared/interfaces/IClasseAluno';

@Component({
  selector: 'app-classes',
  imports: [ClasseSummaryComponent],
  templateUrl: './classes.component.html',
  styleUrl: './classes.component.css'
})
export class ClassesComponent {
  classes: IClasseAluno[] = []
}
