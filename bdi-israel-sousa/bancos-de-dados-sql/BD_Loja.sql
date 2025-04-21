CREATE DATABASE Loja;

USE LOJA;

CREATE TABLE Produtos (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(7,2) NOT NULL,
    quantidadeEstoque INT NOT NULL DEFAULT 0
);

CREATE TABLE Clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    telefone VARCHAR(15) UNIQUE,
    CHECK (email LIKE '%@%')
);

INSERT INTO Produtos (nome, preco, quantidadeEstoque) VALUES
('Notebook Predator Helios Neo', 11599.07, 29),
('Notebook Acer Aspire 5', 2399, 139),
('Notebook Samsung Galaxy Book4', 3239.10, 12),
('Notebook Acer Nitro V15', 4799.99, DEFAULT),
('Notebook Asus Vivobook', 2007.98, 73);

INSERT INTO Clientes (nome, email, telefone) VALUES 
('Israel Efraim', 'israell.efraim@gmail.com', '13 99697-8649'),
('Gustavo Máscio', 'macio000@gmail.com', NULL),
('Pedro Henrique', 'xaolinmatadordeporco@hotmail.com', '11 99873-0302'),
('Luis Dantas', 'luis.dantas@gmail.com', NULL),
('David Efraim', 'bakcupdavidefraim@outlook.com', '13 99132-7777');

SELECT nome, preco FROM Produtos 
WHERE quantidadeEstoque = 0;

SELECT * FROM Clientes 
WHERE telefone LIKE '13%';

UPDATE Produtos 
SET quantidadeEstoque = 200 
WHERE quantidadeEstoque BETWEEN 0 AND 30;

UPDATE Clientes 
SET email = 'pedrolopes@gmail.com' 
WHERE nome = 'Pedro Henrique';

DELETE FROM Produtos 
WHERE nome LIKE '%acer%';

DELETE FROM Clientes 
WHERE telefone IS NULL;