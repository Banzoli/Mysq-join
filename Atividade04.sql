CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    Frutas boolean,
    Vegetais boolean,
    Legumes boolean,

    primary key (id)
);

CREATE TABLE tb_produto(
    id bigint auto_increment,
    nome varchar(255),
    gramas  float,
    Quantidade int,
    preco double,
    embalagem boolean,
	categoria_id bigint,
    
    primary key (id),
	foreign key(categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(frutas, vegetais, legumes) VALUES (1, 0, 0);

INSERT INTO tb_categoria(frutas, vegetais, legumes) VALUES (0, 1, 0);

INSERT INTO tb_categoria(frutas, vegetais, legumes) VALUES (0, 0, 1);

INSERT INTO tb_produto(nome, gramas, quantidade, preco, embalagem,categoria_id) VALUES ("Banana", 602, 7, 3.19, 0,1);

INSERT INTO tb_produto(nome, gramas, quantidade, preco, embalagem,categoria_id) VALUES ("Morango", 240, 10, 5.00, 1,1);

INSERT INTO tb_produto(nome, gramas, quantidade, preco, embalagem,categoria_id) VALUES ("Beringela", 500, 1, 4.50, 0,3);

INSERT INTO tb_produto(nome, gramas, quantidade, preco, embalagem,categoria_id) VALUES ("Alface", 414, 1, 5.99, 1,2);

INSERT INTO tb_produto(nome, gramas, quantidade, preco, embalagem,categoria_id) VALUES ("Cenoura", 1000, 6, 11.99, 1,3);

INSERT INTO tb_produto(nome, gramas, quantidade, preco, embalagem,categoria_id) VALUES ("Maçã", 220, 1, 4.38 , 0,1);

INSERT INTO tb_produto(nome, gramas, quantidade, preco, embalagem,categoria_id) VALUES ("Couve", 250, 1, 2.99, 0,2);

INSERT INTO tb_produto(nome, gramas, quantidade, preco, embalagem,categoria_id) VALUES ("Mandioca", 1000, 8, 7.89, 1,3);


SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id WHERE categoria_id = 1 ;