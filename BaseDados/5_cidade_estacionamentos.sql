USE cidade_system;

DROP TABLE IF EXISTS estacionamentos;

CREATE TABLE estacionamentos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_cidade INT(11) UNSIGNED NOT NULL,
    nome VARCHAR(20) NOT NULL,
    longitude VARCHAR(10) NOT NULL,
    latitude VARCHAR(10) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cidade) REFERENCES cidades(id)
);
