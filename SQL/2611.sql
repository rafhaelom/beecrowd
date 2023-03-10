--- Beecrowd Problem 2611 - Filmes de Ação ---

--- Tabela ---
CREATE TABLE genres (
  id numeric PRIMARY KEY,
  description varchar(50)
);

--- Tabela ---
CREATE TABLE movies (
  id numeric PRIMARY KEY,
  name varchar(50),
  id_genres numeric REFERENCES genres (id)
);

--- Dados ---
INSERT INTO genres (id, description)
VALUES
  (1,	'Animation'),
  (2,	'Horror'),
  (3,	'Action'),
  (4,	'Drama'),
  (5,	'Comedy');
  
--- Dados ---
INSERT INTO movies (id, name, id_genres)
VALUES
  (1,	'Batman',	3),
  (2,	'The Battle of the Dark River',	3),
  (3,	'White Duck',	1),
  (4,	'Breaking Barriers',	4),
  (5,	'The Two Hours',	2);

/*  Execute this query to drop the tables */
-- DROP TABLE movies, genres; --

--- Resolução ---
select 
	id,
	name
from movies
where id_genres in(select id from genres where description = 'Action');