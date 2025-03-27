import { CommonModule } from '@angular/common';
import { Component, inject } from '@angular/core';
import { MatIconModule } from '@angular/material/icon';
import { RouterLink, RouterLinkActive } from '@angular/router';
import { MatMenuModule } from '@angular/material/menu'
import { MatTooltipModule } from '@angular/material/tooltip';
import { saveAs } from 'file-saver';
import { DocumentoService } from '../../services/documento.service';

@Component({
  selector: 'app-sidenav-aluno',
  imports: [ MatIconModule, CommonModule, MatMenuModule, MatTooltipModule, RouterLink, RouterLinkActive],
  templateUrl: './sidenav-aluno.component.html',
  styleUrl: './sidenav-aluno.component.css'
})
export class SidenavAlunoComponent {
     // Controla se o menu está expandido (true) ou recolhido (false)
   isExpanded = true;

   idDiscente: number = 107;
  
   private documentoService = inject(DocumentoService)
 
   toggle() {
     this.isExpanded = !this.isExpanded;
   }   

   downloadDeclaracao(): void {
      this.documentoService.gerarDeclaracao(this.idDiscente).subscribe(blob => {
        saveAs(blob, 'declaracao.pdf');
      })
   }

   downloadMatricula(): void {
    this.documentoService.gerarMatricula(this.idDiscente).subscribe(blob => {
      saveAs(blob, 'matricula.pdf');
    })
 }
 downloadHistorico(): void {
  this.documentoService.gerarHistorico(this.idDiscente).subscribe(blob => {
    saveAs(blob, 'historico.pdf');
  })
}
}
