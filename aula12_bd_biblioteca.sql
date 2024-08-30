show databases;
select database();
create database if not exists bd_uc10;
drop database bd_uc10;
use bd_uc10;
show tables;



CREATE TABLE tbl_autores(
id_Autor smallint primary key,
nome_Autor varchar(50),
sobrenome_Autor varchar(60)
);

show tables;
select * from tbl_livro;

CREATE TABLE tbl_editora(
id_Editora smallint primary key,
nome_Editora varchar(60)
);

CREATE TABLE tbl_livro(
id_Livro smallint primary key,
nome_Livro varchar (50),
ISBN varchar(30),
data_Pub date,
preco_Livro decimal(10,0),
fk_tbl_editora_id_Editora smallint,
fk_tbl_autores_id_Autor smallint
);

ALTER TABLE tbl_livro ADD CONSTRAINT fk_tbl_livro_2
FOREIGN KEY (fk_tbl_editora_id_Editora)
REFERENCES tbl_editora(id_Editora)
ON DELETE RESTRICT;

ALTER TABLE tbl_livro ADD CONSTRAINT fk_tbl_livro_3
FOREIGN KEY (fk_tbl_autores_id_Autor)
REFERENCES tbl_autores(id_Autor);

-- INSERIR REGISTROS NAS TABELAS:
select * from tbl_autores;

INSERT INTO tbl_autores(id_Autor, nome_Autor, sobrenome_Autor) VALUES('101', 'ANA', 'Maria');
INSERT INTO tbl_autores(id_Autor, nome_Autor, sobrenome_Autor) VALUES('102', 'Carlos', 'Santos');
INSERT INTO tbl_autores(id_Autor, nome_Autor, sobrenome_Autor) VALUES('103', 'Jorge', 'Luiz');
INSERT INTO tbl_autores(id_Autor, nome_Autor, sobrenome_Autor) VALUES('104', 'Joanita', 'Pereira');
INSERT INTO tbl_Autores(id_Autor, nome_Autor, sobrenome_Autor) VALUES('105', 'Marianita', 'Siqueira');

SELECT * FROM tbl_livro;
INSERT INTO tbl_livro(id_Livro, nome_Livro, ISBN, data_Pub, preco_Livro) VALUES('2010', 'Sistemas de Banco de Dados', '123456', '2021-02-10', '150');
INSERT INTO tbl_livro(id_Livro, nome_Livro, ISBN, data_Pub, preco_Livro) VALUES('2011', 'Estrutura de Dados', '123321', '2021-05-15', '120');
INSERT INTO tbl_livro(id_Livro, nome_Livro, ISBN, data_Pub, preco_Livro) VALUES('2012', 'Redes de Computadores', '345543', '2022-02-03', '200');
INSERT INTO tbl_livro(id_Livro, nome_Livro, ISBN, data_Pub, preco_Livro) VALUES('2013', 'Linguagem POO', '543678', '2019-01-25', '180');
INSERT INTO tbl_livro(id_Livro, nome_Livro, ISBN, data_Pub, preco_Livro) VALUES('2014', 'Teoria da Computação', '987789', '2018-06-09', '140');
INSERT INTO tbl_livro(id_Livro, nome_Livro, ISBN, data_Pub, preco_Livro) VALUES('2015', 'Inteligência Artificial', '121212', '2018-06-09', '140.89');

delete FROM tbl_livro
where id_livro = '2015';

SELECT * FROM tbl_editora;
INSERT INTO tbl_editora(id_Editora, nome_Editora) VALUES('1010', 'FTD');
INSERT INTO tbl_editora(id_Editora, nome_Editora) VALUES('1011', 'Saraiva');
INSERT INTO tbl_editora(id_Editora, nome_Editora) VALUES('1012', 'Person');
INSERT INTO tbl_editora(id_Editora, nome_Editora) VALUES('1013', 'Ática');
INSERT INTO tbl_editora(id_Editora, nome_Editora) VALUES('1014', 'Makron Books');










