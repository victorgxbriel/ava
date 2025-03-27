import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DiscentesComponent } from './discentes.component';

describe('DiscentesComponent', () => {
  let component: DiscentesComponent;
  let fixture: ComponentFixture<DiscentesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [DiscentesComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(DiscentesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
