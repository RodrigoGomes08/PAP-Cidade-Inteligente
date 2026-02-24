USE cidade_system;

/* CLIENTES */
INSERT INTO clientes (nome, email, password, morada) VALUES
('João Nicolau', 'a@email.com', 'abc', 'Rua Dr. Henrique Barbas de Albuquerque, Loures'),
('Ana Costa', 'ana@email.com', 'password456', 'Rua 25 de Abril, Loures'),
('Pedro Santos', 'pedro@email.com', 'password789', 'Rua Ilha de Porto Santo, Loures'),
('Maria Silva', 'maria@email.com', 'password101', 'Rua da Liberdade, Loures'),
('Carlos Oliveira', 'carlos@email.com', 'password202', 'Rua da Paz, Loures'),
('Sofia Fernandes', 'sofia@email.com', 'password303', 'Rua da Alegria, Loures'),
('Ricardo Pereira', 'ricardo@email.com', 'password404', 'Rua da Liberdade, Loures'),
('Isabel Rodrigues', 'isabel@email.com', 'password505', 'Rua da Paz, Loures'),
('Miguel Almeida', 'miguel@email.com', 'password606', 'Rua da Alegria, Loures'),
('Carla Martins', 'carla@email.com', 'password707', 'Rua da Liberdade, Loures');

/* VEICULOS */
INSERT INTO veiculos (id_cliente, tipo, matricula, modelo, marca, cor) VALUES
(1, 'Carro', '12-AB-34', 'Civic', 'Honda', 'Preto'),
(2, 'Carro', '56-CD-78', 'Corolla', 'Toyota', 'Branco'),
(3, 'Carro', '90-EF-12', 'M4', 'BMW', 'Verde'),
(4, 'Carro', '34-GH-56', 'A4', 'Audi', 'Cinza'),
(5, 'Carro', '78-IJ-90', 'Model 3', 'Tesla', 'Vermelho'),
(6, 'Carro', '12-KL-34', 'Civic', 'Honda', 'Preto'),
(7, 'Carro', '56-MN-78', 'Corolla', 'Toyota', 'Branco'),
(8, 'Carro', '90-OP-12', 'M4', 'BMW', 'Verde'),
(9, 'Carro', '34-QR-56', 'A4', 'Audi', 'Cinza'),
(10, 'Carro', '78-ST-90', 'Model 3', 'Tesla', 'Vermelho');

/* CIDADES */
INSERT INTO cidades (nome) VALUES
('Loures');

/* ESTACIONAMENTOS */
INSERT INTO estacionamentos (id_cidade, nome, longitude, latitude) VALUES
(1, 'Estacionamento Central', -9.1234567, 38.1234567),
(1, 'Estacionamento Norte', -9.2345678, 38.2345678),
(1, 'Estacionamento Sul', -9.3456789, 38.3456789);

/* ESTACIO_CLIENTES */
INSERT INTO estacio_clientes (id_cliente, id_p_estacionamento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 3),
(10, 1);

/* LUGAR_TIPOS */
INSERT INTO lugar_tipos (tipo) VALUES
('Carro'),
('Motociclos'),
('Elétrico'),
('Deficiente'),
('Bicicleta/Trotinete Elétrica');

/* LUGARES */
INSERT INTO lugares (id_p_estacionamento, id_tipo, identificacao, ocupado) VALUES
(1, 1, 'A1', FALSE),
(1, 2, 'A2', FALSE),
(1, 3, 'A3', FALSE),
(1, 4, 'A4', FALSE),
(1, 5, 'A5', FALSE),
(2, 1, 'B1', FALSE),
(2, 2, 'B2', FALSE),
(2, 3, 'B3', FALSE),
(2, 4, 'B4', FALSE),
(2, 5, 'B5', FALSE),
(3, 1, 'C1', FALSE),
(3, 2, 'C2', FALSE),
(3, 3, 'C3', FALSE),
(3, 4, 'C4', FALSE),
(3, 5, 'C5', FALSE);

/* CLI_HIS_OCU_LUG */
INSERT INTO cli_his_ocu_lug (id_estacionamento_clientes, id_lugar, hr_entrada, hr_saida) VALUES
(1, 1, '2023-01-01 08:00:00', '2023-01-01 10:00:00'),
(2, 2, '2023-01-01 09:00:00', '2023-01-01 11:00:00'),
(3, 3, '2023-01-01 10:00:00', '2023-01-01 12:00:00'),
(4, 4, '2023-01-01 11:00:00', '2023-01-01 13:00:00'),
(5, 5, '2023-01-01 12:00:00', '2023-01-01 14:00:00'),
(6, 1, '2023-01-01 08:30:00', '2023-01-01 09:30:00'),
(7, 2, '2023-01-01 09:30:00', '2023-01-01 10:30:00'),
(8, 3, '2023-01-01 10:30:00', '2023-01-01 11:30:00'),
(9, 4, '2023-01-01 11:30:00', '2023-01-01 12:30:00'),
(10, 5, '2023-01-01 12:30:00', '2023-01-01 13:30:00');

/* CANDIEIRO_URBANOS */
INSERT INTO candieiros_urbanos (id_cidade, longitude, latitude, estado, observacoes) VALUES
(1, -9.1234567, 38.1234567, 'Ativo', 'Sem observações'),
(1, -9.2345678, 38.2345678, 'Inativo', 'Necessita manutenção'),
(1, -9.3456789, 38.3456789, 'Ativo', 'Sem observações'),
(1, -9.1201000, 38.1240000, 'Ativo', 'Sem observações'),
(1, -9.1212000, 38.1255000, 'Ativo', 'Sem observações'),
(1, -9.1223000, 38.1270000, 'Inativo', 'Substituir lâmpada'),
(1, -9.1234000, 38.1285000, 'Ativo', 'Sem observações'),
(1, -9.1245000, 38.1300000, 'Ativo', 'Sem observações'),
(1, -9.1256000, 38.1315000, 'Inativo', 'Fiação danificada'),
(1, -9.1267000, 38.1330000, 'Ativo', 'Sem observações'),
(1, -9.1278000, 38.1345000, 'Ativo', 'Sem observações'),
(1, -9.1289000, 38.1360000, 'Inativo', 'Necessita manutenção preventiva'),
(1, -9.1300000, 38.1375000, 'Ativo', 'Sem observações'),
(1, -9.1311000, 38.1390000, 'Ativo', 'Verificar sensor'),
(1, -9.1322000, 38.1405000, 'Inativo', 'Substituir suporte'),
(1, -9.1333000, 38.1420000, 'Ativo', 'Sem observações'),
(1, -9.1344000, 38.1435000, 'Ativo', 'Sem observações'),
(1, -9.1355000, 38.1450000, 'Inativo', 'Problema no controlador'),
(1, -9.1366000, 38.1465000, 'Ativo', 'Sem observações'),
(1, -9.1377000, 38.1480000, 'Ativo', 'Sem observações'),
(1, -9.1388000, 38.1495000, 'Inativo', 'Necessita inspeção'),
(1, -9.1399000, 38.1510000, 'Ativo', 'Sem observações'),
(1, -9.1410000, 38.1525000, 'Ativo', 'Sem observações'),
(1, -9.1421000, 38.1540000, 'Inativo', 'Substituir lâmpada e verificar fiação'),
(1, -9.1432000, 38.1555000, 'Ativo', 'Sem observações'),
(1, -9.1443000, 38.1570000, 'Ativo', 'Sem observações'),
(1, -9.1454000, 38.1585000, 'Inativo', 'Elementos danificados'),
(1, -9.1465000, 38.1600000, 'Ativo', 'Sem observações'),
(1, -9.1476000, 38.1615000, 'Ativo', 'Sem observações'),
(1, -9.1487000, 38.1630000, 'Inativo', 'Necessita manutenção elétrica'),
(1, -9.1498000, 38.1645000, 'Ativo', 'Sem observações'),
(1, -9.1509000, 38.1660000, 'Ativo', 'Sem observações'),
(1, -9.1520000, 38.1675000, 'Inativo', 'Problema intermitente'),
(1, -9.1531000, 38.1690000, 'Ativo', 'Sem observações'),
(1, -9.1542000, 38.1705000, 'Ativo', 'Sem observações'),
(1, -9.1553000, 38.1720000, 'Inativo', 'Substituir luminária'),
(1, -9.1564000, 38.1735000, 'Ativo', 'Sem observações'),
(1, -9.1575000, 38.1750000, 'Ativo', 'Sem observações'),
(1, -9.1586000, 38.1765000, 'Inativo', 'Falta de alimentação'),
(1, -9.1597000, 38.1780000, 'Ativo', 'Sem observações'),
(1, -9.1608000, 38.1795000, 'Ativo', 'Sem observações'),
(1, -9.1619000, 38.1810000, 'Inativo', 'Necessita verificação do poste'),
(1, -9.1630000, 38.1825000, 'Ativo', 'Sem observações'),
(1, -9.1641000, 38.1840000, 'Ativo', 'Sem observações'),
(1, -9.1652000, 38.1855000, 'Inativo', 'Proteção contra vandalismo necessária'),
(1, -9.1663000, 38.1870000, 'Ativo', 'Sem observações'),
(1, -9.1674000, 38.1885000, 'Ativo', 'Sem observações'),
(1, -9.1685000, 38.1900000, 'Inativo', 'Substituir fusível'),
(1, -9.1696000, 38.1915000, 'Ativo', 'Sem observações'),
(1, -9.1707000, 38.1930000, 'Ativo', 'Sem observações');

/* CONTENTORES */
INSERT INTO contentores (id_cidade, longitude, latitude, estado, observacoes) VALUES
(1, -9.1234567, 38.1234567, 'Ativo', 'Sem observações'),
(1, -9.2345678, 38.2345678, 'Inativo', 'Necessita manutenção'),
(1, -9.3456789, 38.3456789, 'Ativo', 'Sem observações'),
(1, -9.1728000, 38.1945000, 'Ativo', 'Sem observações'),
(1, -9.1739000, 38.1959000, 'Inativo', 'Falta de tampa'),
(1, -9.1750000, 38.1973000, 'Ativo', 'Sem observações'),
(1, -9.1761000, 38.1987000, 'Ativo', 'Sem observações'),
(1, -9.1772000, 38.2001000, 'Inativo', 'Rachaduras na estrutura'),
(1, -9.1783000, 38.2015000, 'Ativo', 'Sem observações'),
(1, -9.1794000, 38.2029000, 'Ativo', 'Sem observações'),
(1, -9.1805000, 38.2043000, 'Inativo', 'Entupido'),
(1, -9.1816000, 38.2057000, 'Ativo', 'Sem observações'),
(1, -9.1827000, 38.2071000, 'Ativo', 'Sem observações'),
(1, -9.1838000, 38.2085000, 'Inativo', 'Vandalismo'),
(1, -9.1849000, 38.2099000, 'Ativo', 'Sem observações'),
(1, -9.1860000, 38.2113000, 'Ativo', 'Sem observações'),
(1, -9.1871000, 38.2127000, 'Inativo', 'Necessita limpeza'),
(1, -9.1882000, 38.2141000, 'Ativo', 'Sem observações'),
(1, -9.1893000, 38.2155000, 'Ativo', 'Sem observações'),
(1, -9.1904000, 38.2169000, 'Inativo', 'Substituir contentor'),
(1, -9.1915000, 38.2183000, 'Ativo', 'Sem observações'),
(1, -9.1926000, 38.2197000, 'Ativo', 'Sem observações'),
(1, -9.1937000, 38.2211000, 'Inativo', 'Suporte danificado'),
(1, -9.1948000, 38.2225000, 'Ativo', 'Sem observações'),
(1, -9.1959000, 38.2239000, 'Ativo', 'Sem observações'),
(1, -9.1970000, 38.2253000, 'Inativo', 'Odor intenso'),
(1, -9.1981000, 38.2267000, 'Ativo', 'Sem observações'),
(1, -9.1992000, 38.2281000, 'Ativo', 'Sem observações'),
(1, -9.2003000, 38.2295000, 'Inativo', 'Base instável'),
(1, -9.2014000, 38.2309000, 'Ativo', 'Sem observações'),
(1, -9.2025000, 38.2323000, 'Ativo', 'Sem observações'),
(1, -9.2036000, 38.2337000, 'Inativo', 'Necessita reposição'),
(1, -9.2047000, 38.2351000, 'Ativo', 'Sem observações'),
(1, -9.2058000, 38.2365000, 'Ativo', 'Sem observações'),
(1, -9.2069000, 38.2379000, 'Inativo', 'Pintura danificada'),
(1, -9.2080000, 38.2393000, 'Ativo', 'Sem observações'),
(1, -9.2091000, 38.2407000, 'Ativo', 'Sem observações'),
(1, -9.2102000, 38.2421000, 'Inativo', 'Risco de transbordo'),
(1, -9.2113000, 38.2435000, 'Ativo', 'Sem observações'),
(1, -9.2124000, 38.2449000, 'Ativo', 'Sem observações'),
(1, -9.2135000, 38.2463000, 'Inativo', 'Verificar sistema de fecho'),
(1, -9.2146000, 38.2477000, 'Ativo', 'Sem observações'),
(1, -9.2157000, 38.2491000, 'Ativo', 'Sem observações'),
(1, -9.2168000, 38.2505000, 'Inativo', 'Necessita manutenção preventiva'),
(1, -9.2179000, 38.2519000, 'Ativo', 'Sem observações'),
(1, -9.2190000, 38.2533000, 'Ativo', 'Sem observações'),
(1, -9.2201000, 38.2547000, 'Inativo', 'Posição inadequada');