USE cidade_system;

DROP TABLE IF EXISTS estacio_clientes;

CREATE TABLE estacio_clientes (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cliente INT(11) UNSIGNED NOT NULL,
    id_estacionamento INT(11) UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_estacionamento) REFERENCES estacionamentos(id)
);
