INSERT INTO clientes (nome, data_nascimento, telefone, email, password, morada, tem_mobilidade_reduzida)
VALUES 
('João Silva', '1990-05-12', '912345678', 'joao.silva@email.com', 'pass123', 'Rua das Flores 15, Lisboa', 1, 0),
('Maria Fernandes', '1985-09-23', '934567890', 'maria.fernandes@email.com', 'maria456', 'Av. da Liberdade 120, Lisboa', 1, 1),
('Pedro Costa', '2000-01-30', '965432187', 'pedro.costa@email.com', 'pedro789', 'Rua do Sol 8, Porto', 0, 0);

INSERT INTO veiculos (id_cliente, tipo, matricula, modelo, marca, cor, is_electric) VALUES
(1, 'Carro', '12-AB-34', 'Clio', 'Renault', 'Branco', 0),
(2, 'Carro', '23-CD-45', 'Model 3', 'Tesla', 'Preto', 1),
(3, 'Moto', '34-EF-56', 'CB500', 'Honda', 'Vermelho', 0);

INSERT INTO cidades (nome) VALUES
('Loures');

INSERT INTO p_estacionamentos (id_cidade, nome, num_max_lugares, longitude, latitude) VALUES
(1, 'Parque Centro', 100, '-9.1393', '38.7223'),
(1, 'Parque Ribeira', 80, '-8.6110', '41.1496'),
(1, 'Parque Avenida', 60, '-8.4292', '40.2056');

INSERT INTO p_estacionamentos_clientes (id_p_estacionamento, id_cliente) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO tipo_lugares (tipo, cor) VALUES
('Normal', 'Cinza'),
('Elétrico', 'Verde'),
('Deficiente', 'Azul'),
('Motociclo', 'Amarelo');

INSERT INTO lugares (id_p_estacionamentos, id_tipo_lugares, identificacao, ocupado) VALUES
(1, 1, 'A1', 0),
(1, 2, 'A2', 0),
(1, 3, 'A3', 0),
(1, 4, 'A4', 0),
(2, 1, 'B1', 0),
(2, 2, 'B2', 0),
(2, 3, 'B3', 0),
(2, 4, 'B4', 0),
(3, 1, 'C1', 0),
(3, 2, 'C2', 0),
(3, 3, 'C3', 0),
(3, 4, 'C4', 0);

INSERT INTO cli_his_ocu_lug (id_lugar, id_estacionamento_clientes, hr_entrada, hr_saida) VALUES
(1, 1, '2024-01-01 08:00:00', '2024-01-01 10:00:00'),
(2, 2, '2024-01-01 09:00:00', '2024-01-01 11:00:00'),
(3, 3, '2024-01-01 10:00:00', '2024-01-01 12:00:00');

INSERT INTO estados (nome, cor) VALUES
('Operacional', 'Verde'),
('Avariado', 'Vermelho'),
('Em Manutenção', 'Amarelo');

INSERT INTO candeeiro_urbanos (id_cidade, id_estado, identificacao, longitude, latitude) VALUES
(1, 1,'Candeeiro 1', '-9.1393', '38.7223'),
(1, 1,'Candeeiro 2', '-9.1400', '38.7225'),
(1, 1,'Candeeiro 3', '-9.1410', '38.7227'),
(1, 1,'Candeeiro 4', '-8.6110', '41.1496'),
(1, 1,'Candeeiro 5', '-8.6120', '41.1498'),
(1, 1,'Candeeiro 6', '-8.6130', '41.1500'),
(1, 1,'Candeeiro 7', '-8.4292', '40.2056'),
(1, 1,'Candeeiro 8', '-8.4300', '40.2058'),
(1, 1,'Candeeiro 9', '-8.4310', '40.2060'),
(1, 2,'Candeeiro 10', '-9.1420', '38.7230'),
(1, 2,'Candeeiro 11', '-9.1430', '38.7235'),
(1, 2,'Candeeiro 12', '-9.1440', '38.7240'),
(1, 2,'Candeeiro 13', '-8.6140', '41.1502'),
(1, 2,'Candeeiro 14', '-8.6150', '41.1504'),
(1, 2,'Candeeiro 15', '-8.6160', '41.1506'),
(1, 2,'Candeeiro 16', '-8.4320', '40.2062'),
(1, 2,'Candeeiro 17', '-8.4330', '40.2064'),
(1, 2,'Candeeiro 18', '-8.4340', '40.2066'),
(1, 3,'Candeeiro 19', '-9.1450', '38.7245'),
(1, 3,'Candeeiro 20', '-9.1460', '38.7250'),
(1, 3,'Candeeiro 21', '-9.1470', '38.7255'),
(1, 3,'Candeeiro 22', '-8.6170', '41.1508'),
(1, 3,'Candeeiro 23', '-8.6180', '41.1510'),
(1, 3,'Candeeiro 24', '-8.6190', '41.1512'),
(1, 3,'Candeeiro 25', '-8.4350', '40.2068'),
(1, 3,'Candeeiro 26', '-8.4360', '40.2070'),
(1, 3,'Candeeiro 27', '-8.4370', '40.2072'),
(1, 3,'Candeeiro 28', '-8.4380', '40.2074'),
(1, 3,'Candeeiro 29', '-8.4390', '40.2076'),
(1, 3,'Candeeiro 30', '-8.4400', '40.2078');

INSERT INTO contentores (id_cidade, id_estado, capacidade_max, longitude, latitude, tipo, identificacao, observacoes, is_full) VALUES
(1, 1, 100.00, '-9.1393', '38.7223', 'Ecoponto Azul', 'Contentor 1', 'Sem observações', 0),
(1, 1, 80.00, '-8.6110', '41.1496', 'Ecoponto Verde', 'Contentor 2', 'Sem observações', 0),
(1, 1, 60.00, '-8.4292', '40.2056', 'Ecoponto Amarelo', 'Contentor 3', 'Sem observações', 0),
(1, 2, 120.00, '-9.1420', '38.7230', 'Ecoponto Azul', 'Contentor 4', 'Sem observações', 0),
(1, 2, 90.00, '-8.6140', '41.1502', 'Ecoponto Verde', 'Contentor 5', 'Sem observações', 0),
(1, 2, 70.00, '-8.4320', '40.2062', 'Ecoponto Amarelo', 'Contentor 6', 'Sem observações', 0),
(1, 3, 110.00, '-9.1450', '38.7245', 'Ecoponto Azul', 'Contentor 7', 'Sem observações', 0),
(1, 3, 85.00, '-8.6170', '41.1508', 'Ecoponto Verde', 'Contentor 8', 'Sem observações', 0),
(1, 3, 65.00, '-8.4350', '40.2068', 'Ecoponto Amarelo', 'Contentor 9', 'Sem observações', 0);

INSERT INTO contentor_leituras (id_contentor, peso, data_leitura) VALUES
(1, 50.00, '2024-01-01 08:00:00'),
(2, 30.00, '2024-01-01 09:00:00'),
(3, 20.00, '2024-01-01 10:00:00'),
(4, 60.00, '2024-01-01 11:00:00'),
(5, 45.00, '2024-01-01 12:00:00'),
(6, 35.00, '2024-01-01 13:00:00'),
(7, 55.00, '2024-01-01 14:00:00'),
(8, 40.00, '2024-01-01 15:00:00'),
(9, 25.00, '2024-01-01 16:00:00');

