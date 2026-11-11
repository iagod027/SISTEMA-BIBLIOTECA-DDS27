-- BANCO DA BIBLIOTECA

-- CRIAR O BANCO
CREATE DATABASE db_biblioteca;
DROP DATABASE db_biblioteca;

-- UTILIZAR O BANCO
USE db_biblioteca;

-- CRIAR AS TABELAS
-- TABELA LEITOR
CREATE TABLE tb_leitores(
	id_leitor INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(15),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- TABELA LIVRO
CREATE TABLE tb_livros(
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100),
    ano_publicacao DATE,
    genero VARCHAR(100),
    disponivel TINYINT
);

-- TABELA EMPRESTIMO
CREATE TABLE tb_emprestimos(
	id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    dt_emprestimo DATE,
    dt_previsao_devolucao DATE,
    dt_devolucao DATE,
    leitor INT,
    livro INT,
    -- CHAVES ESTRANGEIRAS
    -- foreign key (NOME_QUALQUER) references TABELA_JA_EXISTENTE(ID_CHAVE_PRIMARIA)
    FOREIGN KEY (leitor) REFERENCES tb_leitores(id_leitor),
    FOREIGN KEY (livro) REFERENCES tb_livros(id_livro)
);

-- INSERIR INFORMAÇÕES
INSERT INTO
	tb_leitores(nome, cpf, telefone, email)
VALUES
("Cristiano", "777", "7777", "cris@gmail.com"),
("Ronaldo", "777", "7777", "ron@gmail.com"),
("Fenomeno", "676", "6767", "fe@gmail.com");

INSERT INTO
	tb_livros(titulo, autor, ano_publicacao, genero, disponivel)
VALUES
	("Nárnia", "Aslan", "1900-08-25", "fantasia", 1),
    ("Cthulhu", "Lovecraft", "1984-03-27", "scifi", 1),
    ("Cratera", "Meteoro", "1100-01-15", "buraco", 0);
    
-- EMPRESTIMOS
INSERT INTO
	tb_emprestimos(dt_emprestimo,dt_previsao_devolucao,dt_devolucao,leitor,livro)
VALUES
	(CURRENT_DATE(), "2026-10-10", "2026-10-13", 1,2),
    (CURRENT_DATE(), "2026-10-10", "2026-10-13", 1,2),
    (CURRENT_DATE(), "2026-10-10", "2026-10-13", 1,2);

-- EXCLUIR TABELAS
DROP TABLE tb_usuarios;

-- BUSCAR INFORMAÇÕES
SELECT * FROM tb_leitores;
SELECT * FROM tb_livros;
SELECT * FROM tb_emprestimos;

-- JOINS - JUNTAR TABELAS
SELECT *
	FROM tb_emprestimos AS emp
JOIN
	tb_leitores AS le
ON
	emp.leitor = le.id_leitor -- iguala o campo pelo nome das colunas
JOIN
	tb_livro AS li
ON
	emp.livro = li.id_livro; -- aqui também
;