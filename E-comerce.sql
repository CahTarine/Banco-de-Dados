CREATE DATABASE db_ecomerce;
USE db_ecomerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
categoria VARCHAR (255),
descricao VARCHAR (255),
estoque INT,
preco DECIMAL(6,2) NOT NULL
);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, categoria, descricao, estoque, preco)
VALUES ("escova de cabelo", "beleza", "escova para pentear os cabelos", 50, 15.50),
("camiseta", "vestuário", "camiseta feminina tamanho M", 80, 25.50),
("sapatilha", "vestuário", "sapatilha feminina tamanho 35", 10, 30.90),
("casa da Barbie", "brinquedos", "casa de brinquedo, dois andares, rosa", 5, 229.90),
("microondas", "eletronicos", "Microondas Digital MarcaX - 30L", 10, 350.90),
("tenis adidas", "vestuário", "tenis adidas branco masculino, tamanho 40", 8, 90.50),
("vestido", "vestuário", "vestido florido tamanho 8 anos", 5, 45.90),
("biquini", "vestuário", "roupa de banho - biquini fita, tamanho G", 50, 30.90);

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 649.90 WHERE id = 5;