USE cidade_system;

DROP TABLE IF EXISTS contentores;

CREATE TABLE contentores (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    id_estado INT(11) UNSIGNED NOT NULL,
    capacidade_max DECIMAL(6,2) NOT NULL,
    longitude VARCHAR (10),
    latitude VARCHAR (10),
    tipo VARCHAR(50) NOT NULL,
    identificacao VARCHAR(100) NOT NULL,
    observacoes VARCHAR(255),
    is_full BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    FOREIGN KEY (id_estado) REFERENCES estados(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);