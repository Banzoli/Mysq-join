CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
    id bigint auto_increment,
    classe varchar(255),
    habilidade varchar(255),
	arma varchar(255),
    nivel int,

    primary key (id)
);

CREATE TABLE tb_personagem(
    id bigint auto_increment,
    nome varchar(255),
    raca varchar(255),
    vida int,
    defesa int,
    ataque int,
    classe_id bigint,
    
    primary key (id),
	foreign key(classe_id) references tb_classe (id)
);

SELECT * FROM tb_classe;

SELECT * FROM tb_personagem;

INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES (23, "Guerreiro", "Pericia em armas", "Espada de duas mãos");

INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES (42, "Arqueiro", "Precisão", "Arco e flecha");

INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES (55, "Mago", "Piromancia", "Tomo de fogo");

INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES (37, "Ladrão", "invisibilidade", "Adagas");

INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES (78, "Tammer", "Afinidade com animais", "Cajado");



INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id) VALUES ("Jorge","Orc", 3000, 5000, 1500,1);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id) VALUES ("Kaique","Elfo da floresta", 2000, 2000, 2500,2);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id) VALUES ("Jennifer","Elfa das montanhas", 1500, 1000, 5000,3);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id) VALUES ("Braga","Humano", 1000, 500, 10000,4);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id) VALUES ("Guilherme","Elfo negro", 1500, 500, 2000,5);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id) VALUES ("Gabriela","Anã", 2000, 3500, 3000,4);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id) VALUES ("Daniela","Humana", 1700, 2000, 3000,2);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id) VALUES ("Graziela","goblin", 2200, 2500, 1100,1);


SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id;

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id WHERE classe_id = 1;