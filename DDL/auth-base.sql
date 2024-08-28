DROP SCHEMA IF EXISTS register CASCADE;


SET schema 	'register';

CREATE SCHEMA register AUTHORIZATION postgres;


-- Permissions

GRANT ALL ON SCHEMA register TO postgres;


-- register.users definition

-- Drop table

-- DROP TABLE users;

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

-- Permissions

ALTER TABLE register.users OWNER TO postgres;
GRANT ALL ON TABLE register.users TO postgres;


-- register.compl_users_id_seq definition

-- DROP SEQUENCE register.compl_users_id_seq;

CREATE SEQUENCE register.compl_users_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE register.compl_users_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE register.compl_users_id_seq TO postgres;


-- register.users_id_seq definition

-- DROP SEQUENCE register.users_id_seq;

CREATE SEQUENCE register.users_id_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE register.users_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE register.users_id_seq TO postgres;


-- register.compl_users definition

-- Drop table

-- DROP TABLE compl_users;

CREATE TABLE compl_users (
                             id bigserial NOT NULL,
                             id_user int8 NOT NULL,
                             compl_adress varchar(255) NULL,
                             compl_cep varchar(255) NULL,
                             compl_city varchar(255) NULL,
                             compl_cpf varchar(255) NULL,
                             compl_phone varchar(255) NULL,
                             user_plan varchar(255) NULL,
                             CONSTRAINT compl_users_pkey PRIMARY KEY (id),
                             CONSTRAINT fk6s5btiv3dqs048o8vinwefi2s FOREIGN KEY (id_user) REFERENCES users(id)
);

-- Permissions

ALTER TABLE register.compl_users OWNER TO postgres;
GRANT ALL ON TABLE register.compl_users TO postgres;