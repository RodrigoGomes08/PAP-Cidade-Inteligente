USE cidade_system;

DROP TABLE IF EXISTS clientes;

CREATE TABLE cidades (
    id INT(11) AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
