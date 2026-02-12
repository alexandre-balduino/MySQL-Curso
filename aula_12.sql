-- 
SELECT * FROM cursos
WHERE nome LIKE 'P%';


-- 
SELECT *
FROM cursos 
WHERE nome LIKE '%a';


-- 
SELECT *
FROM cursos 
WHERE nome LIKE '%a%';


-- 
SELECT *
FROM cursos 
WHERE nome NOT LIKE '%a%';


-- 
SELECT *
FROM cursos 
WHERE nome LIKE 'ph%p';


-- 
SELECT *
FROM cursos 
WHERE nome LIKE 'p__t%';


-- 
SELECT DISTINCT carga 
FROM cursos
ORDER BY nascionalidade;


-- 
SELECT COUNT(*)
FROM cursos;


-- 
SELECT COUNT(*)
FROM cursos
WHERE carga > 30;


-- 
SELECT COUNT(nome)
FROM cursos;


-- 
SELECT MAX(carga)
FROM cursos;


-- 
SELECT MAX( total_horas )
FROM cursos
WHERE ano = 2016;


-- 
SELECT MIN( total_horas )
FROM cursos;


-- 
SELECT MIN( total_horas )
FROM cursos
WHERE ano = 2016;


-- 
SELECT nome, MIN( total_horas )
FROM cursos
WHERE ano = 2016;


-- 
SELECT SUM( total_horas )
FROM cursos;


-- 
SELECT AVG( total_horas )
FROM cursos;