--- Beecrowd Problem 2613 - Filmes em Promoção ---

--- Tabela ---
CREATE TABLE prices (
  id numeric PRIMARY KEY,
  categorie varchar(50),
  value numeric
);

--- Tabela ---
CREATE TABLE movies (
  id numeric PRIMARY KEY,
  name varchar(50),
  id_prices numeric REFERENCES prices (id)
);

--- Dados ---
INSERT INTO prices (id , categorie, value)
VALUES
  (1,	'Releases',	3.50),
  (2,	'Bronze Seal',	2.00),
  (3,	'Silver Seal',	2.50),
  (4,	'Gold Seal',	3.00),
  (5,	'Promotion',	1.50);

--- Dados ---
INSERT INTO movies (id, name, id_prices)
VALUES
  (1,	'Batman',	3),
  (2,	'The Battle of the Dark River',	3),
  (3,	'White Duck',	5),
  (4,	'Breaking Barriers',	4),
  (5,	'The Two Hours',	2);
  
/*  Execute this query to drop the tables */
-- DROP TABLE movies, prices; --

--- Resolução 01 ---
select 
	a.id,
	a.name
from movies a
left join prices b 
	on (a.id_prices = b.id)
where b.value < 2;

--- Resolução 02 ---
select 
	id,
	name
from movies
where id_prices in(select id from prices where value < 2);