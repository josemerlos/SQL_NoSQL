
select * from clientes;
select * from pedidos;
select * from itens_pedido;


-- 1 - Selecionar todos os pedidos feitos por um cliente específico:
SELECT c.id_cliente, c.nome, p.ID_Pedido, p.Data_Pedido, p.Valor_Total
FROM Pedidos p
JOIN Clientes c ON p.ID_Cliente = c.ID_Cliente
WHERE c.Nome like '%João%';


-- 2 - Selecionar todos os itens de um pedido específico:
SELECT ip.Produto, ip.Quantidade, ip.Preco_Unitario
FROM Itens_Pedido ip
JOIN Pedidos p ON ip.ID_Pedido = p.ID_Pedido
WHERE p.ID_Pedido = 1;


-- 3 Calcular o valor total de todos os pedidos feitos por um cliente específico:
SELECT SUM(p.Valor_Total) AS Valor_Total_Pedidos
FROM Pedidos p
JOIN Clientes c ON p.ID_Cliente = c.ID_Cliente
WHERE c.Nome = 'Maria';


-- 4 -Calcular o valor médio dos pedidos feitos por cada cliente:
SELECT c.Nome, ROUND(AVG(p.Valor_Total), 2) AS Valor_Medio_Pedidos
FROM Clientes c
JOIN Pedidos p ON c.ID_Cliente = p.ID_Cliente
GROUP BY c.Nome;


-- 5 -Selecionar os clientes que ainda não fizeram nenhum pedido:
SELECT Nome, Email
FROM Clientes
WHERE ID_Cliente NOT IN (SELECT DISTINCT ID_Cliente FROM Pedidos);


-- 6 -Selecionar os detalhes de um pedido, incluindo os itens e quantidades correspondentes:
SELECT p.ID_Pedido, p.Data_Pedido, ip.Produto, ip.Quantidade
FROM Pedidos p
JOIN Itens_Pedido ip ON p.ID_Pedido = ip.ID_Pedido
WHERE p.ID_Pedido = 3;


-- 7 - left join - listar todos os clientes e, se disponível, os detalhes do pedido que cada cliente fez. Se um cliente não tiver feito nenhum pedido, ainda queremos listar o cliente com detalhes de pedido como "Nenhum Pedido"
SELECT c.ID_Cliente, c.Nome, COALESCE(p.ID_Pedido, 'Nenhum Pedido') AS ID_Pedido, COALESCE(p.Data_Pedido, 'N/A') AS Data_Pedido, COALESCE(p.Valor_Total, 'N/A') AS Valor_Total
FROM Clientes c
LEFT JOIN Pedidos p ON c.ID_Cliente = p.ID_Cliente;



-- 8 - right join - Retornar todos os clientes independente se tenha pedidos ou nao
SELECT p.ID_Pedido, p.Data_Pedido, c.Nome  AS Nome_Cliente
FROM Pedidos p
right JOIN Clientes c ON p.ID_Cliente = c.ID_Cliente;



-- 9 - Encontrar o cliente que fez o pedido com o maior valor total. 
SELECT c.Nome AS Cliente, p.ID_Pedido, p.Data_Pedido, p.Valor_Total
FROM Pedidos p
JOIN Clientes c ON p.ID_Cliente = c.ID_Cliente
WHERE p.Valor_Total = (
    SELECT MAX(Valor_Total)
    FROM Pedidos);
    
    
    
 -- 10 - Calcular o número total de pedidos feitos por cada cliente:
SELECT c.ID_Cliente, c.Nome, COUNT(p.ID_Pedido) AS Total_Pedidos
FROM Clientes c
LEFT JOIN Pedidos p ON c.ID_Cliente = p.ID_Cliente
GROUP BY c.ID_Cliente, c.Nome;  
    
    
    




