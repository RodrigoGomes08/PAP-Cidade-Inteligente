USE cidade_system;

/* CIDADES */
INSERT INTO cidades (nome) VALUES
('Lisboa');

/* CLIENTES */
INSERT INTO clientes (nome, data_nascimento, telefone, email, password) VALUES
('Ana Silva','1990-01-01','912345678','ana@gmail.com','123'),
('Bruno Costa','1985-02-02','913456789','bruno@gmail.com','123'),
('Carla Mendes','1992-03-03','914567890','carla@gmail.com','123'),
('Daniel Rocha','1988-04-04','915678901','daniel@gmail.com','123'),
('Eva Lima','1995-05-05','916789012','eva@gmail.com','123'),
('Fábio Alves','1983-06-06','917890123','fabio@gmail.com','123'),
('Gina Pires','1991-07-07','918901234','gina@gmail.com','123'),
('Hugo Reis','1989-08-08','919012345','hugo@gmail.com','123'),
('Inês Duarte','1993-09-09','911123456','ines@gmail.com','123'),
('João Teixeira','1987-10-10','910234567','joao@gmail.com','123');

/* VEÍCULOS */
INSERT INTO veiculos (tipo, matricula, modelo, marca, cor) VALUES
('carro','AA-11-AA','Yaris','Toyota','branco'),
('carro','BB-22-BB','X1','BMW','preto'),
('mota','CC-33-CC','CB500','Honda','vermelho'),
('carro','DD-44-DD','A3','Audi','cinza'),
('carro','EE-55-EE','Model 3','Tesla','branco'),
('carro','FF-66-FF','Focus','Ford','azul'),
('mota','GG-77-GG','MT07','Yamaha','preto'),
('carro','HH-88-HH','Corsa','Opel','verde'),
('carro','II-99-II','Clio','Renault','cinza'),
('carro','JJ-00-JJ','208','Peugeot','branco');

/* ESTACIONAMENTOS */
INSERT INTO estacionamentos (id_cidade, longitude, latitude) VALUES
(1,-9.1400000,38.7100000),
(2,-8.6100000,41.1400000),
(3,-8.4200000,41.5400000),
(4,-8.4300000,40.2100000),
(5,-8.6400000,40.6300000),
(6,-7.9300000,37.0200000),
(7,-8.8800000,38.5300000),
(8,-7.9000000,38.5600000),
(9,-7.9100000,40.6600000),
(10,-7.2600000,40.5400000);

/* ESTACIO_CLIENTES */
INSERT INTO estacio_clientes (id_cliente, id_estacionamento) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

/* LUGAR_TIPOS */
INSERT INTO lugar_tipos (tipo) VALUES
('normal'),
('deficiente'),
('eletrico'),
('moto'),
('vip'),
('curta duração'),
('longa duração'),
('carga'),
('familia'),
('outros');

/* LUGARES */
INSERT INTO lugares (id_tipo, id_estacionamento, numTotal, identificacao, ocupado) VALUES
(1,1,1,'A1',0),
(2,1,1,'A2',0),
(3,2,1,'B1',1),
(4,2,1,'B2',0),
(5,3,1,'C1',0),
(6,4,1,'D1',1),
(7,5,1,'E1',0),
(8,6,1,'F1',1),
(9,7,1,'G1',0),
(10,8,1,'H1',0);

/* CLI_HIS_OCU_LUG */
INSERT INTO cli_his_ocu_lug (id_estacionamento_clientes, id_lugar, hr_entrada, hr_saida) VALUES
(1,1,'2024-01-01 08:00:00','2024-01-01 09:00:00'),
(2,2,'2024-01-02 08:00:00','2024-01-02 10:00:00'),
(3,3,'2024-01-03 09:00:00','2024-01-03 11:00:00'),
(4,4,'2024-01-04 10:00:00','2024-01-04 12:00:00'),
(5,5,'2024-01-05 07:30:00','2024-01-05 08:30:00'),
(6,6,'2024-01-06 14:00:00','2024-01-06 15:00:00'),
(7,7,'2024-01-07 16:00:00','2024-01-07 17:00:00'),
(8,8,'2024-01-08 18:00:00','2024-01-08 19:00:00'),
(9,9,'2024-01-09 08:15:00','2024-01-09 09:45:00'),
(10,10,'2024-01-10 13:00:00','2024-01-10 14:30:00');

/* CANDIEIRO_URBANOS */
INSERT INTO candieiro_urbanos (id_cidade, longitude, latitude, estado, observacoes) VALUES
(1,-9.1390000,38.7220000,'ativo','ok'),
(2,-8.6110000,41.1490000,'ativo','ok'),
(3,-8.4210000,41.5500000,'ativo','ok'),
(4,-8.4290000,40.2030000,'ativo','ok'),
(5,-8.6450000,40.6400000,'ativo','ok'),
(6,-7.9300000,37.0170000,'ativo','ok'),
(7,-8.8880000,38.5240000,'ativo','ok'),
(8,-7.9060000,38.5710000,'ativo','ok'),
(9,-7.9140000,40.6560000,'ativo','ok'),
(10,-7.2630000,40.5370000,'ativo','ok');

/* CONTENTORES */
INSERT INTO contentores (id_cidade, capacidade, longitude, latitude, tipo, estado, observacoes, isFull) VALUES
(1,1000,-9.1400000,38.7200000,'lixo',1,'ok',0),
(2,800,-8.6100000,41.1500000,'recic',1,'ok',0),
(3,600,-8.4200000,41.5500000,'lixo',1,'ok',1),
(4,900,-8.4300000,40.2000000,'papel',1,'ok',0),
(5,700,-8.6400000,40.6400000,'vidro',1,'ok',0),
(6,1000,-7.9300000,37.0100000,'lixo',1,'ok',1),
(7,850,-8.8800000,38.5200000,'recic',1,'ok',0),
(8,650,-7.9000000,38.5700000,'papel',1,'ok',0),
(9,750,-7.9100000,40.6500000,'vidro',1,'ok',1),
(10,500,-7.2600000,40.5300000,'lixo',1,'ok',0);
