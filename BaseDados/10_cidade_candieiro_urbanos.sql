USE cidade_system;

DROP TABLE IF EXISTS candieiro_urbanos;

CREATE TABLE candieiro_urbanos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    longitude DECIMAL (10, 7),
    latitude DECIMAL (10, 7),
    estado VARCHAR(50) NOT NULL,
    observacoes VARCHAR(255),
    PRIMARY KEY (id),
    CONSTRAINT unique_long_lat UNIQUE (longitude, latitude),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);