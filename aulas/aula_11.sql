-- Comando SELECT

-- Use o banco de dados cadastro
USE cadastro;


-- Selecione tudo da tabela cursos, ordenando por nome.
SELECT * FROM cursos
ORDER BY nome;


-- Selecione tudo da tabela cursos, ordenando por nome em ordem decrescente.
SELECT * FROM cursos
ORDER BY nome DESC;

-- Selecione tudo da tabela cursos, ordenando por nome em ordem crescente.
SELECT * FROM cursos
ORDER BY nome ASC;


-- Selecione as colunas nome, carga e ano da tabela cursos ordenando por nome
SELECT nome, carga, ano FROM cursos
ORDER BY nome;


-- Selecione ano, nome e carga da tabela cursos ordenando por nome
SELECT ano, nome, carga FROM cursos
ORDER BY nome;


-- Selecione ano, nome e carga da tabela cursos ordenando por ano
SELECT ano, nome, carga FROM cursos
ORDER BY ano;


-- Selecione ano, nome e carga da tabela cursos ordenando por ano e nome
SELECT ano, nome, carga FROM cursos
ORDER BY ano, nome;


-- Selecione tudo da tabela cursos Onde o ano for igual a 2016 Ordenando por nome
SELECT * FROM cursos
WHERE ano = '2016'
ORDER BY nome;


-- Selecione nome e carga da tabela cursos Onde o ano for igual a 2016 Ordenando por nome
SELECT nome, carga FROM cursos
WHERE ano = '2016'
ORDER BY nome;


-- Selecione nome e descricao da tabela cursos Onde o ano for menor ou igual a 2015 Ordenando por nome
SELECT nome, descricao  FROM cursos 
WHERE ano <= '2015'
ORDER BY nome;


-- Selecione nome e descricao da tabela cursos Onde o ano for menor ou igual a 2015 Ordenando por ano e nome
SELECT nome, descricao  FROM cursos 
WHERE ano <= '2015'
ORDER BY ano, nome;


-- Selecione nome e ano da tabela cursos Onde o ano estiver Entre 2014 E 2016 Ordenando por ano e nome
SELECT nome, ano  FROM cursos 
WHERE ano BETWEEN 2014 AND 2016
ORDER BY ano, nome;


-- Selecione nome e ano da tabela cursoa Onde o ano estiver Entre 2014 E 2016 Ordenando por ano decrescente e nome
SELECT nome, ano  FROM cursos 
WHERE ano BETWEEN 2014 AND 2016
ORDER BY ano DESC, nome;


-- Selecione nome, descrição e ano da tabela cursos Onde ano estiver Em 2014, 2016 e 2020 Ordenando por ano
SELECT nome, descricao, ano FROM cursos
WHERE ano IN(2014, 2016, 2020)
ORDER BY ano;


-- Selecione nome, carga e total_horas da tabela cursos Onde carga for maior que 35 Ou total_horas for maior que 30
SELECT nome, carga, total_horas 
FROM cursos 
WHERE carga > 35 OR total_horas < 30;