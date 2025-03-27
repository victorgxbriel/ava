import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClasseSummaryComponent } from './classe-summary.component';

describe('ClasseSummaryComponent', () => {
  let component: ClasseSummaryComponent;
  let fixture: ComponentFixture<ClasseSummaryComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ClasseSummaryComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClasseSummaryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
