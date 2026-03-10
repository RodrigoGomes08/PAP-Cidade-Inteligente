USE cidade_system;

DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    data_nascimento DATE,
    telefone VARCHAR(9),
    email VARCHAR(200) NOT NULL,
    pass VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);