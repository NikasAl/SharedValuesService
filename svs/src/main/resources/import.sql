-- insert into words (eng_word, rus_word) values ('one', 'один');
insert into users (username, password, enabled) values ('user1', '$2a$10$2sNO3jkJgf5SMUHBQy7V/OZuUO96x56l8RRrFVbaIorJsMRyWVJk6', true);
insert into users (username, password, enabled) values ('user2', '$2a$10$2sNO3jkJgf5SMUHBQy7V/OZuUO96x56l8RRrFVbaIorJsMRyWVJk6', true);
insert into users (username, password, enabled) values ('user3', '$2a$10$2sNO3jkJgf5SMUHBQy7V/OZuUO96x56l8RRrFVbaIorJsMRyWVJk6', true);
insert into user_roles (username, role) values ('user1', 'ROLE_CUSTOMER');
insert into user_roles (username, role) values ('user2', 'ROLE_CUSTOMER');
insert into user_roles (username, role) values ('user3', 'ROLE_CUSTOMER');

-- values AdMob Tappix StartApp
insert into parameter (id, username, name, value) values ('1', 'user1', 'Tank3DAdType', 'AdMob');

