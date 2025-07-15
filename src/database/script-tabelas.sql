CREATE DATABASE IF NOT EXISTS livraria;

USE livraria;

CREATE TABLE IF NOT EXISTS genero (
	idGenero INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS livro (
	idLivro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(45),
    precoCompra FLOAT,
    precoVenda FLOAT,
    qtdEstoque INT,
    fkGenero INT NOT NULL,
    CONSTRAINT fkGeneroLivro FOREIGN KEY (fkGenero)
    REFERENCES genero(idGenero)
);

CREATE TABLE IF NOT EXISTS autor (
	idAutor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    fkLivro INT NOT NULL,
    CONSTRAINT fkLivrosAutor FOREIGN KEY (fkLivro)
    REFERENCES livro(idLivro)
);

INSERT INTO genero (nome) VALUES
	("Horror"),
    ("Romance"),
    ("Poesia"),
    ("Fantasia");