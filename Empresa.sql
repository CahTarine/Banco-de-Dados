CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
cargo VARCHAR (255) NOT NULL,
telefone VARCHAR (20),
dataregistro DATE,
salario DECIMAL(8,2) NOT NULL
);

INSERT INTO tb_colaboradores(nome, cargo, telefone, dataregistro, salario)
VALUES ("Carla", "vendedora", "(11)9 9999-8888", "2025-01-10", 1600.00),
("Paula", "gerente de vendas", "(11)9 7777-6666", "2020-07-20", 2500.00),
("Ricardo", "estoquista", "(11)9 5555-4444", "2024-02-15", 1600.00),
("Paulo", "motorista", "(11)9 3333-2222", "2023-10-02", 2100.50),
("Maria", "analista financeira", "(11)9 1111-9999", "2019-05-29", 2800.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET telefone = "(11)9 1234-5678" WHERE id = 1;

SELECT * FROM tb_colaboradores;


