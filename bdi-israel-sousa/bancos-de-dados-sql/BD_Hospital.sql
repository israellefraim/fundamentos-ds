CREATE DATABASE Hospital;

USE Hospital;

CREATE TABLE Pacientes ( 
    idPacientes INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    dataNascimento DATE NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL UNIQUE
); 

CREATE TABLE Consultas ( 
    idConsulta INT AUTO_INCREMENT PRIMARY KEY, 
    idPacientes INT NOT NULL, 
    FOREIGN KEY (idPacientes) REFERENCES Pacientes (idPacientes),
    dataConsulta DATE NOT NULL, 
    horaConsulta TIME NOT NULL,
    medico VARCHAR(50) NOT NULL,
    diagnostico TEXT NOT NULL,
    CHECK (horaConsulta >= '07:00:00' AND horaConsulta <= '17:00:00') 
); 

INSERT INTO Pacientes (nome, dataNascimento, cpf, telefone) VALUES
('Israel Efraim', '2008-09-03', '05543124829', '13 99697-8649'), 
('David Efraim', '1980-06-02', '03482839128', '11 99873-0086'),
('Shirlene Marcia', '1974-03-13', '09347238917', '13 99009-2323'), 
('Luis Dantas', '2008-10-25', '34357438219', '11 99083-7432'), 
('Gustavo Máscio', '2009-02-14', '67884326137', '11 99234-8478');

INSERT INTO Consultas (idPacientes, dataConsulta, horaConsulta, medico, diagnostico) VALUES
(1, '2024-04-01', '15:30:00', 'Amanda Cavalcante', 'Paciente apresenta coqueluche avançada, e foi lhe recomendado o uso de antibióticos e repouso de 1 semana.'),
(2, '2024-07-03', '08:15:00', 'Carlos Almeida', 'Paciente apresenta todos os sintomas para COVID-19, portanto lhe solicitei um teste para a doença, e o resultado foi positivo. Lhe instrui para que repousasse por no mínimo uma semana, ficasse em isolamento, e que usasse dos remédios que lhe passei.'),
(3, '2024-10-29', '16:15:00', 'Amanda Cavalcante', 'Após observação minuciosa, confirmo que o paciente contraiu raiva depois de ter sido mordido por animal silvestre. Começamos o tratamento no hospital e foi necessário interná-lo.'),
(4, '2024-12-23', '12:00:00', 'Amanda Cavalcante', 'Paciente apresenta positivo para salmonela no estômago. Após verificação e teste, instrui a quais remédio fazer uso.'), 
(5, '2024-12-28', '07:05:00', 'Carlos Almeida', 'Após verificação de sintomas, constatou-se que o paciente apresenta suspeita de tuberculose, fiz o pedido de um exame, para caso positivo, voltar para meu consultório.');

SELECT cpf FROM Pacientes 
WHERE YEAR(dataNascimento) <= 1990;

SELECT * FROM Consultas 
WHERE diagnostico LIKE '%coqueluche%';

UPDATE Pacientes 
SET telefone = '11 99808-0040' 
WHERE telefone = '13 99697-8649';

UPDATE Consultas 
SET diagnostico = 'Após o exame ter sido realizado e ter dado positivo para tuberculose, demos início ao tratamento de 7 meses.' 
WHERE idPacientes = 5; 

DELETE FROM Pacientes 
WHERE idPacientes = 2; 

DELETE FROM Consultas 
WHERE idConsulta = 2;