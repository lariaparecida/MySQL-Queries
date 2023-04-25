CREATE DATABASE db_escola; -- 1º DB CRIADA --

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
aluno VARCHAR(100),
data_nascimento DATE,
ano_fundamental INT,
nota_media DECIMAL(3,1),
responsavel VARCHAR(100)
);

INSERT INTO tb_alunos(aluno,data_nascimento,ano_fundamental,nota_media,responsavel)
VALUES("Nelly","1999-10-21",2,10.0,"Desconhecido");

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota_media > 7.0;

SELECT * FROM tb_alunos WHERE nota_media < 7.0;

-- ALTER TABLE tb_alunos MODIFY COLUMN preco DECIMAL(8,2); (not used) --

UPDATE tb_alunos
SET aluno = "Dan", data_nascimento = "1998-11-08", ano_fundamental = 3,nota_media = 10.0,responsavel = "Ruffus"
WHERE id=2;

UPDATE tb_alunos
SET nota_media = 5.0
WHERE id=6;