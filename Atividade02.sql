CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    brotinho boolean,
    doce boolean,
    refrigerante boolean,

    primary key (id)
);

CREATE TABLE tb_pizza(
    id bigint auto_increment,
    nome varchar(255),
    tamanho  int,
    recheio_da_borda varchar(255),
    preco double,
	refrigerante varchar(255),
	categoria_id bigint,
    
    primary key (id),
	foreign key(categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(doce, brotinho, refrigerante) VALUES (1, 1, 1);

INSERT INTO tb_categoria(doce, brotinho, refrigerante) VALUES (1, 1, 0);

INSERT INTO tb_categoria(doce, brotinho, refrigerante) VALUES (1, 0, 0);

INSERT INTO tb_categoria(doce, brotinho, refrigerante) VALUES (0, 1, 1);

INSERT INTO tb_categoria(doce, brotinho, refrigerante) VALUES (0, 0, 1);

INSERT INTO tb_categoria(doce, brotinho, refrigerante) VALUES (1, 0, 1);

INSERT INTO tb_categoria(doce, brotinho, refrigerante) VALUES (0, 1, 0);


INSERT INTO tb_pizza(nome, tamanho, recheio_da_borda, preco, refrigerante,categoria_id) VALUES ("Portuguesa", 8, "Sem recheio", 70,"Coca-cola",5);

INSERT INTO tb_pizza(nome, tamanho, recheio_da_borda, preco, refrigerante,categoria_id) VALUES ("Quatro queijos", 4, "Sem recheio", 60, "Sem refrigerante",7);

INSERT INTO tb_pizza(nome, tamanho, recheio_da_borda, preco, refrigerante,categoria_id) VALUES ("Brigadeiro", 8, "Sem recheio", 65, "Sem refrigerante",3);

INSERT INTO tb_pizza(nome, tamanho, recheio_da_borda, preco, refrigerante,categoria_id) VALUES ("Portuguesa", 4, "Catupiry", 55,"Guarana-antartica",4);

INSERT INTO tb_pizza(nome, tamanho, recheio_da_borda, preco, refrigerante,categoria_id) VALUES ("Marguerita", 8, "Chocolate", 70, "Kuat",5);

INSERT INTO tb_pizza(nome, tamanho, recheio_da_borda, preco, refrigerante,categoria_id) VALUES ("M&Ms", 4, "Sem recheio", 40, "Fanta Uva",1);

INSERT INTO tb_pizza(nome, tamanho, recheio_da_borda, preco, refrigerante,categoria_id) VALUES ("Romeu e Julieta", 8, "Chocolate", 80, "Sem refrigerante",2);


SELECT * FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco >= 29 AND preco <= 60;

SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id WHERE categoria_id = 5;