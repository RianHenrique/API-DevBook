CREATE DATABASE IF NOT EXISTS devbook;
USE devbook;

DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
                          id SERIAL PRIMARY KEY,
                          nome VARCHAR(50) NOT NULL,
                          nick VARCHAR(50) NOT NULL UNIQUE,
                          email VARCHAR(50) NOT NULL UNIQUE,
                          senha VARCHAR(100) NOT NULL,
                          criadoEm TIMESTAMP DEFAULT now()
);