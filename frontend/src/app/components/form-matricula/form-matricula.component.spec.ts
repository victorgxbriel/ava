import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FormMatriculaComponent } from './form-matricula.component';

describe('FormMatriculaComponent', () => {
  let component: FormMatriculaComponent;
  let fixture: ComponentFixture<FormMatriculaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FormMatriculaComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(FormMatriculaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
