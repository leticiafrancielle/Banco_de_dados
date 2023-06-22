CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id 	INT PRIMARY KEY,
    classificacao VARCHAR(255),
    caracteristicas VARCHAR(255)
);

INSERT INTO tb_classes (id, classificacao, caracteristicas)
VALUES (1, "Ladino", "Combate corporal com adagas, katares, punhais e outras armas de punho"),
       (2, "Arqueiro", "Combate a distância com arco e flecha"),
       (3, "Guerreiro", "Combate corporal com espadas, lanças, machados, maças e escudos"),
       (4, "Mago", "Combate a distância com magias de variados elementos"),
       (5, "Bárbaro", "Combate a distância com magias de variados elementos");

CREATE TABLE tb_personagens (
    nome VARCHAR(255),
    poder_ataque INT, 
    poder_defesa INT,
    classe_id INT, 
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id)
VALUES ("Takumi", 3000, 2500, 2),
       ("Hugh", 1000, 2000, 4),
       ("Adric", 2300, 500, 3),
       ("Nehaleen", 3100, 2200, 4),
       ("Orean", 1800, 1000, 1),
       ("Raadik", 2800, 4000, 4),
       ("Shandra", 4100, 2000, 3),
       ("Tyunn", 1400, 1700, 3);
       
SELECT * FROM tb_personagens 
WHERE poder_ataque > 2000;

SELECT nome FROM tb_personagens 
WHERE poder_defesa between 1000 and 2000;

SELECT nome FROM tb_personagens
WHERE nome like "%C%";

SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT person.*, clas.classificacao FROM tb_personagens person
INNER JOIN tb_classes clas ON person.classe_id = clas.id
WHERE clas.classificacao = "Guerreiro";
