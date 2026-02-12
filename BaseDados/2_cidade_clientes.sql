USE cidade_system;

DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20)UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),

    

);