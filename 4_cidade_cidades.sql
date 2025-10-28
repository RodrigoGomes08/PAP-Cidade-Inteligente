USE cidade_system;

DROP TABLE IF EXISTS cidades;

CREATE TABLE cidades (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);