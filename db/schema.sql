DROP DATABASE IF EXISTS lessons;

CREATE DATABASE lessons;

\c lessons;

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
