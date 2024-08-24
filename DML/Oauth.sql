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

INSERT INTO tb_user_role (dt_include_regt, role_code, credentials) VALUES(current_date, 1, 'asnisdy-s1ds8as4d-asdna');

