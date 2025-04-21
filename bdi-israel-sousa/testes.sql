CREATE TABLE Produtos (
    ID_Produto INT PRIMARY KEY,
    Nome_Produto VARCHAR(255),
    ID_Categoria INT,
    Marca_Produto VARCHAR(255),
    Num_Serie VARCHAR(255),
    Preco_Unit DECIMAL(10, 2),
    Custo_Unit DECIMAL(10, 2)
);

INSERT INTO Produtos (ID_Produto, Nome_Produto, ID_Categoria, Marca_Produto, Num_Serie, Preco_Unit, Custo_Unit)
VALUES
(1, 'Monitor LED 19,5" Full HD HDMI', 1, NULL, 'MNT-DL-831923', 2300, 966),
(2, 'Monitor Curvo 24" 144Hz HDMI', 1, 'SAMSUNG', 'MNT-SS-001939', 2800, 980),
(3, 'Webcam Full HD 1080p', 2, NULL, 'WBC-LT-943464', 350, 120),
(4, 'Kit Teclado + Mouse sem fio Wireless', 2, 'DELL', 'KTL-DL-041039', 340, 129.5),
(5, 'Kit Teclado + Mouse Slim Bluetooth', 2, 'DELL', 'KTM-DL-119142', 450, 140),
(6, 'Cadeira Gamer reclinável Azul/Laranja', 3, 'ALTURA', 'CGM-AL-014197', 1200, 395),
(7, 'Cadeira Gamer PC Racer Vermelha', 3, 'ALTURA', 'CGM-AL-014197', 1100, 375),
(8, 'Headphone Bluetooth 2000', 4, 'SONY', 'HDP-SY-2000', 800, 258),
(9, 'Fone de Ouvido Tune T5000', 4, 'JBL', 'HDP-JB-991439', 780, 327.6),
(10, 'Microfone Condensador MC1000', 5, 'AKG', 'MIC-AK-1000', 700, 300),
(11, 'Microfone Condensador com Tripé', 5, 'BLUE', 'MIC-BL-431145', 650, 214.5),
(12, 'Microfone de mesa com fio condensador', 5, 'BLUE', 'MIC-BL-871194', 550, 314.4),
(13, 'Notebook LC2100 Intel Core i5 8GB', 6, 'SAMSUNG', 'NOT-SS-547821', 4100, 1670),
(14, 'Notebook Inspiron 15 5000 4GB', 6, 'DELL', 'NOT-DL-000112', 3500, 1500),
(15, 'Notebook IdeaPad Rf32000', 6, 'DELL', 'NOT-CL-77164f', 4200, 1176);

SHOW TABLES;

SELECT * FROM Produtos;

SELECT DISTINCT Marca_Produto FROM Produtos;

SELECT Nome_Produto, Preco_Unit FROM Produtos 
ORDER BY Preco_Unit DESC
LIMIT 3;

SELECT * FROM Produtos 
WHERE Marca_Produto IN ('DELL', 'SAMSUNG', 'JBL');

SELECT 
  COUNT(*) 
FROM Produtos;

SELECT 
  COUNT(Marca_Produto) 
FROM Produtos;

SELECT * FROM Produtos
WHERE Marca_Produto IS NULL;

SELECT 
  MAX(Preco_Unit),
  MIN(Preco_Unit)
FROM Produtos;

SELECT Marca_Produto, COUNT(*) 
FROM Produtos
GROUP BY marca_produto;

SELECT Marca_Produto, COUNT(*)
FROM Produtos
GROUP BY Marca_Produto
ORDER BY COUNT(*) DESC;

SELECT Marca_Produto, SUM(Preco_Unit)
FROM Produtos
GROUP BY marca_produto
ORDER BY SUM(Preco_Unit) DESC;
