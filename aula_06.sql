-- Comando ALTER TABLE `nome_da_tabela` altera uma tabela


-- Adiciona uma coluna chamada profissao
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);


-- Exclui a coluna profissao
ALTER TABLE pessoas
DROP COLUMN profissao;


-- Adiciona uma coluna chamada profissao depois da coluna nome
ALTER TABLE pessoas
ADD COLUMN profissao AFTER nome;


-- Adiciona uma coluna chamada pessoas antes de todas as outras
ALTER TABLE pessoas
ADD COLUMN codigo int FIRST;


-- Altera o tamanho da coluna profissao
ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20);


-- Altera o nome de uma coluna
ALTER TABLE pessoas
CHANGE COLUMN profissao prof varchar(20);


-- Renonear uma tabela
ALTER TABLE pessoas
RENAME TO gafanhotos;



-- Criar uma tabela
CREATE TABLE IF NOT EXISTS cursos (
    nome varchar(30) NOT NULL UNIQUE,
    descricao text,
    carga int UNSIGNED,
    total_horas int,
    ano year DEFAULT '2026'
) DEFAULT CHARSET = utf8; 


-- Criar uma tabela
CTEATE TABLE IF NOT EXISTS teste (
id int,
nome varchar(30)
);


-- Apagar uma tabela
DROP TABLE teste;