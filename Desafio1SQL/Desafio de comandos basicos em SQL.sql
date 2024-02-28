
-- Desafio 1 - nomes de cidade distintas que existem no estado de 
-- Minas Gerais em ordem alfabética!!

select distinct city
from sales.customers
where state = 'MG'
order by city

-- Desafio 2 - Selecione o visit_id das 10 compras mais recentes efetuadas
select visit_id
from sales.funnel
where paid_date is not null
order by paid_date desc
limit 10

-- Desafio 3 - Selecione todos os dados dos 10 clientes com maior score nascidos
-- após 01/01/2000

select *
from sales.customers 
where birth_date > '2000-01-01'
order by score desc
limit 10













