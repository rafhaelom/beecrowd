--- Beecrowd Problem 2609 - Produtos por Categorias ---

--- Tabela ---
CREATE TABLE categories (
  id numeric PRIMARY KEY,
  name varchar
);

--- Tabela ---
CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar(50),
  amount numeric,
  price numeric(7,2),
  id_categories numeric REFERENCES categories (id)
);

--- Dados ---
INSERT INTO categories (id, name)
VALUES 
  (1,	'wood'),
  (2,	'luxury'),
  (3,	'vintage'),
  (4,	'modern'),
  (5,	'super luxury');

--- Dados ---
INSERT INTO products (id, name, amount, price, id_categories)
VALUES 
  (1,	'Two-doors wardrobe', 100,	800,	1),
  (2,	'Dining table',	1000,	560,	3),
  (3,	'Towel holder',	10000,	25.50,	4),
  (4,	'Computer desk',	350,	320.50,	2),
  (5,	'Chair',	3000,	210.64,	4),
  (6,	'Single bed',	750,	460,	1);
  
/*  Execute this query to drop the tables */
-- DROP TABLE categories,products; --

--- Resolução ---
select 
	b.name,
	sum(a.amount)
from products a
left join categories b
	on(a.id_categories = b.id)
group by b.name
order by b.name;