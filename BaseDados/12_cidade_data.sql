USE cidade_system;

/* CLIENTES */
INSERT INTO clientes (nome, email, password, morada) VALUES
('João Nicolau', 'a@email.com', 'abc', 'Rua Dr. Henrique Barbas de Albuquerque, Loures'),
('Ana Costa', 'ana@email.com', 'password456', 'Rua 25 de Abril, Loures'),
('Pedro Santos', 'pedro@email.com', 'password789', 'Rua Ilha de Porto Santo, Loures');

/* VEICULOS */
INSERT INTO veiculos (id_cliente, tipo, matricula, modelo, marca, cor) VALUES
(1, 'Carro', '12-AB-34', 'Civic', 'Honda', 'Preto'),
(2, 'Carro', '56-CD-78', 'Corolla', 'Toyota', 'Branco'),
(3, 'Carro', '90-EF-12', 'M4', 'BMW', 'Verde');

/* CIDADES */
INSERT INTO cidades (nome) VALUES
('Loures');

