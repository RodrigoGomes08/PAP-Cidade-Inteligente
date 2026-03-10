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
INSERT INTO estacionamentos (id_cidade, nome, latitude, longitude) VALUES
(1, 'Estacionamento Central', 38.1234567, -9.1234567),
(1, 'Estacionamento Norte', 38.2345678, -9.2345678),
(1, 'Estacionamento Sul', 38.3456789, -9.3456789);

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
INSERT INTO candieiros_urbanos (id_cidade, latitude, longitude, estado, observacoes) VALUES
(1, 38.1234567, -9.1234567, 'Ativo', 'Sem observações'),
(1, 38.2345678, -9.2345678, 'Inativo', 'Necessita manutenção'),
(1, 38.3456789, -9.3456789, 'Ativo', 'Sem observações'),
(1, 38.1240000, -9.1201000, 'Ativo', 'Sem observações'),
(1, 38.1255000, -9.1212000, 'Ativo', 'Sem observações'),
(1, 38.1270000, -9.1223000, 'Inativo', 'Substituir lâmpada'),
(1, 38.1285000, -9.1234000, 'Ativo', 'Sem observações'),
(1, 38.1300000, -9.1245000, 'Ativo', 'Sem observações'),
(1, 38.1315000, -9.1256000, 'Inativo', 'Fiação danificada'),
(1, 38.1330000, -9.1267000, 'Ativo', 'Sem observações'),
(1, 38.1345000, -9.1278000, 'Ativo', 'Sem observações'),
(1, 38.1360000, -9.1289000, 'Inativo', 'Necessita manutenção preventiva'),
(1, 38.1375000, -9.1300000, 'Ativo', 'Sem observações'),
(1, 38.1390000, -9.1311000, 'Ativo', 'Verificar sensor'),
(1, 38.1405000, -9.1322000, 'Inativo', 'Substituir suporte'),
(1, 38.1420000, -9.1333000, 'Ativo', 'Sem observações'),
(1, 38.1435000, -9.1344000, 'Ativo', 'Sem observações'),
(1, 38.1450000, -9.1355000, 'Inativo', 'Problema no controlador'),
(1, 38.1465000, -9.1366000, 'Ativo', 'Sem observações'),
(1, 38.1480000, -9.1377000, 'Ativo', 'Sem observações'),
(1, 38.1495000, -9.1388000, 'Inativo', 'Necessita inspeção'),
(1, 38.1510000, -9.1399000, 'Ativo', 'Sem observações'),
(1, 38.1525000, -9.1410000, 'Ativo', 'Sem observações'),
(1, 38.1540000, -9.1421000, 'Inativo', 'Substituir lâmpada e verificar fiação'),
(1, 38.1555000, -9.1432000, 'Ativo', 'Sem observações'),
(1, 38.1570000, -9.1443000, 'Ativo', 'Sem observações'),
(1, 38.1585000, -9.1454000, 'Inativo', 'Elementos danificados'),
(1, 38.1600000, -9.1465000, 'Ativo', 'Sem observações'),
(1, 38.1615000, -9.1476000, 'Ativo', 'Sem observações'),
(1, 38.1630000, -9.1487000, 'Inativo', 'Necessita manutenção elétrica'),
(1, 38.1645000, -9.1498000, 'Ativo', 'Sem observações'),
(1, 38.1660000, -9.1509000, 'Ativo', 'Sem observações'),
(1, 38.1675000, -9.1520000, 'Inativo', 'Problema intermitente'),
(1, 38.1690000, -9.1531000, 'Ativo', 'Sem observações'),
(1, 38.1705000, -9.1542000, 'Ativo', 'Sem observações'),
(1, 38.1720000, -9.1553000, 'Inativo', 'Substituir luminária'),
(1, 38.1735000, -9.1564000, 'Ativo', 'Sem observações'),
(1, 38.1750000, -9.1575000, 'Ativo', 'Sem observações'),
(1, 38.1765000, -9.1586000, 'Inativo', 'Falta de alimentação'),
(1, 38.1780000, -9.1597000, 'Ativo', 'Sem observações'),
(1, 38.1795000, -9.1608000, 'Ativo', 'Sem observações'),
(1, 38.1810000, -9.1619000, 'Inativo', 'Necessita verificação do poste'),
(1, 38.1825000, -9.1630000, 'Ativo', 'Sem observações'),
(1, 38.1840000, -9.1641000, 'Ativo', 'Sem observações'),
(1, 38.1855000, -9.1652000, 'Inativo', 'Proteção contra vandalismo necessária'),
(1, 38.1870000, -9.1663000, 'Ativo', 'Sem observações'),
(1, 38.1885000, -9.1674000, 'Ativo', 'Sem observações'),
(1, 38.1900000, -9.1685000, 'Inativo', 'Substituir fusível'),
(1, 38.1915000, -9.1696000, 'Ativo', 'Sem observações'),
(1, 38.1930000, -9.1707000, 'Ativo', 'Sem observações');

/* CONTENTORES */
INSERT INTO contentores (id_cidade, latitude, longitude, estado, observacoes) VALUES
(1, 38.1234567, -9.1234567, 'Ativo', 'Sem observações'),
(1, 38.2345678, -9.2345678, 'Inativo', 'Necessita manutenção'),
(1, 38.3456789, -9.3456789, 'Ativo', 'Sem observações'),
(1, 38.1945000, -9.1728000, 'Ativo', 'Sem observações'),
(1, 38.1959000, -9.1739000, 'Inativo', 'Falta de tampa'),
(1, 38.1973000, -9.1750000, 'Ativo', 'Sem observações'),
(1, 38.1987000, -9.1761000, 'Ativo', 'Sem observações'),
(1, 38.2001000, -9.1772000, 'Inativo', 'Rachaduras na estrutura'),
(1, 38.2015000, -9.1783000, 'Ativo', 'Sem observações'),
(1, 38.2029000, -9.1794000, 'Ativo', 'Sem observações'),
(1, 38.2043000, -9.1805000, 'Inativo', 'Entupido'),
(1, 38.2057000, -9.1816000, 'Ativo', 'Sem observações'),
(1, 38.2071000, -9.1827000, 'Ativo', 'Sem observações'),
(1, 38.2085000, -9.1838000, 'Inativo', 'Vandalismo'),
(1, 38.2099000, -9.1849000, 'Ativo', 'Sem observações'),
(1, 38.2113000, -9.1860000, 'Ativo', 'Sem observações'),
(1, 38.2127000, -9.1871000, 'Inativo', 'Necessita limpeza'),
(1, 38.2141000, -9.1882000, 'Ativo', 'Sem observações'),
(1, 38.2155000, -9.1893000, 'Ativo', 'Sem observações'),
(1, 38.2169000, -9.1904000, 'Inativo', 'Substituir contentor'),
(1, 38.2183000, -9.1915000, 'Ativo', 'Sem observações'),
(1, 38.2197000, -9.1926000, 'Ativo', 'Sem observações'),
(1, 38.2211000, -9.1937000, 'Inativo', 'Suporte danificado'),
(1, 38.2225000, -9.1948000, 'Ativo', 'Sem observações'),
(1, 38.2239000, -9.1959000, 'Ativo', 'Sem observações'),
(1, 38.2253000, -9.1970000, 'Inativo', 'Odor intenso'),
(1, 38.2267000, -9.1981000, 'Ativo', 'Sem observações'),
(1, 38.2281000, -9.1992000, 'Ativo', 'Sem observações'),
(1, 38.2295000, -9.2003000, 'Inativo', 'Base instável'),
(1, 38.2309000, -9.2014000, 'Ativo', 'Sem observações'),
(1, 38.2323000, -9.2025000, 'Ativo', 'Sem observações'),
(1, 38.2337000, -9.2036000, 'Inativo', 'Necessita reposição'),
(1, 38.2351000, -9.2047000, 'Ativo', 'Sem observações'),
(1, 38.2365000, -9.2058000, 'Ativo', 'Sem observações'),
(1, 38.2379000, -9.2069000, 'Inativo', 'Pintura danificada'),
(1, 38.2393000, -9.2080000, 'Ativo', 'Sem observações'),
(1, 38.2407000, -9.2091000, 'Ativo', 'Sem observações'),
(1, 38.2421000, -9.2102000, 'Inativo', 'Risco de transbordo'),
(1, 38.2435000, -9.2113000, 'Ativo', 'Sem observações'),
(1, 38.2449000, -9.2124000, 'Ativo', 'Sem observações'),
(1, 38.2463000, -9.2135000, 'Inativo', 'Verificar sistema de fecho'),
(1, 38.2477000, -9.2146000, 'Ativo', 'Sem observações'),
(1, 38.2491000, -9.2157000, 'Ativo', 'Sem observações'),
(1, 38.2505000, -9.2168000, 'Inativo', 'Necessita manutenção preventiva'),
(1, 38.2519000, -9.2179000, 'Ativo', 'Sem observações'),
(1, 38.2533000, -9.2190000, 'Ativo', 'Sem observações'),
(1, 38.2547000, -9.2201000, 'Inativo', 'Posição inadequada');