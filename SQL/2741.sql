---- Beecrowd Problem 2741 - Notas dos Alunos ---

CREATE TABLE students(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  grade NUMERIC
);


INSERT INTO students(id, name, grade)
VALUES (1, 'Terry B. Padilla',7.3),
       (2, 'William S. Ray',0.6),
       (3, 'Barbara A. Gongora',5.2),
       (4, 'Julie B. Manzer', 6.7),
       (5, 'Teresa J. Axtell', 4.6),
       (6, 'Ben M. Dantzler', 9.6);

  
  /*  Execute this query to drop the tables */
  -- DROP TABLE students; --

--- Resolução ---
select
	'Approved: ' || name as name,
	grade
from students 
where grade >= 7 
order by grade desc;