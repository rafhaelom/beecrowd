---- Beecrowd Problem 2743 - Quantidade de Caracteres ---

--- Tabela ---
CREATE TABLE people(
	id INTEGER PRIMARY KEY,
	name varchar(255)
);

--- Dados ---
INSERT INTO people(id, name)
VALUES 
      (1, 'Karen'),
      (2, 'Manuel'),
      (3, 'Ygor'),
      (4, 'Valentine'),
      (5, 'Jo');

  
/*  Execute this query to drop the tables */
-- DROP TABLE people; --

--- Resolução ---
select
	name,
	length(name) as length
from people
order by length desc;