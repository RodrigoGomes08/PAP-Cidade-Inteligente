USE cidade_system;

DROP TABLE IF EXISTS estacionamentos;

CREATE TABLE estacionamentos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    longitude DECIMAL(10,7) NOT NULL,
    latitude DECIMAL(10,7) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
);
