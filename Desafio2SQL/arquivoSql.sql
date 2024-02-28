-- Desafio 1, Calcule quantos salários mínimos ganha cada cliente da tabela
SELECT 
	email,
	income,
(income)/1200 as "Salário mínimo"
from sales.customers

-- Desafio 2, Na query anterior acrescente uma coluna informando TRUE se o cliente
-- ganha acima de 5 salários mínimos e FALSE se ganha 4 salários ou menos.

SELECT 
	email,
	income as "Salário",
(income)/1200 as "Salário mínimo",
((income) / 1200) > 4 as "Acima de 4 sálarios mínimos"
from sales.customers

-- Desafio 3,  Na query anterior filtre apenas os clientes que ganham entre
-- 4 e 5 salários mínimos.

SELECT 
	email,
	income as "Salário",
(income)/1200 as "Salário mínimo",
((income) / 1200) > 4 as "Acima de 4 sálarios mínimos"
from sales.customers
Where ((income) /1200) between 4 and 5

-- Desafio 4, Selecine o email, cidade e estado dos clientes que moram no estado de 
-- Minas Gerais e Mato Grosso.

select email, city, state
from sales.customers
where state in ('MT', 'MG')

-- Desafio 5, Selecine o email, cidade e estado dos clientes que não 
-- moram no estado de São Paulo.

select email, city, state
from sales.customers
where state not in ('SP')

-- Desafio 6, Selecine os nomes das cidade que começam com a letra Z.
-- Dados da tabela temp_table.regions

select city 
from temp_tables.regions
where city ilike 'z%'











