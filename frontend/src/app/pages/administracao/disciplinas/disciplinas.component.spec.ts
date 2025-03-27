import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplinasComponent } from './disciplinas.component';

describe('DisciplinaComponent', () => {
  let component: DisciplinasComponent;
  let fixture: ComponentFixture<DisciplinasComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [DisciplinasComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(DisciplinasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
