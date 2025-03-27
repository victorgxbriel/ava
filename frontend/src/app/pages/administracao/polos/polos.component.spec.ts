import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PolosComponent } from './polos.component';

describe('PolosComponent', () => {
  let component: PolosComponent;
  let fixture: ComponentFixture<PolosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [PolosComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PolosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
