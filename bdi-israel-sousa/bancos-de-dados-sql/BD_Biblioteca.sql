CREATE DATABASE Biblioteca;

USE Biblioteca;

CREATE TABLE Livros (
    idLivro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50),
    autor VARCHAR(50),
    anoPublicacao YEAR NOT NULL,
    genero VARCHAR(25) NOT NULL   
);

CREATE TABLE Usuarios (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(40) NOT NULL,
    dataNascimento DATE
);

INSERT INTO Livros (titulo, autor, anoPublicacao, genero) VALUES 
('A paciente silenciosa', 'Alex Michaelides', 2019, 'Thriller Psicológico'),
('Bíbia', NULL, 0, 'História'),
('Orgulho e Preconceito', 'Jane Austen', 1813, 'Romance'),
('Murder on the Orient Express', 'Agatha Christie', 1934, 'Ficção policial'),
('Guerra Civil', 'Mark Millar', 2006, 'História em Quadrinhos');

INSERT INTO Usuarios (nome, email, dataNascimento) VALUES
('Israel Efraim', 'zezeu107@gmail.com', '2008-09-03'),
('Luis Dantas', 'luis.dantas9@etec.org.br', '2008-12-29'),
('Pedro Henrique', 'xaolinmatadordeporco@gmail.com', '2009-01-20'),
('Gustavo Máscio', 'maciofofo@gmail.com', '2009-06-14'),
('Rúbens Dias', 'rubens.dias@etec.org.br', '2008-11-30');

SELECT * FROM Livros 
WHERE anoPublicacao > 1900;

SELECT nome, email FROM Usuarios 
WHERE nome LIKE '%is%' AND email LIKE '%gmail.com';

UPDATE Livros 
SET genero = 'Suspense' 
WHERE genero = 'Thriller Psicológico';

UPDATE Usuarios 
SET nome = 'Gabriel Lima', email = 'gabrielima007@gmail.com', dataNascimento = '2007-07-07' 
WHERE idUsuario = 3;

DELETE FROM Livros 
WHERE autor != 'Alex Michaelides';

DELETE FROM Usuarios 
WHERE dataNascimento > '2009-01-01';
