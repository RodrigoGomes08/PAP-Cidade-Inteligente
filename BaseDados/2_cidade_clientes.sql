USE cidade_system;

DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    telefone VARCHAR(20),
    email VARCHAR(255) NOT NULL,
    pass VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);