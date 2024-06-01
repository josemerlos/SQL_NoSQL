-- EXERCÍCIOS ######################################################################

-- (Exercício 1) Selecione os nomes de cidade distintas que existem no estado de
-- Minas Gerais em ordem alfabética (dados da tabela sales.customers)

select distinct city from sales.customers where state = 'MG' order by city


-- (Exercício 2) Selecione o visit_id das 10 compras mais recentes efetuadas
-- (dados da tabela sales.funnel)

SELECT ViSIT_ID,PAID_DATE FROM SALES.FUNNEL WHERE PAID_DATE IS NOT NULL ORDER BY PAID_DATE DESC

-- (Exercício 3) Selecione todos os dados dos 10 clientes com maior score nascidos
-- após 01/01/2000 (dados da tabela sales.customers)


select * from sales.customers where BIRTH_DATE >= '2000-01-01'  order by SCORE DESC