DROP SCHEMA IF EXISTS register CASCADE;

SET schema 	'register';

CREATE SCHEMA register AUTHORIZATION postgres;

GRANT ALL ON SCHEMA register TO postgres;

CREATE TABLE compl_users (
                             id bigserial NOT NULL,
                             id_user int8 NOT NULL,
                             compl_adress varchar(255) NULL,
                             compl_cep varchar(255) NULL,
                             compl_city varchar(255) NULL,
                             compl_cpf varchar(255) NULL,
                             compl_phone varchar(255) NULL,
                             user_plan varchar(255) NULL,
                             CONSTRAINT compl_users_pkey PRIMARY KEY (id)
);

ALTER TABLE register.compl_users OWNER TO postgres;
GRANT ALL ON TABLE register.compl_users TO postgres;


CREATE TABLE users (
                       "role" int2 NULL,
                       "validate" bool NOT NULL,
                       id bigserial NOT NULL,
                       code_register varchar(255) NULL,
                       creci varchar(255) NULL,
                       "document" varchar(255) NULL,
                       email varchar(255) NULL,
                       "name" varchar(255) NULL,
                       "password" varchar(255) NULL,
                       phone varchar(255) NULL,
                       surname varchar(255) NULL,
                       CONSTRAINT users_pkey PRIMARY KEY (id),
                       CONSTRAINT users_role_check CHECK (((role >= 0) AND (role <= 1)))
);


ALTER TABLE register.users OWNER TO postgres;
GRANT ALL ON TABLE register.users TO postgres;

