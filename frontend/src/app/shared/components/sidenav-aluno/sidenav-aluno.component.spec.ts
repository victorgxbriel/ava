import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SidenavAlunoComponent } from './sidenav-aluno.component';

describe('SidenavAlunoComponent', () => {
  let component: SidenavAlunoComponent;
  let fixture: ComponentFixture<SidenavAlunoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SidenavAlunoComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SidenavAlunoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
