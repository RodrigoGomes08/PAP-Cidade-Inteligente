USE cidade_system;

DROP TABLE IF EXISTS lugar_tipos;

CREATE TABLE lugar_tipos (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
