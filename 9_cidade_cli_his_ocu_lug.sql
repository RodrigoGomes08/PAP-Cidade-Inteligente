USE cidade_system;

DROP TABLE IF EXISTS cli_his_ocu_lug;

CREATE TABLE cli_his_ocu_lug (
    id INT(11) UNSIGNED AUTO_INCREMENT,
    id_estacionamento_clientes INT(11) UNSIGNED NOT NULL,
    id_lugar INT(11) UNSIGNED NOT NULL,
    hr_entrada DATETIME NOT NULL,
    hr_saida DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_estacionamento_clientes) REFERENCES estacio_clientes(id),
    FOREIGN KEY (id_lugar) REFERENCES lugares(id)
);
