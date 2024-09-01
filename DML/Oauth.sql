--permitions
set schema  'oauth';

INSERT INTO tb_permissions (id, perm_name) VALUES( 1, 'REGISTER_USER');
INSERT INTO tb_permissions (id, perm_name) VALUES( 2, 'ERASE_USER');
INSERT INTO tb_permissions (id, perm_name) VALUES( 3, 'SEND_EMAIL');
INSERT INTO tb_permissions (id, perm_name) VALUES( 4, 'RECEIVE_EMAIL');
INSERT INTO tb_permissions (id, perm_name) VALUES( 5, 'LOGIN');
INSERT INTO tb_permissions (id, perm_name) VALUES( 6, 'PANEL');
INSERT INTO tb_permissions (id, perm_name) VALUES( 7, 'PROFILE_EDIT');
INSERT INTO tb_permissions (id, perm_name) VALUES( 8, 'FULL');

-- profiles
INSERT INTO tb_roles (id, role_name) VALUES(1,'BASIC');
INSERT INTO tb_roles (id, role_name) VALUES(2,'INTERMEDIARY');
INSERT INTO tb_roles (id, role_name) VALUES(3,'FULL');
INSERT INTO tb_roles (id, role_name) VALUES(4,'BLOCKED');

--relations with permitions and profiles
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 5, (select id from tb_roles where role_name = 'BASIC' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 6, (select id from tb_roles where role_name = 'BASIC' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 4, (select id from tb_roles where role_name = 'BASIC' ));

INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 5, (select id from tb_roles where role_name = 'INTERMEDIARY' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 6, (select id from tb_roles where role_name = 'INTERMEDIARY' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 4, (select id from tb_roles where role_name = 'INTERMEDIARY' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 1, (select id from tb_roles where role_name = 'INTERMEDIARY' ));

INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 1, (select id from tb_roles where role_name = 'FULL' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 2, (select id from tb_roles where role_name = 'FULL' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 3, (select id from tb_roles where role_name = 'FULL' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 4, (select id from tb_roles where role_name = 'FULL' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 5, (select id from tb_roles where role_name = 'FULL' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 6, (select id from tb_roles where role_name = 'FULL' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 7, (select id from tb_roles where role_name = 'FULL' ));
INSERT INTO tb_permission_roles (id, permission_id, role_id) VALUES (nextval('tb_permissions_roles_seq'), 8, (select id from tb_roles where role_name = 'FULL' ));


-- register applications
INSERT INTO tb_application (application_name, application_id) VALUES('LOGIN', 'd9156ff5e1eeb2b288b7499dfcd10bef99b592eaad4bfe3bf80f480082119b48');
INSERT INTO tb_application (application_name, application_id) VALUES('REGISTER', '0f4c1fb77da90980ca57acef52b0ef3cf4d1a8fbc4260855513c84a256b48b4a');
INSERT INTO tb_application (application_name, application_id) VALUES('EMAIL_SENDER', 'e5be674ffc1a47eab9a272b31f0ad5de169b11fa10938658c1ce716c6237bac4');
INSERT INTO tb_application (application_name, application_id) VALUES('MOBILE', '2edfe44e09c15dd92e0803ed2db1a4fae58151b4df146b4015884cc5565200ef');

INSERT INTO tb_app_role (dt_include_regt, role_code, application_id) VALUES(current_date, 2, (select application_id from tb_application where application_name = 'LOGIN'));
INSERT INTO tb_app_role (dt_include_regt, role_code, application_id) VALUES(current_date, 2, (select application_id from tb_application where application_name = 'REGISTER'));
INSERT INTO tb_app_role (dt_include_regt, role_code, application_id) VALUES(current_date, 2, (select application_id from tb_application where application_name = 'EMAIL_SENDER'));
INSERT INTO tb_app_role (dt_include_regt, role_code, application_id) VALUES(current_date, 2, (select application_id from tb_application where application_name = 'MOBILE'));

