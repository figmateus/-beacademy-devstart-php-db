-- Para criar um banco de dados --
CREATE DATABASE db_escola;

-- selecionar o banco de dados --
USE db_escola;

-- Criar Tabela --
CREATE TABLE tb_professor (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE tb_aluno (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE tb_curso (
    nome VARCHAR(100) UNIQUE NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_disciplina (
    nome VARCHAR(100) UNIQUE NOT NULL,
    descricao VARCHAR(255)
);

-- excluir tabela --
DROP TABLE tb_professor;

-- inserir dados --
INSERT INTO tb_professor (nome, email, cpf)
VALUES ('Bruno','bruno@email.com','12312312312');

INSERT INTO tb_professor (nome, email, cpf)
VALUES ('Alessandro','ale@email.com','12312312312');

-- selecionar dados --
SELECT * FROM tb_professor;

-- Mostrar bancos --
SHOW DATABASES;
-- Mostrar tabelas --
SHOW TABLES;