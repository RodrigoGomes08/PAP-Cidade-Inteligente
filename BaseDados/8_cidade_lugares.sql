USE cidade_system;

DROP TABLE IF EXISTS lugares;

CREATE TABLE lugares (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_tipo INT(11) UNSIGNED NOT NULL,
    id_estacionamento INT(11) UNSIGNED NOT NULL,
    numTotal INT NOT NULL,
    identificacao VARCHAR(255) NOT NULL,
    ocupado BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_tipo) REFERENCES lugar_tipos(id),
    FOREIGN KEY (id_estacionamento) REFERENCES estacionamentos(id)
);
