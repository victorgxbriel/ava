import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CursoSummaryComponent } from './curso-summary.component';

describe('CursoSummaryComponent', () => {
  let component: CursoSummaryComponent;
  let fixture: ComponentFixture<CursoSummaryComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CursoSummaryComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CursoSummaryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
