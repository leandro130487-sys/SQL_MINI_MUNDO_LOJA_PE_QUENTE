---Atualizar preço de um produto
UPDATE Produto
SET Preco_Unitario = 419.99
WHERE Nome_Produto = 'Tênis Nike Air';

---Atualizar telefone de um cliente
UPDATE Cliente
SET Telefone = '(31) 95555-3333'
WHERE Nome_Cliente = 'João Silva';

---Reajuste no estoque
UPDATE Estoque
SET Quantidade_Disponivel = Quantidade_Disponivel - 1
WHERE ID_Produto = 1;

---Delete
---Excluir cliente que nunca fez venda
DELETE FROM Cliente
WHERE ID_Cliente NOT IN (SELECT ID_Cliente FROM Venda);

---Excluir forma de pagamento sem vendas associadas
DELETE FROM FormaPagamento
WHERE ID_FormaPagamento NOT IN (SELECT ID_FormaPagamento FROM Venda);

---Excluir produto sem itens de venda
DELETE FROM Produto
WHERE ID_Produto NOT IN (SELECT ID_Produto FROM ItemVenda);