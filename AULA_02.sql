create schema aula_dml;
use aula_dml;
CREATE TABLE curso(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) UNIQUE NOT NULL,
	aula_iniciada BOOLEAN DEFAULT FALSE,
	data_inicio_aula DATE
);
 
 CREATE TABLE aluno(
	id INT,
	nome VARCHAR(50) NOT NULL,
	cpf CHAR(11) UNIQUE,
	id_curso INT,
	PRIMARY KEY(id),
	FOREIGN KEY(id_curso) REFERENCES curso(id)
);

INSERT INTO curso VALUES (1,'Desenvolvimento',true,'2015-04-27');
INSERT INTO curso VALUES (2,'Rede de computadores',true,'2015-04-27');
INSERT INTO curso VALUES (3,'Gestão de projetos',false,'2015-04-28');

INSERT INTO aluno VALUES (1,'João','11111111111', 1);
INSERT INTO aluno VALUES (2,'João','22222222222', 2);
INSERT INTO aluno VALUES (3,'José','33333333333', 1);
INSERT INTO aluno VALUES (4,'Maria','44444444444', 1);
INSERT INTO aluno VALUES (5,'Igor','55555555555', 3);
INSERT INTO aluno VALUES (6,'Bruno','66666666666', 2);
INSERT INTO aluno VALUES (7,'Thiago','77777777777', 3);

--1 - Buscar o nome dos cursos em que as aulas já foram iniciadas

SELECT * 
FROM CURSO 
WHERE AULA_INICIADA = TRUE;

--2 - Buscar os alunos em que o nome termine com a letra “o”

SELECT * 
FROM ALUNO 
WHERE NOME LIKE '%o';

--3 - Buscar o nome dos alunos que estejam cursando “Rede de computadores”

SELECT *
FROM ALUNO  
WHERE ID_CURSO =  2;

--4 - Buscar o nome do aluno e o nome do curso ao qual esteja relacionado

SELECT 
    a.nome,
    c.nome
from 
    aluno a, 
    curso c
where a.id_curso = c.id

-----------------------

--1 - Altere o nome do aluno com CPF 44444444444 para ‘Maria Gabriela’

UPDATE ALUNO
SET NOME = 'Maria Gabriela'
WHERE CPF = 44444444444

--2 - Mude os status dos cursos para que todos tenham a aula iniciada = true

UPDATE CURSO
SET AULA_INICIADA = TRUE
WHERE AULA_INICIADA = FALSE

--3 - Apague o curso de id = 2

DELETE
FROM CURSO
WHERE ID = 2

--4 - Apague os alunos com nome que comecem com a letra ‘B’

DELETE
FROM ALUNO 
WHERE NOME LIKE 'b%'
