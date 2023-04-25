CREATE DATABASE db_ecommerce; -- 1º DB CRIADA --

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(100),
descricao TEXT,
preco DECIMAL(8,2),
categoria VARCHAR (100),
estoque INT,
PRIMARY KEY (id) 
);

INSERT INTO tb_produtos(produto,descricao,preco,categoria,estoque) VALUES("Aragonita","Cristal do ancoramento.",14.99,"Pedras e cristais",99);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

ALTER TABLE tb_produtos
MODIFY COLUMN preco DECIMAL(8,2);

UPDATE tb_produtos
SET preco = 2.99
WHERE id=6;