/*--- Beecrowd Problem 2603 - Endereço dos Clientes ---*/

/*--- Tabela ---*/
proc sql;
CREATE TABLE customers (
  id NUMERIC PRIMARY KEY,
  name char(255),
  street char(255),
  city char(255),
  state char(2),
  credit_limit num
);
quit;

/*--- Dados ---*/
proc sql;
INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES (1,	'Pedro Augusto da Rocha',	'Rua Pedro Carlos Hoffman',	'Porto Alegre',	'RS',	700.00)
VALUES (2,	'Antonio Carlos Mamel',	'Av. Pinheiros',	'Belo Horizonte',	'MG',	3500.50)
VALUES (3,	'Luiza Augusta Mhor,',	'Rua Salto Grande',	'Niteroi',	'RJ',	4000.00)
VALUES (4,	'Jane Ester',	'Av 7 de setembro',	'Erechim',	'RS',	800.00)
VALUES (5,	'Marcos Antônio dos Santos',	'Av Farrapos',	'Porto Alegre',	'RS',	4250.25);
quit;
  
/*  Execute this query to drop the tables */
/*-- DROP TABLE customers; --*/
 
/*--- Resolução ---*/
proc sql;
select 
	name,
	street
from customers
where city = 'Porto Alegre';
quit;