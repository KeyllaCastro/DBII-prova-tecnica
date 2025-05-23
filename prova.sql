CREATE DATABASE lojaPascottoProva;
USE lojaPascottoProva;

CREATE TABLE produtos (
idProduto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL(10,2),
qntd_estoque INT,
idFornecedor INT
);  

CREATE TABLE fornecedores (
idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
cnpj VARCHAR(25),
cpf VARCHAR(25)
);
CREATE TABLE colaborador (
idColaborador INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
cargo VARCHAR(25),
salario DECIMAL(10.2)
);

CREATE TABLE pedidos (
idPedidos INT AUTO_INCREMENT PRIMARY KEY,
data VARCHAR(25),
idFuncionario INT,
idProduto INT,
quantidade INT
); 

ALTER TABLE fornecedores add email VARCHAR (100);

CREATE TABLE categorias (
idCategoria INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(100)
);

ALTER TABLE produtos ADD idCategoria INT;
ALTER TABLE produtos ADD FOREIGN KEY idCategoria REFERENCE categorias(idCategoria);

INSERT INTO fornecedores ( nome, cnpj, telefone, cpf) VALUES
('EmpresaM', '12312334501010', '21 12341234', '12233445566'),
('EmpresaC', '00098766565544', '11 23233434', '12345678900');

INSERT INTO produtos (nome, preco, qntd_estoque, idFornecedor) VALUES
('Macarrão', 12.5, 7, 1),
('Carne de Soja', 23.5, 5, 2);

INSERT INTO colaboradores (nome, cargo, salario) VALUES
('Ana Silva', 'Assistente', 2003.56),
('Jonatans Rodrigues', 'Analista', 3003.56);

INSERT INTO pedidos (data, idFuncionario, idProduto, quantidade) VALUES
('2025-05-03', 1, 1, 4),
('2025-05-05', 2, 2, 2);


SELECT * FROM produtos;
SELECT * FROM fornecedores;
SELECT * FROM colaborador;
SELECT * FROM pedidos;


