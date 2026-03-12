USE cidade_system;

DROP TABLE IF EXISTS contentores;

CREATE TABLE contentores (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    capacidade INT NOT NULL,
    longitude VARCHAR (10),
    latitude VARCHAR (10),
    tipo VARCHAR(10) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    observacoes VARCHAR(255),
    is_full BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);