USE cidade_system;

DROP TABLE IF EXISTS candeeiro_urbanos;

CREATE TABLE candeeiro_urbanos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    id_estado INT(11) UNSIGNED NOT NULL,
    identificacao VARCHAR(255) NOT NULL,
    longitude VARCHAR (10),
    latitude VARCHAR (10),
    observacoes VARCHAR(255),
    PRIMARY KEY (id),
    CONSTRAINT unique_long_lat UNIQUE (longitude, latitude),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    FOREIGN KEY (id_estado) REFERENCES estados(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

);