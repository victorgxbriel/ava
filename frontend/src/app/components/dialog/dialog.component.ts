import { Component, inject, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogModule, MatDialogRef } from '@angular/material/dialog'
import { MatButtonModule  } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';

interface IDialogData {
  title: string;
  message: string;
  confirmLabel?: string;
  cancelLabel?: string;
  confirmButton?: boolean,
  cancelButton?: boolean
}

@Component({
  selector: 'app-dialog',
  imports: [MatDialogModule, MatButtonModule, MatIconModule],
  templateUrl: './dialog.component.html',
  styleUrl: './dialog.component.css'
})
export class DialogComponent {

  constructor(
    public dialogRef: MatDialogRef<DialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: IDialogData
  ){}

}
