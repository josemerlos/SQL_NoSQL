
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