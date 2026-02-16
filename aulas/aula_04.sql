-- Exclui um banco de dados
DROP DATABASE cadastro;


-- Cria um banco de dados
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;


-- Cria uma tabela 
CREATE TABLE pessoas (
    id int NOT NULL AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    nascimento date,
    sexo enum("M", "F"),
    peso decimal(5,2),
    altura decimal(3,2),
    nascionalidade varchar(20) DEFAUL "Brasil",
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;