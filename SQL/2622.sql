--- Beecrowd Problem 2622 - Pessoas Jurídicas ---

--- Tabela ---
CREATE TABLE customers (
  id numeric PRIMARY KEY,
  name varchar(255),
  street varchar(255),
  city varchar(255),
  state char(2),
  credit_limit numeric
);

--- Tabela ---
CREATE TABLE legal_person (
  id_customers numeric REFERENCES customers (id),
  cnpj char (18),
  contact varchar(255)
);

--- Dados ---
INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
  (1,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
  (2,	'Cecília Olivia Rodrigues',	'Rua Sizuka Usuy',	'Cianorte',	'PR',	3170),
  (3,	'Augusto Fernando Carlos Eduardo Cardoso',	'Rua Baldomiro Koerich',	'Palhoça',	'SC',	1067),
  (4,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
  (5,	'Sabrina Heloisa Gabriela Barros',	'Rua Engenheiro Tito Marques Fernandes',	'Porto Alegre',	'RS',	4312),
  (6,	'Joaquim Diego Lorenzo Araújo',	'Rua Vitorino',	'Novo Hamburgo',	'RS',	2314);

--- Dados ---
INSERT INTO legal_person (id_customers, cnpj, contact)
VALUES
  (4,	'85883842000191',	'99767-0562'),
  (5,	'47773848000117',	'99100-8965');
  

/*  Execute this query to drop the tables */
-- DROP TABLE legal_person, customers; -- 

--- Resolução ---
select 
	name
from customers
where id in(select id_customers from legal_person);