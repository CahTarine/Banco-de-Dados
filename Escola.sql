CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
serie INT NOT NULL,
situacao VARCHAR (20),
nota DECIMAL (5,2),
curso VARCHAR (255) NOT NULL
);

INSERT INTO tb_estudantes(nome, serie, situacao, nota, curso)
VALUES ("Ana", 1, "aprovada", 8.0, "Ensino médio"),
("Beatriz", 2, "aprovada", 7.5, "Ensino médio"),
("Carol", 3, "aprovada", 10.0, "Ensinino médio"),
("Diego", 2, "reprovado", 5.8, "Ensino médio"),
("Eduardo", 5, "reprovado", 6.2, "Ensino fundamental"),
("Fernanda", 7, "aprovada", 8.0, "Ensino fundamental"),
("Gustavo", 3, "aprovado", 8.5, "Ensino médio"),
("Higor", 1, "aprovado", 9.0, "Ensino médio");

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

ALTER TABLE tb_estudantes MODIFY nota DECIMAL (5,1);
UPDATE tb_estudantes SET nota = 8.5 WHERE id = 1;
