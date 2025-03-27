import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AulaSummaryComponent } from './aula-summary.component';

describe('AulaSummaryComponent', () => {
  let component: AulaSummaryComponent;
  let fixture: ComponentFixture<AulaSummaryComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AulaSummaryComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AulaSummaryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
