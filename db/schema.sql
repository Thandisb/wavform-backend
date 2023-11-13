DROP DATABASE IF EXISTS lessons;

CREATE DATABASE lessons;

\c lessons;

CREATE TABLE lessons (
    l_id SERIAL PRIMARY KEY,
    name VARCHAR(30)    
);


DROP TABLE IF EXISTS topics;

CREATE TABLE topics (
  to_id INT PRIMARY KEY,
  to_name VARCHAR(30),
  to_description TEXT,
  lessons_id INTEGER REFERENCES lessons(l_id)
);

-- CREATE TABLE trivia (
--   t_id INT PRIMARY KEY,
--   t_name VARCHAR(30),
--   t_answers TEXT, 
--   t_topic INT,
--   FOREIGN KEY (t_topic) REFERENCES topics(to_id)
-- );
