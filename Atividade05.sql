CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    materia_prima boolean,
    Objetos boolean,
    ferramentas boolean,

    primary key (id)
);

CREATE TABLE tb_produto(
    id bigint auto_increment,
    nome varchar(255),
    peso float,
    Quantidade int,
    preco double,
    dimensoes varchar(255),
	categoria_id bigint,
    
    primary key (id),
	foreign key(categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_categoria;

SELECT * FROM tb_produto;

INSERT INTO tb_categoria(materia_prima, Objetos, ferramentas) VALUES (1, 0, 0);

INSERT INTO tb_categoria(materia_prima, Objetos, ferramentas) VALUES (0, 1, 0);

INSERT INTO tb_categoria(materia_prima, Objetos, ferramentas) VALUES (0, 0, 1);

INSERT INTO tb_produto(nome, peso, quantidade, preco, dimensoes,categoria_id) VALUES ("Saco de Areia", 20.000, 1, 5.00, "35.56 X 66.04", 1);

INSERT INTO tb_produto(nome, peso, quantidade, preco, dimensoes,categoria_id) VALUES ("Saco de Brita", 25.000, 1, 5.50, "35.56 X 66.04", 1);

INSERT INTO tb_produto(nome, peso, quantidade, preco, dimensoes,categoria_id) VALUES ("Maquita", 2.600, 1, 450.00, "26.2 X 21.7 X 18.3", 3);

INSERT INTO tb_produto(nome, peso, quantidade, preco, dimensoes,categoria_id) VALUES ("Furadeira", 1.800, 1, 349.90, "27.4 X 7 X 21", 3);

INSERT INTO tb_produto(nome, peso, quantidade, preco, dimensoes,categoria_id) VALUES ("Esmerilhadeira", 1.700, 1, 199.99, "31.5 X 10.5 X 11.6", 3);

INSERT INTO tb_produto(nome, peso, quantidade, preco, dimensoes,categoria_id) VALUES ("Gesso", 20.000, 1, 21.90 , "65 X 42 X 14", 1);

INSERT INTO tb_produto(nome, peso, quantidade, preco, dimensoes,categoria_id) VALUES ("Piso", 162, 1, 13.99, "20 X 30", 2);

INSERT INTO tb_produto(nome, peso, quantidade, preco, dimensoes,categoria_id) VALUES ("Vaso sanitário", 6.100, 1, 1770.67, "45 X 38.6 X 44.7", 2);


SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id WHERE categoria_id = 3 ;