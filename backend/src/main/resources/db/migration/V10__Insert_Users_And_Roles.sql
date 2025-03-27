-- Vx__create_auth_module_tables.sql

-- Tabela de papéis (roles)
CREATE TABLE roles (
                       id_role SERIAL NOT NULL,
                       name VARCHAR(50) NOT NULL UNIQUE,
                       PRIMARY KEY (id_role)
);

-- Tabela de usuários (users)
CREATE TABLE users (
                       id_user SERIAL NOT NULL,
                       username VARCHAR(50) NOT NULL UNIQUE,
                       password VARCHAR(255) NOT NULL,
    -- Relacionamento opcional com Discente
                       discente_id INTEGER,
    -- Relacionamento opcional com Docente
                       docente_id INTEGER,
                       active BOOLEAN NOT NULL DEFAULT TRUE,
                       created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
                       updated_at TIMESTAMPTZ,
                       PRIMARY KEY (id_user),
                       CONSTRAINT fk_discente FOREIGN KEY (discente_id)
                           REFERENCES discente(id_discente),
                       CONSTRAINT fk_docente FOREIGN KEY (docente_id)
                           REFERENCES docente(id_docente)
);

-- Tabela de ligação entre usuários e papéis (users_roles)
CREATE TABLE users_roles (
                             user_id INTEGER NOT NULL,
                             role_id INTEGER NOT NULL,
                             PRIMARY KEY (user_id, role_id),
                             CONSTRAINT fk_user FOREIGN KEY (user_id)
                                 REFERENCES users(id_user),
                             CONSTRAINT fk_role FOREIGN KEY (role_id)
                                 REFERENCES roles(id_role)
);

-- Inserção das roles iniciais
INSERT INTO roles (name) VALUES ('ROLE_DISCENTE');
INSERT INTO roles (name) VALUES ('ROLE_DOCENTE');
INSERT INTO roles (name) VALUES ('ROLE_ADMIN');
