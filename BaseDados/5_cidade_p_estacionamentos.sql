USE cidade_system;

DROP TABLE IF EXISTS p_estacionamentos;

CREATE TABLE p_estacionamentos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    nome VARCHAR(20) NOT NULL,
    num_max_lugares INT UNSIGNED NOT NULL,
    longitude VARCHAR(10) NOT NULL,
    latitude VARCHAR(10) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_long_lat UNIQUE (longitude, latitude),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);  
