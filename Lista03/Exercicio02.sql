create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria (
id bigint auto_increment,
tamanho varchar (20)not null,
entrega boolean not null,
bordaRecheada boolean not null,

primary key (id)
);
    insert into tb_pizza(sabor, preco, nome, categoria_id) values ("Salgada", 46.00,"Quatro Queijos", 2);
    insert into tb_pizza(sabor, preco, nome,  categoria_id) values ("Salgada", 48.00,"Marguerita", 1);
    insert into tb_pizza(sabor, preco, nome,  categoria_id) values ("Doce", 64.00,"Nutella e Morango", 4);
    insert into tb_pizza(sabor, preco, nome,  categoria_id) values ("Salgada", 37.00,"Calabresa", 5);
    insert into tb_pizza(sabor, preco, nome,  categoria_id) values ("Doce", 45.00,"Romeu e Julieta", 4);
    insert into tb_pizza(sabor, preco, nome,  categoria_id) values ("Doce", 46.00,"Churros", 4);
    insert into tb_pizza(sabor, preco, nome,  categoria_id) values ("Doce", 49.00,"Abacaxi com Chocolate Branco", 4);
    insert into tb_pizza(sabor, preco, nome,  categoria_id) values ("Salgada", 32.00,"Mussarela", 3);

    create table tb_pizza (
    id bigint auto_increment,
    sabor varchar (10) not null,
    preco decimal(10,2) not null,
    nome varchar (30) not null,
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
    );

    insert into tb_categoria (tamanho, entrega, bordaRecheada ) values ("Média", true, true);
    insert into tb_categoria (tamanho, entrega, bordaRecheada ) values ("Grande", true, true);
    insert into tb_categoria (tamanho, entrega,bordaRecheada) values ("Broto", true, false);
    insert into tb_categoria (tamanho, entrega, bordaRecheada ) values ("Doce", true, false);
    insert into tb_categoria (tamanho, entrega, bordaRecheada) values ("Quadrada", true, true);
    
    select * from tb_pizza where preco > 45;
    select * from tb_pizza where preco between 29 and 60;
    select * from tb_pizza where nome like  "%C%";
    select * from tb_pizza inner join tb_categoria on  tb_categoria.id = tb_pizza.categoria_id;
	select * from tb_pizza inner join tb_categoria on  tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tamanho = "doce"