CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id 	BIGINT AUTO_INCREMENT PRIMARY KEY,
    tamanho VARCHAR(255),
    tipo VARCHAR(255)
);

INSERT INTO tb_categorias(id, tamanho, tipo)
VALUES (1, "Grande", "Salgada"),
	   (2, "Média", "Doce"),
	   (3, "Pequena", "Doce"),
       (4, "Média", "Salgada"),
       (5, "Grande", "Doce");

CREATE TABLE tb_pizzas (
	sabor VARCHAR(255),
	borda VARCHAR(255), 
	bebida VARCHAR(255),
	preco DECIMAL NOT NULL,
    classe_id BIGINT, 
    FOREIGN KEY (classe_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, borda, bebida, preco, classe_id)
VALUES ("Calabresa", "Recheada", "Nenhuma", 35.00, 1),
	   ("Frango Catupiry", "Sem recheio", "Suco de laranja", 55.00, 1),
       ("Portuguesa", "Recheada", "Coca-Cola", 60.00, 4),
       ("Chocolate com morango", "Recheada", "Água", 40.50, 5),
       ("Bahiana", "Sem recheio", "Pepsi", 35.00, 1),
       ("Brigadeiro", "Sem recheio", "Doly", 55.00, 2),
       ("Mussarela", "Recheada", "Fanta uva", 40.00, 4),
       ("Doce de leite", "Sem recheio", "Fanta laranja", 42.00, 3);
       
SELECT * FROM tb_pizzas
WHERE preco > 45.00;

SELECT sabor FROM tb_pizzas 
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT sabor FROM tb_pizzas
WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.classe_id = tb_categorias.id;

SELECT pizza.*, clas.tamanho FROM tb_pizzas pizza
INNER JOIN tb_categorias clas ON pizza.classe_id = clas.id
WHERE clas.tamanho = "Média";