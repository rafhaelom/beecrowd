---- Beecrowd Problem 2745 - Taxas ---

CREATE TABLE people (
  id INTEGER PRIMARY KEY,
  name CHARACTER VARYING (255),
  salary NUMERIC
);


INSERT INTO people(id, name, salary)
VALUES 
      (1, 'James M. Tabarez', 883),
      (2, 'Rafael T. Hendon', 4281),
      (3, 'Linda J. Gardner', 4437),
      (4, 'Nicholas J. Conn', 8011),
      (5, 'Karol A. Morales', 2508),
      (6, 'Lolita S. Graves', 8709);

  
  /*  Execute this query to drop the tables */
  -- DROP TABLE people; --

--- Resolução ---
select 
	name,
	round((salary * 0.10), 2) as tax
from people
where salary > 3000;