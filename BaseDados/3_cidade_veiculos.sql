USE cidade_system;

DROP TABLE IF EXISTS veiculos;

CREATE TABLE veiculos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    tipo VARCHAR(15) NOT NULL,
    matricula VARCHAR(8) NOT NULL UNIQUE,
    modelo VARCHAR(200) NOT NULL,
    marca VARCHAR(200) NOT NULL,
    cor VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);