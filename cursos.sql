CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(20) NOT NULL,
sessao VARCHAR(20) NOT NULL
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
carga_horaria INT,
nivel VARCHAR(20),
modalidade VARCHAR(20),
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, sessao)
Values("pago", "marketing"),
("pago", "autoconhecimento"),
("gratuito", "marketing"),
("gratuito", "autoconhecimento"),
("pago", "financas");

INSERT INTO tb_cursos(nome, carga_horaria, nivel, modalidade, id_categoria)
VALUES("Curso de Marketing Digital", 40, "Intermediário", "Gravado", 1),  
("Curso de Autoconhecimento", 30, "Iniciante", "Ao vivo", 2), 
("Marketing de Influência", 20, "Avançado", "Gravado", 3),          
("Introdução ao Autoconhecimento", 15, "Iniciante", "Ao vivo", 4),    
("Finanças Pessoais para Iniciantes", 25, "Iniciante", "Gravado", 5), 
("Gestão de Marketing Digital", 50, "Avançado", "Gravado", 1),       
("Como Planejar seu Autoconhecimento", 35, "Intermediário", "Ao vivo", 2), 
("Investindo com Segurança", 40, "Intermediário", "Gravado", 5);    
    
ALTER TABLE tb_cursos ADD preco DECIMAL(8,2);
UPDATE tb_cursos SET preco = 530.50 WHERE id IN (1,5,7);
UPDATE tb_cursos SET preco = 849.90 WHERE id IN (2,6,8);


SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";


SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.id_categoria = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.id_categoria = tb_categorias.id WHERE tipo = gratuito";



SELECT * FROM tb_categorias;