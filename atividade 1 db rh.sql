-- comando para criação de banco de dados --
CREATE DATABASE db_rh;  -- pra rodar a linha que eu quero eu sempre tenho que selecionar, esse é o 1º a ser rodado --
-- o Camel case pode dar problema ao chegar no Spring, use _ para espaço e evite maiúsculas desnecessparias --
CREATE TABLE tb_colaboradores( -- (seta pra baixo) a responsabilidade de gestão dele é do banco de dados, através da palavra reservada anterior --
	id BIGINT AUTO_INCREMENT,-- PRIMARY KEY pode ser declarado tanto lá perto do id como aqui --
    nome VARCHAR(255), -- quando voltar pro Spring, volta pro String, Varchar equivale ao String; entre () dá pra colocar o limite de caracteres, 255 é o limite --
	idade INT, -- não precisa de limitação, mas tem um limite de até 4 números, bigint aceita 8, etc, porém também é possível formatar --
    salario DECIMAL(8,2), -- 6 números no total, 2 depois da vírgula para exibir 1000,99 ; pra decimal é obrigatório o (), pra varchar não --
    cargo VARCHAR(255),
    
    PRIMARY KEY (id) 
);

INSERT INTO tb_colaboradores(nome,idade,salario,cargo) VALUES("Mariane",25,800.99,"Desenvolvedora");

SELECT * FROM tb_colaboradores;-- consulta não altera nada e pode ser feita sempre que precisar --

INSERT INTO tb_colaboradores(nome,idade,salario,cargo) VALUES("Vinicius",22,501.99,"Desenvolvedor");

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome,idade,salario,cargo) VALUES("Aline",31,900.99,"Desenvolvedora");

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome,idade,salario,cargo) VALUES("Caio",23,600.99,"Desenvolvedor");

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome,idade,salario,cargo) VALUES("Chris",25,400.99,"Desenvolvedor");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- BONUS

ALTER TABLE tb_colaboradores
MODIFY COLUMN salario DECIMAL(10,2);

UPDATE tb_colaboradores
SET salario = 8000.99
WHERE id=3
