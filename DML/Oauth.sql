INSERT INTO tb_permissions (id, perm_name) VALUES( 1, 'REGISTER_USER');
INSERT INTO tb_permissions (id, perm_name) VALUES( 2, 'ERASE_USER');
INSERT INTO tb_permissions (id, perm_name) VALUES( 3, 'SEND_EMAIL');
INSERT INTO tb_permissions (id, perm_name) VALUES( 4, 'RECEIVE_EMAIL');
INSERT INTO tb_permissions (id, perm_name) VALUES( 5, 'LOGIN');
INSERT INTO tb_permissions (id, perm_name) VALUES( 6, 'PANEL');
INSERT INTO tb_permissions (id, perm_name) VALUES( 7, 'PROFILE_EDIT');
INSERT INTO tb_permissions (id, perm_name) VALUES( 8, 'FULL');

INSERT INTO tb_roles (id, role_name) VALUES(1,'BASIC');
INSERT INTO tb_roles (id, role_name) VALUES(2,'INTERMEDIARY');
INSERT INTO tb_roles (id, role_name) VALUES(3,'FULL');
INSERT INTO tb_roles (id, role_name) VALUES(4,'BLOCKED');

INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 6, 1);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 1, 1);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 2, 1);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 5, 1);

INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 1, 2);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 2, 2);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 3, 2);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 4, 2);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 5, 2);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 6, 2);
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 7, 2);


INSERT INTO tb_application (application_name, application_id) VALUES('ORION_LOGIN', 'd9156ff5e1eeb2b288b7499dfcd10bef99b592eaad4bfe3bf80f480082119b48');

INSERT INTO tb_app_role (dt_include_regt, role_code, application_id) VALUES(current_date, 2, 'd9156ff5e1eeb2b288b7499dfcd10bef99b592eaad4bfe3bf80f480082119b48');


INSERT INTO tb_session (active, dt_expiration_regt, dt_include_regt, id, application_id, credential_id) VALUES(
                                                                                                                  false, null, current_date, nextval('tb_user_session_seq'),'d9156ff5e1eeb2b288b7499dfcd10bef99b592eaad4bfe3bf80f480082119b48' , '61d2704d1df69a54bc102a5830049eb7');


