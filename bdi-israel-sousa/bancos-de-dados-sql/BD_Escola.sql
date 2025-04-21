CREATE DATABASE Escola;

USE Escola;

CREATE TABLE Alunos (
    idAluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    matricula VARCHAR(50) UNIQUE NOT NULL,
    dataNascimento DATE NOT NULL
);

CREATE TABLE Disciplinas (
    idDisciplinas INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL UNIQUE,
    professor VARCHAR(50) NOT NULL DEFAULT 'Sem Professor',
    cargaHoraria INT NOT NULL
);

INSERT INTO Alunos (nome, matricula, dataNascimento) VALUES
('Israel Efraim', 'ALUN001', '2008-09-03'),
('Shirlene Marcia', 'ALUN002', '1974-03-13'),
('David Efraim', 'ALUN003', '1980-06-02'),
('Davi Estevão', 'ALUN004', '2005-03-28'),
('Gustavo Máscio', 'ALUN005', '2008-08-30');

INSERT INTO Disciplinas (nome, professor, cargaHoraria) VALUES
('Matemática', 'Gepeto', 1),
('Design Digital', 'Raphael', 1),
('História', 'Gabriel', 2),
('Banco de Dados I', DEFAULT, 3),
('Banco de Dados II', 'Henrique', 6);

SELECT * FROM Alunos 
WHERE YEAR(dataNascimento) = 2008;

SELECT nome, professor FROM Disciplinas 
WHERE cargaHoraria >= 2;

UPDATE Alunos SET matricula = '-DESMATRICULADO-' 
WHERE matricula IN ('ALUN002', 'ALUN005');

UPDATE Disciplinas SET professor = 'Luis', cargaHoraria = 4 
WHERE nome LIKE '%Banco de Dados%';

DELETE FROM Alunos 
WHERE matricula = '-DESMATRICULADO-';

DELETE FROM Disciplinas 
WHERE professor = 'Gepeto';