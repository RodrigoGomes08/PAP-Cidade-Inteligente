USE cidade_system;

DROP TABLE IF EXISTS estacionamentos;

CREATE TABLE estacionamentos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    longitude DECIMAL(10,7) NOT NULL,
    latitude DECIMAL(10,7) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_long_lat UNIQUE (longitude, latitude),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);  
