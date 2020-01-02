CREATE TABLE users_role
(
    code VARCHAR(255)
        CONSTRAINT users_role_pk PRIMARY KEY
);

CREATE TABLE users
(
    id              VARCHAR(255)
        CONSTRAINT users_id_pk PRIMARY KEY,

    username        VARCHAR(255)
        CONSTRAINT users_username_notnull NOT NULL,

    users_role_code VARCHAR(255)
        CONSTRAINT users_role_code_notnull NOT NULL
        CONSTRAINT users_role_code_fk REFERENCES users_role (code)
);

CREATE TABLE orders
(
    id      VARCHAR(255)
        CONSTRAINT orders_pk PRIMARY KEY,

    content VARCHAR(1000)
        CONSTRAINT orders_content_notnull NOT NULL,

    user_id VARCHAR(255)
        CONSTRAINT orders_user_id_notnull NOT NULL
        CONSTRAINT orders_user_id_fk REFERENCES users (id) ON DELETE CASCADE
);

INSERT INTO users_role
VALUES ('ADMIN'),
       ('USER');

INSERT INTO users
    (id, username, users_role_code)
VALUES ('6f7eae38-dfd2-4024-9ae2-e035e42de0db', 'admin', 'ADMIN'),
       ('1e260359-d38c-44f3-bf9f-6fac8ad012f2', 'customer1', 'USER'),
       ('db58cdfd-7374-4152-bf47-e48d4a95cea1', 'customer2', 'USER'),
       ('ca58711c-82ce-423a-8a44-3e00cea62b9b', 'customer3', 'USER');

