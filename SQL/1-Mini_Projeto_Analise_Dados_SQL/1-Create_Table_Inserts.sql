
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);


CREATE TABLE Pedidos (
    ID_Pedido INT PRIMARY KEY,
    ID_Cliente INT,
    Data_Pedido DATE,
    Valor_Total DECIMAL(10, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);


CREATE TABLE Itens_Pedido (
    ID_Item INT PRIMARY KEY,
    ID_Pedido INT,
    Produto VARCHAR(100),
    Quantidade INT,
    Preco_Unitario DECIMAL(10, 2),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido)
);


INSERT INTO Clientes (ID_Cliente, Nome, Email)
VALUES
    (1, 'João', 'joao@gmail.com'),
    (2, 'Maria', 'maria@gmail.com'),
	(3, 'Ana', 'ana@gmail.com'),
    (4, 'Carlos', 'carlos@gmail.com'),
    (5, 'Mariana', 'mariana@gmail.com'),
	(6, 'Rafael', 'rafael@gmail.com'),
    (7, 'Juliana', 'juliana@gmail.com'),
    (8, 'Pedro', 'pedro@gmail.com'),
    (9, 'Fernanda', 'fernanda@gmail.com'),
    (10, 'Gabriel', 'gabriel@gmail.com'),
    (11, 'Patrícia', 'patricia@gmail.com'),
    (12, 'Lucas', 'lucas@gmail.com'),
    (13, 'Camila', 'camila@gmail.com'),
    (14, 'Ricardo', 'ricardo@gmail.com'),
    (15, 'Amanda', 'amanda@gmail.com'),
    (16, 'Paulo', 'paulo@gmail.com'),
    (17, 'Carolina', 'carolina@gmail.com'),
    (18, 'Gustavo', 'gustavo@gmail.com'),
    (19, 'Isabela', 'isabela@gmail.com'),
    (20, 'Fábio', 'fabio@gmail.com');

INSERT INTO Pedidos (ID_Pedido, ID_Cliente, Data_Pedido, Valor_Total)
VALUES
    (1, 1, '2023-01-01', 150),
    (2, 2, '2023-01-02', 200),
	(3, 3, '2023-01-05', 120),
    (4, 4, '2023-01-08', 300),
    (5, 5, '2023-01-10', 180),
	(6, 1, '2023-01-15', 220),
    (7, 1, '2023-01-18', 180),
    (8, 8, '2023-01-20', 350),
    (9, 9, '2023-01-22', 280),
    (10, 10, '2023-01-25', 420),
    (11, 11, '2023-01-28', 195),
    (12, 12, '2023-02-02', 260),
    (13, 13, '2023-02-05', 310),
    (14, 5, '2023-02-08', 290),
    (15, 15, '2023-02-10', 185),
    (16, 16, '2023-02-15', 270),
    (17, 17, '2023-02-18', 330),
    (18, 5, '2023-02-20', 240),
    (19, 19, '2023-02-22', 200),
    (20, 20, '2023-02-25', 400);


INSERT INTO Itens_Pedido (ID_Item, ID_Pedido, Produto, Quantidade, Preco_Unitario)
VALUES
    (1, 1, 'Mouse', 2, 50),
    (2, 2, 'Teclado', 1, 50),
    (3, 2, 'Monitor', 1, 300),
	(4, 3, 'Cadeira', 2, 60),
    (5, 3, 'Mesa', 1, 100),
    (6, 4, 'Impressora', 1, 200),
    (7, 4, 'Teclado', 1, 50),
    (8, 5, 'Pen-Drive', 2, 30),
    (9, 5, 'Placa-De-Video', 1, 600),
	(10, 6, 'Mouse-Pad', 1, 30),
    (11, 7, 'Cadeira-Gamer', 1, 1500),
    (12, 7, 'Cadeira', 1, 90),
    (13, 7, 'Luminária', 1, 40);
    
    

    