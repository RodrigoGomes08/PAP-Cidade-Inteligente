USE cidade_system;

DROP TABLE IF EXISTS candieiro_urbanos;

CREATE TABLE candieiro_urbanos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    longitude DECIMAL (10, 7),
    latitude DECIMAL (10, 7),
    estado VARCHAR(255) NOT NULL,
    observacoes VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
    CONSTRAINT unique_long_lat UNIQUE (longitude, latitude),
    

);