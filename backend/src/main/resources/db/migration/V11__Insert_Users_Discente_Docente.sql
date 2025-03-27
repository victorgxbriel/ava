insert into users(username, password, discente_id)
select email, matricula, id_discente
from discente;

insert into users_roles(user_id, role_id)
select u.id_user, r.id_role
from users u
join roles r on r.name = 'ROLE_DISCENTE'
where u.discente_id is NOT NULL;

insert into users(username, password, docente_id)
select email, cpf, id_docente
from docente d
where d.nome <> 'N/A';

insert into users_roles(user_id, role_id)
select u.id_user, r.id_role
from users u
join roles r on r.name = 'ROLE_DOCENTE'
where u.docente_id IS NOT NULL;

insert into users(username, password)
values ('admin@stbp', 'admin');

insert into users_roles(user_id, role_id)
select u.id_user, r.id_role
from users u
join roles r on r.name = 'ROLE_ADMIN'
where u.username = 'admin@stbp';