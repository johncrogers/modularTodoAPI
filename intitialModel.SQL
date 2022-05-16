
SET check_function_bodies = false;

CREATE TABLE todos(
  id integer NOT NULL,
  message text,
  users_id integer NOT NULL,
  todo_statuses_id integer NOT NULL,
  CONSTRAINT todos_pkey PRIMARY KEY(id)
);

CREATE TABLE users
  (id integer NOT NULL, "name" text, CONSTRAINT users_pkey PRIMARY KEY(id));

CREATE TABLE todo_statuses(
  id integer NOT NULL,
  "name" text,
  users_id integer NOT NULL,
  CONSTRAINT todo_statuses_pkey PRIMARY KEY(id)
);

ALTER TABLE todos
  ADD CONSTRAINT todos_users_id_fkey FOREIGN KEY (users_id) REFERENCES users (id)
  ;

ALTER TABLE todos
  ADD CONSTRAINT todos_todo_statuses_id_fkey
    FOREIGN KEY (todo_statuses_id) REFERENCES todo_statuses (id);

ALTER TABLE todo_statuses
  ADD CONSTRAINT todo_statuses_users_id_fkey
    FOREIGN KEY (users_id) REFERENCES users (id);
Main Diagram
Main Diagram
