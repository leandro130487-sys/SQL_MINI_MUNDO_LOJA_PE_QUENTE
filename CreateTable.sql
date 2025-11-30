BEGIN TRANSACTION;


CREATE TABLE Categoria (
    ID_Categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_Categoria TEXT NOT NULL
);

-------TABELA FORNECEDOR-------
CREATE TABLE Fornecedor (
    ID_Fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_Fornecedor TEXT NOT NULL,
    CNPJ TEXT NOT NULL,
    Telefone TEXT,
    Email TEXT
);

-------TABELA PRODUTO------
CREATE TABLE Produto (
    ID_Produto INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_Produto TEXT NOT NULL,
    Preco_Unitario REAL NOT NULL,
    Estoque_Atual INTEGER NOT NULL,
    ID_Categoria INTEGER NOT NULL,
    ID_Fornecedor INTEGER NOT NULL,
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria (ID_Categoria),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor (ID_Fornecedor)
);


-------TABELA CLIENTE------
CREATE TABLE Cliente (
    ID_Cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_Cliente TEXT NOT NULL,
    CPF TEXT NOT NULL,
    Telefone TEXT,
    Email TEXT
);


------TABELA VENDEDOR------
CREATE TABLE Usuario (
    ID_Usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_Usuario TEXT NOT NULL,
    Cargo TEXT NOT NULL,
    Login TEXT NOT NULL UNIQUE,
    Senha TEXT NOT NULL
);

------TABELA FORMA DE PAGAMENTO-------
CREATE TABLE FormaPagamento (
    ID_FormaPagamento INTEGER PRIMARY KEY AUTOINCREMENT,
    Tipo_Pagamento TEXT NOT NULL
);


------TABELA VENDA------
CREATE TABLE Venda (
    ID_Venda INTEGER PRIMARY KEY AUTOINCREMENT,
    Data_Venda TEXT NOT NULL,
    Valor_Total REAL NOT NULL,
    ID_Cliente INTEGER NOT NULL,
    ID_Usuario INTEGER NOT NULL,
    ID_FormaPagamento INTEGER NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente (ID_Cliente),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario (ID_Usuario),
    FOREIGN KEY (ID_FormaPagamento) REFERENCES FormaPagamento (ID_FormaPagamento)
);


-------TABELA ITEN VENDA------
CREATE TABLE ItemVenda (
    ID_ItemVenda INTEGER PRIMARY KEY AUTOINCREMENT,
    Quantidade INTEGER NOT NULL,
    Valor_Unitario REAL NOT NULL,
    ID_Produto INTEGER NOT NULL,
    ID_Venda INTEGER NOT NULL,
    FOREIGN KEY (ID_Produto) REFERENCES Produto (ID_Produto),
    FOREIGN KEY (ID_Venda) REFERENCES Venda (ID_Venda)
);


-------TABELA ESTOQUE-------
CREATE TABLE Estoque (
    ID_Estoque INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Produto INTEGER NOT NULL,
    Quantidade_Disponivel INTEGER NOT NULL,
    Data_Atualizacao TEXT NOT NULL,
    FOREIGN KEY (ID_Produto) REFERENCES Produto (ID_Produto)
);


-------TABELA VENDA-------
CREATE TABLE Venda (
    ID_Venda INTEGER PRIMARY KEY AUTOINCREMENT,
    Data_Venda TEXT NOT NULL,
    Valor_Total REAL NOT NULL,
    ID_Cliente INTEGER NOT NULL,
    ID_Usuario INTEGER NOT NULL,
    ID_FormaPagamento INTEGER NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente (ID_Cliente),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario (ID_Usuario),
    FOREIGN KEY (ID_FormaPagamento) REFERENCES FormaPagamento (ID_FormaPagamento)
);


