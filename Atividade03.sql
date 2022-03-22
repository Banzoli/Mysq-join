CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    nome varchar(255),
    preco double,
    validade varchar(255),

    primary key (id)
);

CREATE TABLE tb_produto(
    id bigint auto_increment,
    medicamento boolean,
    planta_medicinal boolean,
    cosmetico boolean,
    perfume boolean,
    tarja_preta boolean,
	categoria_id bigint,
    
    primary key (id),
	foreign key(categoria_id) references tb_categoria (id)
);
SELECT * FROM tb_categoria;

SELECT * FROM tb_produto;

INSERT INTO tb_categoria(nome, preco, validade) VALUES ("Dipirona",15, "1 ano");

INSERT INTO tb_categoria(nome, preco, validade) VALUES ("oxicodona",150, "2 anos");

INSERT INTO tb_categoria(nome, preco, validade) VALUES ("Capim-cidreira", 5, "15 dias");

INSERT INTO tb_categoria(nome, preco, validade) VALUES ("Tinta para cabelo", 40, "2 meses");

INSERT INTO tb_categoria(nome, preco, validade) VALUES ("Quazar",65, "5 anos");



INSERT INTO tb_produto(medicamento, planta_medicinal, cosmetico, perfume, tarja_preta,categoria_id) VALUES (1, 0, 0, 0, 0,1);

INSERT INTO tb_produto(medicamento, planta_medicinal, cosmetico, perfume, tarja_preta,categoria_id) VALUES (1, 0, 0, 0, 1,2);

INSERT INTO tb_produto(medicamento, planta_medicinal, cosmetico, perfume, tarja_preta,categoria_id) VALUES (1, 1, 0, 0, 0,3);

INSERT INTO tb_produto(medicamento, planta_medicinal, cosmetico, perfume, tarja_preta,categoria_id) VALUES (0, 0, 1, 0, 0,4);

INSERT INTO tb_produto(medicamento, planta_medicinal, cosmetico, perfume, tarja_preta,categoria_id) VALUES (0, 0, 1, 1, 0,5);

INSERT INTO tb_produto(medicamento, planta_medicinal, cosmetico, perfume, tarja_preta,categoria_id) VALUES (0, 0, 1, 0, 0,4);

INSERT INTO tb_produto(medicamento, planta_medicinal, cosmetico, perfume, tarja_preta,categoria_id) VALUES (1, 1, 0, 0, 0,3);

INSERT INTO tb_produto(medicamento, planta_medicinal, cosmetico, perfume, tarja_preta,categoria_id) VALUES (1, 0, 0, 0, 0,1);


SELECT * FROM tb_categoria WHERE preco > 50;

SELECT * FROM tb_categoria WHERE preco >= 3 AND preco <= 60;

SELECT * FROM tb_categoria WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id WHERE categoria_id = 1;