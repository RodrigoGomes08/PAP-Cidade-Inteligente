USE cidade_system;

DROP TABLE IF EXISTS contentor_leituras;

CREATE TABLE contentor_leituras (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_contentor INT(11) UNSIGNED NOT NULL,
    peso DECIMAL (6, 2) NOT NULL,
    data_leitura DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_contentor) REFERENCES contentores(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);