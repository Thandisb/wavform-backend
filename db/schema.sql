DROP DATABASE IF EXISTS wavform_dev;

CREATE DATABASE wavform_dev;

\c wavform_dev;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username  VARCHAR(50) NOT NULL UNIQUE,
    password  TEXT,
    email  VARCHAR(50) NOT NULL UNIQUE
);


DROP TABLE IF EXISTS lessons;

CREATE TABLE lessons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30)    
);


DROP TABLE IF EXISTS topics;

CREATE TABLE topics (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  description TEXT,
  lessons_id INTEGER REFERENCES lessons(id)
);

-- CREATE TABLE trivia (
--   t_id INT PRIMARY KEY,
--   t_name VARCHAR(30),
--   t_answers TEXT, 
--   t_topic INT,
--   FOREIGN KEY (t_topic) REFERENCES topics(to_id)
-- );

DROP TABLE IF EXISTS sequences;

CREATE TABLE sequences (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  sequence TEXT
);  


DROP TABLE IF EXISTS creators;

CREATE TABLE creators (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    picture TEXT, 
    github TEXT,
    linkin TEXT
);

CREATE TABLE key_tracker (
    u_id INTEGER REFERENCES users(id) 
    ON DELETE CASCADE,
    key_press VARCHAR(2) NOT NULL,
    time_logged TIMESTAMP NOT NULL
);


CREATE TABLE progress_tracker (
  l_id INTEGER REFERENCES lessons(id),
  u_id INTEGER REFERENCES users(id),
  status TEXT CHECK (status IN ('In Progress', 'Not Started', 'Completed'))
);
