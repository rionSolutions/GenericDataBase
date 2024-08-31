DROP SCHEMA IF EXISTS oauth CASCADE;

-- DROP SCHEMA oauth;


CREATE SCHEMA oauth AUTHORIZATION postgres;

SET schema 	'oauth';

-- oauth.tb_application definition

-- Drop table

-- DROP TABLE oauth.tb_application;

CREATE TABLE oauth.tb_application (
                                      application_id varchar(255) NOT NULL,
                                      application_name varchar(255) NULL,
                                      CONSTRAINT tb_application_pkey PRIMARY KEY (application_id)
);

-- Permissions

ALTER TABLE oauth.tb_application OWNER TO postgres;
GRANT ALL ON TABLE oauth.tb_application TO postgres;


-- oauth.tb_permissions definition

-- Drop table

-- DROP TABLE oauth.tb_permissions;

CREATE TABLE oauth.tb_permissions (
                                      id int8 NOT NULL,
                                      perm_name varchar(255) NULL,
                                      CONSTRAINT tb_permissions_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE oauth.tb_permissions OWNER TO postgres;
GRANT ALL ON TABLE oauth.tb_permissions TO postgres;


-- oauth.tb_roles definition

-- Drop table

-- DROP TABLE oauth.tb_roles;

CREATE TABLE oauth.tb_roles (
                                id int8 NOT NULL,
                                role_name varchar(255) NULL,
                                CONSTRAINT tb_roles_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE oauth.tb_roles OWNER TO postgres;
GRANT ALL ON TABLE oauth.tb_roles TO postgres;


-- oauth.tb_permissions_roles_seq definition

-- DROP SEQUENCE oauth.tb_permissions_roles_seq;

CREATE SEQUENCE oauth.tb_permissions_roles_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1
    NO CYCLE;

-- Permissions

ALTER SEQUENCE oauth.tb_permissions_roles_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE oauth.tb_permissions_roles_seq TO postgres;


-- oauth.tb_permissions_seq definition

-- DROP SEQUENCE oauth.tb_permissions_seq;

CREATE SEQUENCE oauth.tb_permissions_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1
    NO CYCLE;

-- Permissions

ALTER SEQUENCE oauth.tb_permissions_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE oauth.tb_permissions_seq TO postgres;


-- oauth.tb_user_session_seq definition

-- DROP SEQUENCE oauth.tb_user_session_seq;

CREATE SEQUENCE oauth.tb_user_session_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1
    NO CYCLE;

-- Permissions

ALTER SEQUENCE oauth.tb_user_session_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE oauth.tb_user_session_seq TO postgres;


-- oauth.tb_app_role definition

-- Drop table

-- DROP TABLE oauth.tb_app_role;

CREATE TABLE oauth.tb_app_role (
                                   dt_include_regt timestamp(6) NULL,
                                   role_code int8 NULL,
                                   application_id varchar(255) NOT NULL,
                                   CONSTRAINT tb_app_role_pkey PRIMARY KEY (application_id),
                                   CONSTRAINT fk3h4co2gbyd4t09kj57a532lmr FOREIGN KEY (role_code) REFERENCES oauth.tb_roles(id),
                                   CONSTRAINT fko2rovqvast64s0jktbamuursw FOREIGN KEY (application_id) REFERENCES oauth.tb_application(application_id)
);

-- Permissions

ALTER TABLE oauth.tb_app_role OWNER TO postgres;
GRANT ALL ON TABLE oauth.tb_app_role TO postgres;


-- oauth.tb_permission_roles definition

-- Drop table

-- DROP TABLE oauth.tb_permission_roles;

CREATE TABLE oauth.tb_permission_roles (
                                           id int8 NOT NULL,
                                           permission_id int8 NULL,
                                           role_id int8 NULL,
                                           CONSTRAINT tb_permission_roles_pkey PRIMARY KEY (id),
                                           CONSTRAINT fk4mbyinmp5sga0fixknq4wcai FOREIGN KEY (role_id) REFERENCES oauth.tb_roles(id),
                                           CONSTRAINT fk62q0l8g4uew289kw0y9nal8ko FOREIGN KEY (permission_id) REFERENCES oauth.tb_permissions(id)
);

-- Permissions

ALTER TABLE oauth.tb_permission_roles OWNER TO postgres;
GRANT ALL ON TABLE oauth.tb_permission_roles TO postgres;


-- oauth.tb_session definition

-- Drop table

-- DROP TABLE oauth.tb_session;

CREATE TABLE oauth.tb_session (
                                  active bool NULL,
                                  dt_expiration_regt timestamp(6) NULL,
                                  dt_include_regt timestamp(6) NULL,
                                  id int8 NOT NULL,
                                  application_id varchar(255) NULL,
                                  credential_id varchar(255) NULL,
                                  CONSTRAINT tb_session_pkey PRIMARY KEY (id),
                                  CONSTRAINT tb_session_unique UNIQUE (application_id, credential_id)
);

-- Permissions

ALTER TABLE oauth.tb_session OWNER TO postgres;
GRANT ALL ON TABLE oauth.tb_session TO postgres;


-- oauth.tb_session foreign keys

ALTER TABLE oauth.tb_session ADD CONSTRAINT fkeeajx9el8utebm4jxai456oef FOREIGN KEY (application_id) REFERENCES oauth.tb_app_role(application_id);
