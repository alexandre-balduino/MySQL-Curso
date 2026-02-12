INSERT INTO cursos VALUES
(1, 'HTML4', 'Curso de HTML5', 40, 37, '2004'),
(2, 'Algoritmos', 'Lógica de Programação', 20, 15, '2014'),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, '2014'),
(4, 'PGP', 'Curso de PHP para iniciantes', 40, 20, '2010'),
(5, 'Jarva', 'Introdução à Linguagem Java', 10, 29, '2000'),
(6, 'MySQL', 'Banco de Dados MySQL', 30, 15, '2016'),
(7, 'Word', 'Curso completo de Word', 40, 30, '2016'),
(8, 'Sapateado', 'Danças Rítimicas', 40, 30, '2018'),
(9, 'Cozinha Árabe', 'Aprenda a fazer Kibe', 40, 30, '2018'),
(10, 'Youtuber', 'Gerar polêmica e ganhar inscritos', 5, 2, '2018');


-- Comando UPDATE modifica uma ou mais linhas

-- muda o nome para HTML5
UPDATE cursos
SET nome = 'HTML5'
WHERE id_curso = 1;

-- muda nome e ano
UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE id_cursos = 4;

-- muda nome, carga e ano
UPDATE cursos
SET nome = 'Java', carga = 40, ano = '2015'
WHERE id_curso = 5
LIMIT 1;


-- Comando DELETE apaga uma linha

-- apaga o curso de sapateado
DELETE FROM cursos
WHERE id_curso = 8;

-- apaga os registros com ano 2018
DELETE FROM cursos
WHERE ano = '2018'
LIMIT 2;


-- o comando TRUNCATE apaga todos os registros de uma tabela
TRUNCATE TABLE cursos
-- ou simplesmente
TRUNCATE cursos