DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
                          id SERIAL PRIMARY KEY,
                          nome VARCHAR(50) NOT NULL,
                          nick VARCHAR(50) NOT NULL UNIQUE,
                          email VARCHAR(50) NOT NULL UNIQUE,
                          senha VARCHAR(50) NOT NULL,
                          criadaEm TIMESTAMP DEFAULT now()
);