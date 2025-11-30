---Insert---
INSERT INTO Categoria (Nome_Categoria) VALUES
('Tênis'), ('Chinelos'), ('Botas'), ('Sandálias');



INSERT INTO Fornecedor (Nome_Fornecedor, CNPJ, Telefone, Email) VALUES
('Calçados Brasil', '12.345.678/0001-90', '(31) 99887-1111', 'contato@calcadosbr.com'),
('Mega Shoes', '98.765.432/0001-11', '(31) 98877-2222', 'vendas@megashoes.com');



INSERT INTO Produto (Nome_Produto, Preco_Unitario, Estoque_Atual, ID_Categoria, ID_Fornecedor) VALUES
('Tênis Nike Air', 399.99, 20, 1, 1),
('Chinelo Havaianas', 29.90, 50, 2, 2),
('Bota Couro Premium', 499.90, 10, 3, 1);



INSERT INTO Cliente (Nome_Cliente, CPF, Telefone, Email) VALUES
('João Silva', '123.456.789-00', '(31) 91111-2222', 'joao@gmail.com'),
('Maria Oliveira', '987.654.321-00', '(31) 92222-3333', 'maria@gmail.com');



INSERT INTO Usuario (Nome_Usuario, Cargo, Login, Senha) VALUES
('Carlos Santos', 'Vendedor', 'carlos', '12345'),
('Ana Paula', 'Gerente', 'ana', 'admin123');



INSERT INTO FormaPagamento (Tipo_Pagamento) VALUES
('Pix'), ('Dinheiro'), ('Cartão');



INSERT INTO Venda (Data_Venda, Valor_Total, ID_Cliente, ID_Usuario, ID_FormaPagamento) VALUES
('2025-02-20', 399.99, 1, 1, 1),
('2025-02-21', 29.90, 2, 1, 2);



INSERT INTO ItemVenda (Quantidade, Valor_Unitario, ID_Produto, ID_Venda) VALUES
(1, 399.99, 1, 1),
(1, 29.90, 2, 2);



INSERT INTO Estoque (ID_Produto, Quantidade_Disponivel, Data_Atualizacao) VALUES
(1, 20, DATE('now')),
(2, 50, DATE('now')),
(3, 10, DATE('now'));
