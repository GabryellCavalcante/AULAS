CREATE DATABASE FACULDADE_EVOLUCAO;
USE FACULDADE_EVOLUCAO;

CREATE TABLE Aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) NOT NULL,
    telefone VARCHAR (15)
);

CREATE TABLE Matricula (
    id_aluno INT,
    Id_disciplina INT,
    data_matricula DATE, 
    FOREIGN KEY (id_aluno) REFERENCES Aluno (id),
    FOREIGN KEY (Id_disciplina) REFERENCES Disciplina (id)  
);

CREATE TABLE Disciplina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) UNIQUE NOT NULL
);
