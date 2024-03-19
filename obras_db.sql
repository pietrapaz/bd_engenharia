CREATE DATABASE obras_db;
-- DROP database obras_db;
USE obras_db;
SELECT DATABASE();

SHOW TABLES;
-- DROP TABLE Obra;
-- DROP TABLE Fornecedor;
-- DROP TABLE Material;
-- DROP TABLE Remessa;

CREATE TABLE IF NOT EXISTS Obra(
	id_obra int NOT NULL PRIMARY KEY,
	nome_obra varchar(45),
	cidade_obra varchar(25)
);

CREATE TABLE IF NOT EXISTS Fornecedor(
	id_forn int NOT NULL PRIMARY KEY,
	nome_forn varchar(45),
	avaliacao_forn VARCHAR(10),
	cidade_forn varchar(25)
);

CREATE TABLE IF NOT EXISTS Material(
	id_mat int NOT NULL PRIMARY KEY,
	nome_mat varchar(45),
	cor_mat varchar(15),
	peso_mat varchar(10)
);

CREATE TABLE IF NOT EXISTS Remessa(
	id_obra int NOT NULL,
	id_forn int NOT NULL,
	id_mat int NOT NULL,
	qtd int NOT NULL,
	FOREIGN KEY (id_obra) REFERENCES Obra(id_obra),
	FOREIGN KEY (id_forn) REFERENCES Fornecedor(id_forn),
	FOREIGN KEY (id_mat) REFERENCES Material(id_mat)
);

SHOW TABLES;

INSERT INTO Obra (id_obra, nome_obra, cidade_obra) VALUES ('2017001', 'Escola', 'Amapá');
INSERT INTO Obra (id_obra, nome_obra, cidade_obra) VALUES ('2017002', 'Parque', 'Rio Grande do Sul');
INSERT INTO Obra (id_obra, nome_obra, cidade_obra) VALUES ('2020001', 'Lar dos Idosos', 'Fortaleza');
INSERT INTO Obra (id_obra, nome_obra, cidade_obra) VALUES ('2021001', 'Ponte', 'São Paulo');
INSERT INTO Obra (id_obra, nome_obra, cidade_obra) VALUES ('2022001', 'Estrada BR-020', 'Brasília');
INSERT INTO Obra (id_obra, nome_obra, cidade_obra) VALUES ('2022002', 'Posto de Saúde', 'São Paulo');
INSERT INTO Obra (id_obra, nome_obra, cidade_obra) VALUES ('2022003', 'Bar', 'Rio Grande do Sul');

SELECT * FROM Obra;

-- avaliacao: excelente, bom, regular, ruim, pessimo
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0001', 'Rezende', 'Regular', 'Brasília');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0002', 'Amanco', 'Bom', 'Santa Catarina');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0003', 'Tigre', 'Excelente', 'São Paulo');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0004', 'Bayer', 'Ruim', 'Rio de Janeiro');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0005', 'Balaroti', 'Bom', 'Santa Catarina');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0006', 'Gravia', 'Ruim', 'Rio de Janeiro');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0007', 'Coqueiro', 'Regular', 'Brasília');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0008', 'Soferro', 'Pessimo', 'Teresina');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0009', 'Ampla', 'Regular', 'Teresina');
INSERT INTO Fornecedor (id_forn, nome_forn, avaliacao_forn, cidade_forn) VALUES ('0010', 'Leroy Merlin', 'Excelente', 'São Paulo');

SELECT * FROM Fornecedor;

INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1001', 'Telha', 'Vermelho', '10,2 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1002', 'Brita', 'Branco', '20 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1003', 'Vidro', 'Transparente', '8,85 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1004', 'Cimento', 'Cinza', '200 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1005', 'Areia', 'Bege', '18 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1006', 'Cerâmica', 'Verde', '42,3 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1007', 'Tijolo', 'Vermelho', '68,9 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1008', 'Argamassa', 'Cinza', '20 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1009', 'Gesso', 'Branco', '4 kg');
INSERT INTO Material (id_mat, nome_mat, cor_mat, peso_mat) VALUES ('1010', 'Madeira', 'Marrom', '50 kg');

SELECT * FROM Material;

INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017001', '0008', '1004', '20');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017001', '0009', '1001', '300');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017001', '0009', '1007', '60');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017001', '0008', '1009', '400');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017001', '0009', '1003', '750');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017002', '0002', '1008', '65');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017002', '0002', '1009', '1200');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017002', '0005', '1002', '860');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2017002', '0005', '1005', '500');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2020001', '0008', '1002', '440');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2020001', '0009', '1003', '30');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2020001', '0009', '1005', '720');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2020001', '0009', '1007', '140');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2020001', '0009', '1008', '100');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2021001', '0010', '1004', '520');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2021001', '0010', '1008', '360');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2021001', '0010', '1009', '270');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022001', '0001', '1002', '1400');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022001', '0007', '1004', '1700');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0003', '1001', '300');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0003', '1002', '40');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0003', '1003', '960');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0003', '1004', '500');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0010', '1005', '850');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0010', '1006', '720');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0010', '1007', '540');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0010', '1008', '470');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0010', '1009', '800');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022002', '0010', '1010', '50');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0002', '1001', '790');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0002', '1002', '430');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0002', '1003', '860');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0005', '1004', '80');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0005', '1005', '280');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0005', '1006', '40');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0005', '1007', '70');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0005', '1008', '320');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0009', '1009', '950');
INSERT INTO Remessa (id_obra, id_forn, id_mat, qtd) VALUES ('2022003', '0009', '1010', '30');

SELECT * FROM Remessa;

-- a. Para cada material obter o código, nome e a respectiva quantidade remetida para cada cidade;
SELECT DISTINCT Material.id_mat as CodMaterial, 
	            Material.nome_mat as NomeMaterial, 
                Remessa.qtd as QtdMaterial,
                Obra.cidade_obra as CidadeDaObra
FROM ((Remessa 
INNER JOIN Material ON Remessa.id_mat = Material.id_mat) 
INNER JOIN Obra ON Remessa.id_obra = Obra.id_obra);

-- b. Para cada fornecedor obter o seu código, nome e o código e nome das obras para as quais remeteu material;
SELECT DISTINCT Fornecedor.id_forn as CodFornecedor,
	            Fornecedor.nome_forn as NomeFornecedor, 
                Obra.id_obra as CodObra, 
                Obra.nome_obra as NomeDaObra
FROM ((Remessa 
INNER JOIN Fornecedor ON Remessa.id_forn = Fornecedor.id_forn) 
INNER JOIN Obra ON Remessa.id_obra = Obra.id_obra);

-- c. Para cada obra obter o seu código e nome, e o código e nome dos fornecedores que lhe remeteu material;
SELECT DISTINCT Obra.id_obra as CodObra, 
                Obra.nome_obra as NomeDaObra, 
                Fornecedor.id_forn as CodFornecedor, 
                Fornecedor.nome_forn as NomeFornecedor
FROM ((Remessa
INNER JOIN Obra ON Remessa.id_obra = Obra.id_obra)
INNER JOIN Fornecedor ON Remessa.id_forn = Fornecedor.id_forn);

-- d. Obter o código e o nome dos fornecedores que remeteram material para fora de sua cidade;
SELECT DISTINCT Fornecedor.id_forn as CodFornecedor, 
                Fornecedor.nome_forn as NomeFornecedor, 
                Obra.cidade_obra as CidadeDaObra
FROM ((Remessa
INNER JOIN Fornecedor ON Remessa.id_forn = Fornecedor.id_forn) 
INNER JOIN Obra ON Remessa.id_obra = Obra.id_obra)
WHERE Fornecedor.cidade_forn <> Obra.cidade_obra;

-- e. Para cada obra obter o código e o nome dos materiais remetidos na cor vermelha;
SELECT DISTINCT Obra.id_obra as CodObra, 
                Obra.nome_obra as NomeDaObra, 
                Material.nome_mat as NomeDoMaterial, 
                Material.cor_mat as CorDoMaterial
FROM ((Remessa
INNER JOIN Obra ON Remessa.id_obra = Obra.id_obra)
INNER JOIN Material ON Remessa.id_mat = Material.id_mat)
WHERE cor_mat = 'Vermelho';

-- f. Obter o código, o nome e a quantidade remetida, do fornecedor que remeteu a maior quantidade de materiais para todas as obras;
SELECT Fornecedor.id_forn as CodFornecedor, 
       Fornecedor.nome_forn as NomeDoFornecedor,
       Remessa.qtd as QtdEnviada
FROM (Remessa
INNER JOIN Fornecedor ON Remessa.id_forn = Fornecedor.id_forn)
WHERE qtd = (SELECT max(qtd) FROM Remessa);

-- g. Obter o código, o nome e a quantidade do material menos remetido à todas as obras;
SELECT Fornecedor.id_forn as CodFornecedor, 
       Fornecedor.nome_forn as NomeDoFornecedor,
       Remessa.qtd as QtdEnviada
FROM (Remessa
INNER JOIN Fornecedor ON Remessa.id_forn = Fornecedor.id_forn)
WHERE qtd = (SELECT min(qtd) FROM Remessa);
