USE cidade_system;

DROP TABLE IF EXISTS lugares;

CREATE TABLE lugares (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_p_estacionamentos INT(11) UNSIGNED NOT NULL,
    id_tipo_lugares INT(11) UNSIGNED NOT NULL,
    identificacao VARCHAR(2) NOT NULL,
    ocupado BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_tipo_lugares) REFERENCES tipo_lugares(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    FOREIGN KEY (id_p_estacionamentos) REFERENCES p_estacionamentos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
