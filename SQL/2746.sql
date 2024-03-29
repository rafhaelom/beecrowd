---- Beecrowd Problem 2746 - Virus ---

CREATE TABLE virus (
  id INTEGER,
  name VARCHAR(255)
);


INSERT INTO virus(id, name)
VALUES 
      (1, 'H1RT'),
      (2, 'H7H1'),
      (3, 'HUN8'),
      (4, 'XH1HX'),
      (5, 'XXXX');

  
  /*  Execute this query to drop the tables */
  -- DROP TABLE virus; --

--- Resolução ---
select 
	replace(name, 'H1', 'X') as name
from virus;