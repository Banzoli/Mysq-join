CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    tecnologia boolean,
    design boolean,
    gestão boolean,

    primary key (id)
);

CREATE TABLE tb_produto(
    id bigint auto_increment,
    nome varchar(255),
    tempo varchar(255),
    proxima_turma varchar(255),
    preco_mes double,
    aula_online boolean,
	categoria_id bigint,
    
    primary key (id),
	foreign key(categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(tecnologia, design, gestão) VALUES (1, 0, 0);

INSERT INTO tb_categoria(tecnologia, design, gestão) VALUES (0, 1, 0);

INSERT INTO tb_categoria(tecnologia, design, gestão) VALUES (0, 0, 1);

INSERT INTO tb_produto(nome, tempo, proxima_turma, preco_mes, aula_online,categoria_id) VALUES ("Administração", "4 anos", "11/04/22", 149.90, 1, 3);

INSERT INTO tb_produto(nome, tempo, proxima_turma, preco_mes, aula_online,categoria_id) VALUES ("Ciência da Computação", "4 anos", "02/05/22", 169.90, 0, 1);

INSERT INTO tb_produto(nome, tempo, proxima_turma, preco_mes, aula_online,categoria_id) VALUES ("Sistemas para Internet", "2,5 anos", "05/06/22", 159.90, 1, 1);

INSERT INTO tb_produto(nome, tempo, proxima_turma, preco_mes, aula_online,categoria_id) VALUES ("Marketing", "2 anos", "14/04/22", 159.90, 0, 3);

INSERT INTO tb_produto(nome, tempo, proxima_turma, preco_mes, aula_online,categoria_id) VALUES ("Jogos Digitais", "2,5 anos", "17/05/22", 149.90, 1, 1);

INSERT INTO tb_produto(nome, tempo, proxima_turma, preco_mes, aula_online,categoria_id) VALUES ("Recursos Humanos", "2 anos", "30/03/22", 169.90, 0, 3);

INSERT INTO tb_produto(nome, tempo, proxima_turma, preco_mes, aula_online,categoria_id) VALUES ("Design de games", "2,5 anos", "26/05/22", 149.90, 1, 2);

INSERT INTO tb_produto(nome, tempo, proxima_turma, preco_mes, aula_online,categoria_id) VALUES ("Artes visuais", "3 anos", "13/06/22", 159.90, 0, 2);


SELECT * FROM tb_produto WHERE preco_mes > 50;

SELECT * FROM tb_produto WHERE preco_mes >= 3 AND preco_mes <= 60;

SELECT * FROM tb_produto WHERE nome LIKE "%j%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id WHERE categoria_id = 3 ;