DROP DATABASE IF EXISTS wavform_dev;

CREATE DATABASE wavform_dev;

\c wavform_dev;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username  VARCHAR(50) NOT NULL UNIQUE,
    password  TEXT,
    email  VARCHAR(50) NOT NULL UNIQUE
);