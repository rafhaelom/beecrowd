--- Beecrowd Problem 2623 - Categorias com Vários Produtos ---

--- Tabela ---
CREATE TABLE categories (
  id numeric PRIMARY KEY,
  name varchar(255)
);

--- Tabela ---
CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar (255),
  amount numeric,
  price numeric,
  id_categories numeric REFERENCES categories (id)
);

--- Dados ---
INSERT INTO categories (id, name)
VALUES
  (1,	'Superior'),
  (2,	'Super Luxury'),
  (3,	'Modern'),
  (4,	'Nerd'),
  (5,	'Infantile'),
  (6,	'Robust'),
  (9,	'Wood');

--- Dados ---
INSERT INTO products (id, name, amount, price, id_categories)
VALUES
  (1,	'Blue Chair',	30, 300.00,	9),
  (2,	'Red Chair',	200,	2150.00, 2),
  (3,	'Disney Wardrobe',	400,	829.50,	4),
  (4,	'Blue Toaster',	20,	9.90,	3),
  (5,	'Solar Panel',	30,	3000.25,	4);


/*  Execute this query to drop the tables */
-- DROP TABLE products, categories; --

--- Resolução ---
select 
	a.name,
	b.name
from products a
left join categories b
	on (a.id_categories = b.id)
where amount > 100 and id_categories in(1, 2, 3, 6, 9)
order by id_categories asc;