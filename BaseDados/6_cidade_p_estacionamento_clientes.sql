USE cidade_system;

DROP TABLE IF EXISTS p_estacionamentos_clientes;

CREATE TABLE p_estacionamentos_clientes (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_p_estacionamento INT(11) UNSIGNED NOT NULL,
    id_cliente INT(11) UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_p_estacionamento) REFERENCES p_estacionamentos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
