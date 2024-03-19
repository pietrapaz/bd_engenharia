 CREATE DATABASE IF NOT EXISTS empresa_db;
-- DROP DATABASE empresa_db;
USE empresa_db;
SELECT DATABASE();

SHOW TABLES;

CREATE TABLE IF NOT EXISTS Departamento(
cod_depto varchar(4) PRIMARY KEY,
nome_depto varchar(25),
endereco_depto varchar(25),
bairro_depto varchar(25),
cep_depto varchar(10),
cidade_depto varchar(25),
uf_depto varchar(2)
);

SELECT * FROM Departamento;

CREATE TABLE IF NOT EXISTS Funcionario(
matr_func varchar(4) PRIMARY KEY,
cod_depto varchar(4),
nome_func varchar(45),
nasc_func datetime,
profissao_func varchar(25),
endereco_func varchar(30),
bairro_func varchar(25),
cep_func varchar(10),
cidade_func varchar(25),
uf_func varchar(2),
FOREIGN KEY (cod_depto) REFERENCES Departamento(cod_depto)
);

SELECT * FROM Funcionario;

CREATE TABLE IF NOT EXISTS Dependentes(
matr_func varchar(4),
sequencia_dep varchar(4) PRIMARY KEY,
nome_dep varchar(45),
parentesco_dep varchar(15),
nascimento_dep datetime,
sexo_dep varchar(1),
FOREIGN KEY (matr_func) REFERENCES Funcionario(matr_func)
);

SELECT * FROM Dependentes;