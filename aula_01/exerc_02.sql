CREATE DATABASE e_commerce;

USE e_commerce;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
	nome varchar(255) not null,
    descricao varchar(255) not null,
	quantidade int,
	preco decimal not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, descricao,quantidade, preco)
values ("placa mãe", "atx, ddr4", 5, 1300.00);
INSERT INTO tb_produtos(nome, descricao,quantidade, preco)
values ("paca de vídeo", "gtx 1650", 10, 700.00);
INSERT INTO tb_produtos(nome, descricao,quantidade, preco)
values ("memória", "gamer husky gaming", 19, 100.00);
INSERT INTO tb_produtos(nome, descricao,quantidade, preco)
values ("gabinete", "tgt b110", 20, 80.00);
INSERT INTO tb_produtos(nome, descricao,quantidade, preco)
values ("cooler", "fan rise mode", 12, 9.00);
INSERT INTO tb_produtos(nome, descricao,quantidade, preco)
values ("peocessador", "intel core i5", 25, 300.00);
INSERT INTO tb_produtos(nome, descricao,quantidade, preco)
values ("fonte", "msi mag", 15, 300.00);
INSERT INTO tb_produtos(nome, descricao,quantidade, preco)
values ("monitor", "gamer lg led", 15, 499.00);

SELECT * FROM tb_produtos; 

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 10.00 WHERE id = 5; 
