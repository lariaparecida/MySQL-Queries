CREATE DATABASE db_pizzaria_legal; -- CRIOU O BANCO
USE db_pizzaria_legal; -- COLOCOU EM USO

CREATE TABLE tb_categorias( -- CRIOU A TABELA
id BIGINT NOT NULL AUTO_INCREMENT, -- INICIOU O ID
tipo VARCHAR(255) NOT NULL, -- INICIOU A CATEGORIA TIPO DE PIZZA
massa VARCHAR(255)NOT NULL, -- INICIOU A CATEGORIA TIPO DE MASSA
PRIMARY KEY (id) -- DECLAROU A ID
);

CREATE TABLE tb_pizzas( -- CRIOU A TABELA PIZZAS
id BIGINT AUTO_INCREMENT NOT NULL, -- INICIOU O ID
sabor VARCHAR(255) NOT NULL, -- DECLAROU O SABOR
ingredientes TEXT NOT NULL, -- DECLAROU OS INGREDIENTES
preco_quatro_fatias DECIMAL(6, 2)NOT NULL, -- DECLAROU O VALOR 1
preco_oito_fatias DECIMAL(6, 2)NOT NULL, -- DECLAROU O VALOR 2
categoria_id BIGINT, -- DECLAROU A CHAVE ESTRANGEIRA
PRIMARY KEY (id), -- DECLAROU A ID PRIMÁRIA, PODERIA SER LÁ ONDE INICIOU O ID
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) -- DECLAROU A CHAVE ESTRANGEIRA
);

-- VER PIZZAS
SELECT * FROM tb_pizzas;

-- VER PIZZAS E PREÇOS MAIORES OU MENORES QUE 45
SELECT * FROM tb_pizzas WHERE preco_quatro_fatias > 45;
SELECT * FROM tb_pizzas WHERE preco_quatro_fatias < 45;
SELECT * FROM tb_pizzas WHERE preco_oito_fatias > 45;
SELECT * FROM tb_pizzas WHERE preco_oito_fatias < 45;

-- VER PIZZAS COM VALORES ENTRE 50 E 100
SELECT * FROM tb_pizzas WHERE preco_quatro_fatias BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE preco_oito_fatias BETWEEN 50.00 AND 100.00;

-- VER PIZZAS ONDE TEM 'M' NO SABOR
SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

-- USAR INNER JOIN PARA UNIR TABELAS PIZZAS E CATEGORIAS -- ver explicação depois
SELECT tb_pizzas.*, tb_categorias.tipo, tb_categorias.massa 
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

-- USAR INNER JOIN PARA UNIR TABELAS PIZZAS E CATEGORIAS, ESPECIFICANDO QUE QUERO VER A DOCE
 -- ver explicação depois
SELECT tb_pizzas.sabor, tb_pizzas.preco_quatro_fatias, tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";

-- inserts feitos

INSERT INTO tb_categorias (tipo,massa)
VALUES ("Doce","Brotinho");
INSERT INTO tb_categorias (tipo,massa)
VALUES ("Vegetariana","Brotinho");
INSERT INTO tb_categorias (tipo,massa)
VALUES ("Vegana","Brotinho");
INSERT INTO tb_categorias (tipo,massa)
VALUES ("Com carne","Brotinho");
INSERT INTO tb_categorias (tipo,massa)
VALUES ("Sem glúten","Brotinho");

INSERT INTO tb_pizzas (sabor,ingredientes, preco_quatro_fatias, preco_oito_fatias, categoria_id)
VALUES ("Marguerita", "Mussarela, tomate, manjericão e orégano", 35.00, 60.00, 1);
INSERT INTO tb_pizzas (sabor,ingredientes, preco_quatro_fatias, preco_oito_fatias, categoria_id)
VALUES ("Frango", "Mussarela, frango, catupiri e milho", 40.00, 70.00, 3);
INSERT INTO tb_pizzas (sabor,ingredientes, preco_quatro_fatias, preco_oito_fatias, categoria_id)
VALUES ("Calabresa", "Mussarela, calabresa, catupiri e cebola", 38.00, 65.00, 3);
INSERT INTO tb_pizzas (sabor,ingredientes, preco_quatro_fatias, preco_oito_fatias, categoria_id)
VALUES ("Quatro queijos", "Mussarela, Provolone, Parmesão e Gorgonzola", 42.00, 75.00, 1);
INSERT INTO tb_pizzas (sabor,ingredientes, preco_quatro_fatias, preco_oito_fatias, categoria_id)
VALUES ("Tofu", "Tofu, Champignon, Tomate e Orégano", 45.00, 80.00, 2);
INSERT INTO tb_pizzas (sabor,ingredientes, preco_quatro_fatias, preco_oito_fatias, categoria_id)
VALUES ("Brócolis", "Mussarela, Brócolos e Alho", 40.00, 70.00, 5);
INSERT INTO tb_pizzas (sabor,ingredientes, preco_quatro_fatias, preco_oito_fatias, categoria_id)
VALUES ("Morango", "Chocolate ao leite com morango", 40.00, 70.00, 5);
INSERT INTO tb_pizzas (sabor,ingredientes, preco_quatro_fatias, preco_oito_fatias, categoria_id)
VALUES ("Banana", "Chocolate branco, canela e banana", 40.00, 70.00, 1);


