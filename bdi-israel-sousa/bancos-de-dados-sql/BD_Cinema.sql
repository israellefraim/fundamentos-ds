CREATE DATABASE Cinema; 

USE Cinema;

CREATE TABLE Filmes (
    idFilme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    duracao INT NOT NULL,
    genero VARCHAR (30) NOT NULL,
    classificacao VARCHAR(5) NOT NULL
);

CREATE TABLE Sessoes (
    idSessao INT AUTO_INCREMENT PRIMARY KEY,
    idFilme INT NOT NULL,
    FOREIGN KEY (idFilme) REFERENCES Filmes (idFilme),
    dataSessao DATE NOT NULL,
    horaSessao TIME NOT NULL,
    sala VARCHAR(3)
);

INSERT INTO Filmes (titulo, duracao, genero, classificacao) VALUES
('Batman: O Cavaleiro das Trevas', 152, 'Ação Suspense', '12'),
('Sexto Sentido', 107, 'Thriller Psicológico', '14'),
('O Silêncio dos Inocentes', 118, 'Thriller Psicológico', '14'),
('Exterminador do Futuro', 107, 'Ficção Científica', '14'),
('Sociedade dos Poetas Mortos', 128, 'Drama', '12');

INSERT INTO Sessoes (idFilme, dataSessao, horaSessao, sala) VALUES
(1, '2008-07-18', '21:15:00', 'A8'),
(2, '1999-10-22', '19:00:00', 'C9'),
(3, '1991-02-14', '20:30:00', 'B1'),  
(4, '1984-10-26', '16:45:00', 'C9'),
(5, '1989-02-02', '14:00:00', 'B6');

SELECT DISTINCT genero FROM Filmes 
WHERE classificacao = '14';

SELECT * FROM Sessoes 
WHERE sala LIKE 'b_';

UPDATE Filmes 
SET genero = 'Suspense' 
WHERE genero = 'Thriller Psicológico';

UPDATE Sessoes 
SET sala = 'C8' 
WHERE sala = 'C9';

DELETE FROM Filmes 
WHERE genero = 'Drama';

DELETE FROM Sessoes 
WHERE sala LIKE 'a_';