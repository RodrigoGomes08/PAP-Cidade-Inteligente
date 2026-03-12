USE cidade_system;

DROP TABLE IF EXISTS estados;

CREATE TABLE estados (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    cor VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);