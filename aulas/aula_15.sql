-- Chave Estrangeira

ALTER TABLE gafanhotos 
ADD COLUMN cursopreferido INT; 

ALTER TABLE cursos 
ADD PRIMARY KEY (idcurso);

ALTER TABLE gafanhotos 
ADD FOREIGN KEY
REFERENCES cursos(idcurso);

-- JOIN 
-- INNER JOIN é o padrão então se eu executar apenas JOIN o MySQL/MariaDB vai considerar como se eu tivesse digitado INNER JOIN

SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome
FROM gafanhotos 
INNER JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido;

SELECT gafanhotos.nome, cursos.nome
FROM gafanhotos 
INNER JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido;

SELECT gafanhotos.nome, cursos.nome, cursos.ano
FROM gafanhotos 
INNER JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido;

SELECT gafanhotos.nome, cursos.nome, cursos.ano
FROM gafanhotos 
INNER JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido;
ORDER BY gafanhotos.nome

SELECT g.nome, c.nome, c.ano
FROM gafanhotos as g
INNER JOIN cursos as c
ON c.idcurso = g.cursopreferido;
ORDER BY g.nome

SELECT g.nome, c.nome, c.ano
FROM gafanhotos as g
LEFT OUTER JOIN cursos as c
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

SELECT g.nome, c.nome, c.ano
FROM gafanhotos as g
RIGHT OUTER JOIN cursos as c
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

