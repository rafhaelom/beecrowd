/*--- Beecrowd Problem  2604 - Menores que 10 ou Maiores que 100 ---*/

/*--- Tabela ---*/
proc sql;
CREATE TABLE products (
  id num PRIMARY KEY,
  name char(255),
  amount num,
  price num
);
quit;

/*--- Dados ---*/
proc sql;
INSERT INTO products (id, name, amount, price)
VALUES (1,	'Two-door wardrobe',	100,	80)
VALUES (2,	'Dining table',	1000,	560)
VALUES (3,	'Towel holder',	10000,	5.50)
VALUES (4,	'Computer desk',	350,	100)
VALUES (5,	'Chair',	3000,	210.64)
VALUES (6,	'Single bed',	750,	99);
quit;
  
/*  Execute this query to drop the tables */
/*-- DROP TABLE products; --*/

/*--- Resolução ---*/
proc sql;
select 
	id,
	name
from products
where price < 10 or price > 100;
quit;