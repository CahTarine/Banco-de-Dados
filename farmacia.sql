CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
estoque BIGINT,
validade DATE,
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, descricao)
VALUES("medicamento", "remédio para dor muscular"),
("higiene", "escova de dentes cerdas macias"),
("suplementos", "produto suplementar para força"),
("suplementos", "proteina extraida do soro do leite"),
("medicamento", "antigripal");

INSERT INTO tb_produtos(nome, preco, estoque, validade, id_categoria)
VALUES ("Dorflex", 19.90, 50, "2025-12-31", 1), 
("Escova de Dentes", 8.50, 100,NULL, 2),  
("Creatina", 120.00, 30, "2026-06-01", 3),     
("Whey Protein", 150.00, 20, "2026-07-01", 4), 
("Tylenol", 12.50, 40, "2025-11-30", 1),       
("Escova de Dentes", 15.00, 80, NULL, 2), 
("BCAA", 99.90, 25, "2026-06-15", 3),         
("Paracetamol", 10.90, 60, "2025-10-30", 1);   


SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id WHERE tipo = "suplementos;

