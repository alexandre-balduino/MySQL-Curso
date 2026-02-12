-- 
SELECT carga 
FROM cursos 
GROUP BY carga;


-- 
SELECT carga, COUNT(nome)
FROM cursos 
GROUP BY carga;


-- 
SELECT carga, COUNT(*)
FROM cursos 
WHERE total_horas > 20
GROUP BY carga;


-- 
SELECT carga, COUNT(*)
FROM cursos 
GROUP BY carga
HAVING COUNT(*) > 3;


-- 
SELECT *
FROM cursos 
GROUP BY ano
ORDER BY COUNT(*);


-- 
SELECT ano, COUNT(*)
FROM cursos 
HAVING COUNT(ano) >= 5
ORDER BY COUNT(*)


-- 
SELECT carga, COUNT(*)
FROM cursos 
WHERE ano > 2015
GROUP BY carga 
HAVING carga > ( SELECT AVG(carga) FROM cursos );
