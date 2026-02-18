USE cidade_system;

DROP TABLE IF EXISTS veiculos;

CREATE TABLE veiculos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cliente INT(11) UNSIGNED,
    tipo VARCHAR(255) NOT NULL,
    matricula VARCHAR(255) NOT NULL UNIQUE,
    modelo VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    cor VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);