
DROP TABLE IF EXISTS creators;

CREATE TABLE creators (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    picture TEXT, 
    github TEXT,
    linkin TEXT
);





-- DROP TABLE IF EXISTS creators

-- CREATE TABLE creators

-- \c creators

-- CREATE TABLE creators (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50)
--     description TEXT,
--     picture TEXT, 
--     github TEXT,
--     linkin TEXT,
-- )

