-- Cria um banco de dados
CREATE DATABASE cadastro;


-- Mostra os bancos de dados
SHOW DATABASES;


-- Seleciona um banco de dados para uso
USE cadastro;


-- Cria uma tabela
CREATE TABLE pessoas (
    nome varchar(30),
    idade tinyint(3),
    sexo varchar(1),
    peso float,
    altura float,
    nascionalidade varchar(20)
);


-- Mostra as tabelas
SHOW TABLES;

Descreve a tabela
DESCRIBE pessoas;


STATUS;