CREATE DATABASE BIBLIOTECA;

USE BIBLIOTECA;

CREATE TABLE Biblioteca.Livros (
    idLivro INT PRIMARY KEY,
    titulo VARCHAR(20),
    autor VARCHAR(20),
    anoPublicacao YEAR,
    genero VARCHAR(20)
);

CREATE TABLE Biblioteca.Usuarios (
    idUsuario INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    dataNascimento DATE
);
CREATE DATABASE ESCOLA;

USE ESCOLA;

CREATE TABLE Escola.Alunos (
    idAluno INT PRIMARY KEY,
    nome VARCHAR(100),
    matricula VARCHAR(100),
    dataNascimento DATE
);
CREATE TABLE Escola.Disciplinas (
    idDisciplina INT PRIMARY KEY,
    nome VARCHAR(100),
    professor VARCHAR(100),
    cargaHoraria INT
);
CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE Produtos (
    idProduto INT PRIMARY KEY,
    nome VARCHAR(10),
    preco DECIMAL(10, 2),
    quantidadeEstoque INT
);
CREATE TABLE Clientes (
    idCliente INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(15)
);
CREATE DATABASE hospital;

USE hospital;

CREATE TABLE Pacientes (
    idPaciente INT PRIMARY KEY,
    nome VARCHAR(100),
    dataNascimento DATE,
    cpf VARCHAR(11),
    telefone VARCHAR(15)
);
CREATE TABLE Consultas (
    idConsulta INT PRIMARY KEY,
    idPaciente INT,
    dataConsulta DATE,
    horaConsulta TIME,
    medico VARCHAR(20),
    diagnostico TEXT,
    FOREIGN KEY (idPaciente) REFERENCES Pacientes(idPaciente)
);
CREATE DATABASE CINEMA;

USE CINEMA;

CREATE TABLE Filmes (
    idFilme INT PRIMARY KEY,
    titulo VARCHAR(255),
    duracao INT,
    genero VARCHAR(100),
    classificacao VARCHAR(50)
);
     
    CREATE TABLE Sessoes (
    idSessao INT PRIMARY KEY,
    idFilme INT,
    dataSessao DATE,
    horaSessao TIME,
    sala VARCHAR(100),
    FOREIGN KEY (idFilme) REFERENCES Filmes(idFilme)
);
     
     CREATE DATABASE BIBLIOTECA;
USE BIBLIOTECA;

CREATE TABLE Biblioteca.Livros (
    idLivro INT PRIMARY KEY,
    titulo VARCHAR(20),
    autor VARCHAR(20),
    anoPublicacao YEAR,
    genero VARCHAR(20)
);

CREATE TABLE Biblioteca.Usuarios (
    idUsuario INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    dataNascimento DATE
);

INSERT INTO Biblioteca.Livros (idLivro, titulo, autor, anoPublicacao, genero) VALUES
(1, 'Livro A', 'Autor A', 2020, 'Ficção'),
(2, 'Livro B', 'Autor B', 2019, 'Romance'),
(3, 'Livro C', 'Autor C', 2018, 'Terror'),
(4, 'Livro D', 'Autor D', 2021, 'Aventura'),
(5, 'Livro E', 'Autor E', 2020, 'Ficção'),
(6, 'Livro F', 'Autor F', 2019, 'Romance'),
(7, 'Livro G', 'Autor G', 2018, 'Terror'),
(8, 'Livro H', 'Autor H', 2021, 'Aventura'),
(9, 'Livro I', 'Autor I', 2020, 'Ficção'),
(10, 'Livro J', 'Autor J', 2019, 'Romance');

INSERT INTO Biblioteca.Usuarios (idUsuario, nome, email, dataNascimento) VALUES
(1, 'Usuario A', 'usuarioA@mail.com', '1990-01-01'),
(2, 'Usuario B', 'usuarioB@mail.com', '1991-02-02'),
(3, 'Usuario C', 'usuarioC@mail.com', '1992-03-03'),
(4, 'Usuario D', 'usuarioD@mail.com', '1993-04-04'),
(5, 'Usuario E', 'usuarioE@mail.com', '1994-05-05'),
(6, 'Usuario F', 'usuarioF@mail.com', '1995-06-06'),
(7, 'Usuario G', 'usuarioG@mail.com', '1996-07-07'),
(8, 'Usuario H', 'usuarioH@mail.com', '1997-08-08'),
(9, 'Usuario I', 'usuarioI@mail.com', '1998-09-09'),
(10, 'Usuario J', 'usuarioJ@mail.com', '1999-10-10');

CREATE DATABASE ESCOLA;
USE ESCOLA;

CREATE TABLE Escola.Alunos (
    idAluno INT PRIMARY KEY,
    nome VARCHAR(100),
    matricula VARCHAR(100),
    dataNascimento DATE
);

CREATE TABLE Escola.Disciplinas (
    idDisciplina INT PRIMARY KEY,
    nome VARCHAR(100),
    professor VARCHAR(100),
    cargaHoraria INT
);

INSERT INTO Escola.Alunos (idAluno, nome, matricula, dataNascimento) VALUES
(1, 'Aluno A', '1234A', '2000-01-01'),
(2, 'Aluno B', '1234B', '2001-02-02'),
(3, 'Aluno C', '1234C', '2002-03-03'),
(4, 'Aluno D', '1234D', '2003-04-04'),
(5, 'Aluno E', '1234E', '2004-05-05'),
(6, 'Aluno F', '1234F', '2005-06-06'),
(7, 'Aluno G', '1234G', '2006-07-07'),
(8, 'Aluno H', '1234H', '2007-08-08'),
(9, 'Aluno I', '1234I', '2008-09-09'),
(10, 'Aluno J', '1234J', '2009-10-10');

INSERT INTO Escola.Disciplinas (idDisciplina, nome, professor, cargaHoraria) VALUES
(1, 'Disciplina A', 'Prof A', 30),
(2, 'Disciplina B', 'Prof B', 40),
(3, 'Disciplina C', 'Prof C', 50),
(4, 'Disciplina D', 'Prof D', 60),
(5, 'Disciplina E', 'Prof E', 70),
(6, 'Disciplina F', 'Prof F', 80),
(7, 'Disciplina G', 'Prof G', 90),
(8, 'Disciplina H', 'Prof H', 100),
(9, 'Disciplina I', 'Prof I', 110),
(10, 'Disciplina J', 'Prof J', 120);

CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE Produtos (
    idProduto INT PRIMARY KEY,
    nome VARCHAR(10),
    preco DECIMAL(10, 2),
    quantidadeEstoque INT
);

CREATE TABLE Clientes (
    idCliente INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(15)
);

INSERT INTO Produtos (idProduto, nome, preco, quantidadeEstoque) VALUES
(1, 'Produto A', 10.00, 100),
(2, 'Produto B', 20.00, 200),
(3, 'Produto C', 30.00, 300),
(4, 'Produto D', 40.00, 400),
(5, 'Produto E', 50.00, 500),
(6, 'Produto F', 60.00, 600),
(7, 'Produto G', 70.00, 700),
(8, 'Produto H', 80.00, 800),
(9, 'Produto I', 90.00, 900),
(10, 'Produto J', 100.00, 1000);

INSERT INTO Clientes (idCliente, nome, email, telefone) VALUES
(1, 'Cliente A', 'clienteA@mail.com', '1111111111'),
(2, 'Cliente B', 'clienteB@mail.com', '2222222222'),
(3, 'Cliente C', 'clienteC@mail.com', '3333333333'),
(4, 'Cliente D', 'clienteD@mail.com', '4444444444'),
(5, 'Cliente E', 'clienteE@mail.com', '5555555555'),
(6, 'Cliente F', 'clienteF@mail.com', '6666666666'),
(7, 'Cliente G', 'clienteG@mail.com', '7777777777'),
(8, 'Cliente H', 'clienteH@mail.com', '8888888888'),
(9, 'Cliente I', 'clienteI@mail.com', '9999999999'),
(10, 'Cliente J', 'clienteJ@mail.com', '1010101010');

CREATE DATABASE hospital;
USE hospital;

CREATE TABLE Pacientes (
    idPaciente INT PRIMARY KEY,
    nome VARCHAR(100),
    dataNascimento DATE,
    cpf VARCHAR(11),
    telefone VARCHAR(15)
);

CREATE TABLE Consultas (
    idConsulta INT PRIMARY KEY,
    idPaciente INT,
    dataConsulta DATE,
    horaConsulta TIME,
    medico VARCHAR(20),
    diagnostico TEXT,
    FOREIGN KEY (idPaciente) REFERENCES Pacientes(idPaciente)
);

INSERT INTO Pacientes (idPaciente, nome, dataNascimento, cpf, telefone) VALUES
(1, 'Paciente A', '1980-01-01', '12345678901', '1111111111'),
(2, 'Paciente B', '1981-02-02', '23456789012', '2222222222'),
(3, 'Paciente C', '1982-03-03', '34567890123', '3333333333'),
(4, 'Paciente D', '1983-04-04', '45678901234', '4444444444'),
(5, 'Paciente E', '1984-05-05', '56789012345', '5555555555'),
(6, 'Paciente F', '1985-06-06', '67890123456', '6666666666'),
(7, 'Paciente G', '1986-07-07', '78901234567', '7777777777'),
(8, 'Paciente H', '1987-08-08', '89012345678', '8888888888'),
(9, 'Paciente I', '1988-09-09', '90123456789', '9999999999'),
(10, 'Paciente J', '1989-10-10', '01234567890', '1010101010');	

INSERT INTO Consultas (idConsulta, idPaciente, dataConsulta, horaConsulta, medico, diagnostico) VALUES
(1, 1, '2024-01-01', '10:00:00', 'Dr. A', 'Diagnostico A'),
(2, 2, '2024-01-02', '11:00:00', 'Dr. B', 'Diagnostico B'),
(3, 3, '2024-01-03', '12:00:00', 'Dr. C', 'Diagnostico C'),
(4, 4, '2024-01-04', '13:00:00', 'Dr. D', 'Diagnostico D'),
(5, 5, '2024-01-05', '14:00:00', 'Dr. E', 'Diagnostico E'),
(6, 6, '2024-01-06', '15:00:00', 'Dr. F', 'Diagnostico F'),
(7, 7, '2024-01-07', '16:00:00', 'Dr. G', 'Diagnostico G'),
(8, 8, '2024-01-08', '17:00:00', 'Dr. H', 'Diagnostico H'),
(9, 9, '2024-01-09', '18:00:00', 'Dr. I', 'Diagnostico I'),
(10, 10, '2024-01-10', '19:00:00', 'Dr. J', 'Diagnostico J');

CREATE DATABASE CINEMA;

USE CINEMA;

CREATE TABLE Filmes (
    idFilme INT PRIMARY KEY,
    titulo VARCHAR(255),
    duracao INT,
    genero VARCHAR(100),
    classificacao VARCHAR(50)
);

CREATE TABLE Sessoes (
    idSessao INT PRIMARY KEY,
    idFilme INT,
    dataSessao DATE,
    horaSessao TIME,
    sala VARCHAR(100),
    FOREIGN KEY (idFilme) REFERENCES Filmes(idFilme)
);

INSERT INTO Filmes (idFilme, titulo, duracao, genero, classificacao) VALUES
(1, 'Filme A', 120, 'Ação', '12+'),
(2, 'Filme B', 90, 'Comédia', '10+'),
(3, 'Filme C', 110, 'Drama', '14+'),
(4, 'Filme D', 130, 'Terror', '16+'),
(5, 'Filme E', 95, 'Romance', '10+'),
(6, 'Filme F', 105, 'Documentário', 'Livre'),
(7, 'Filme G', 115, 'Fantasia', '12+'),
(8, 'Filme H', 100, 'Aventura', '12+'),
(9, 'Filme I', 125, 'Biografia', '14+'),
(10, 'Filme J', 140, 'Sci-Fi', '12+');

INSERT INTO Sessoes (idSessao, idFilme, dataSessao, horaSessao, sala) VALUES
(1, 1, '2024-01-01', '10:00:00', 'Sala 1'),
(2, 2, '2024-01-02', '11:00:00', 'Sala 2'),
(3, 3, '2024-01-03', '12:00:00', 'Sala 3'),
(4, 4, '2024-01-04', '13:00:00', 'Sala 4'),
(5, 5, '2024-01-05', '14:00:00', 'Sala 5'),
(6, 6, '2024-01-06', '15:00:00', 'Sala 6'),
(7, 7, '2024-01-07', '16:00:00', 'Sala 7'),
(8, 8, '2024-01-08', '17:00:00', 'Sala 8'),
(9, 9, '2024-01-09', '18:00:00', 'Sala 9'),
(10, 10, '2024-01-10', '19:00:00', 'Sala 10');
