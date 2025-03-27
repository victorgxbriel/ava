import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NavbarAlunoComponent } from './navbar-aluno.component';

describe('NavbarAlunoComponent', () => {
  let component: NavbarAlunoComponent;
  let fixture: ComponentFixture<NavbarAlunoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [NavbarAlunoComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NavbarAlunoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
