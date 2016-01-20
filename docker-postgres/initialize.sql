CREATE SEQUENCE id_seq;

CREATE TABLE emails (
id INTEGER primary key not null default nextval('id_seq'),
sender TEXT NOT NULL,
recipient TEXT NOT NULL
);
