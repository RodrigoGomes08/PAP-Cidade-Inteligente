USE cidade_system;

DROP TABLE IF EXISTS tipo_lugares;

CREATE TABLE tipo_lugares (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL,
    cor VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);
