---produto+ preço+ categoria

SELECT 
    p.Nome_Produto, 
    p.Preco_Unitario, 
    c.Nome_Categoria
FROM Produto p
JOIN Categoria c 
    ON p.ID_Categoria = c.ID_Categoria;
    
---Listar vendas com nomes de cliente e vendedor
SELECT v.ID_Venda, v.Data_Venda, v.Valor_Total,
       cli.Nome_Cliente, u.Nome_Usuario
FROM Venda v
JOIN Cliente cli ON v.ID_Cliente = cli.ID_Cliente
JOIN Usuario u ON v.ID_Usuario = u.ID_Usuario
ORDER BY v.Data_Venda DESC;

---Produtos com estoque abaixo de 15 unidades
SELECT Nome_Produto, Estoque_Atual
FROM Produto
WHERE Estoque_Atual < 15;

---Clientes ordenados alfabeticamente
SELECT Nome_Cliente, CPF
FROM Cliente
ORDER BY Nome_Cliente ASC;

---Itens de venda detalhados
SELECT iv.ID_ItemVenda, p.Nome_Produto, iv.Quantidade, iv.Valor_Unitario
FROM ItemVenda iv
JOIN Produto p ON iv.ID_Produto = p.ID_Produto;
