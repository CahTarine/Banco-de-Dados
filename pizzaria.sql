CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR (255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tempo_preparo VARCHAR(255),
disponivel VARCHAR(20)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR (20) NOT NULL,
tamanho VARCHAR (20) NOT NULL
);

INSERT INTO tb_pizzas(sabor, preco, tempo_preparo, disponivel)
Values ("Calabresa", 40.00, "1h45", "SIM"),
("4 Queijos", 70.00, "1h45", "SIM"),
("Frango com Catupiry", 75.00, "1h45", "SIM"),
("Palmito", 40.00, "1h45", "Não"),
("Morango com Chocolate", 120.00, "1h45", "SIM"),
("Brigadeiro", 80.00, "1h45", "SIM"),
("Abacaxi", 80.00, "1h45", "NÃO"),
("Limão", 70.00, "1h45", "SIM");

INSERT INTO tb_categorias(tipo, tamanho)
Values ("Doce", "Pequena"),
("Doce", "Média"),
("Doce", "Grande"),
("Salgada", "Pequena"),
("Salgada", "Média"),
("Salgada", "Grande");

ALTER TABLE tb_pizzas ADD categorias_id BIGINT;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id);

UPDATE tb_pizzas SET categorias_id = 1 WHERE id = 7;
UPDATE tb_pizzas SET categorias_id = 2 WHERE id = 6;
UPDATE tb_pizzas SET categorias_id = 3 WHERE id = 5;
UPDATE tb_pizzas SET categorias_id = 4 WHERE id = 4;
UPDATE tb_pizzas SET categorias_id = 5 WHERE id = 2;
UPDATE tb_pizzas SET categorias_id = 6 WHERE id = 3;


SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";


SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;


SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";

