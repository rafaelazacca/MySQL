create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (30) not null,
preco decimal not null,
marca varchar(30) not null,
primary key (id)
);

insert into tb_produtos(nome,preco,marca) values ("televisao", 900.0, "brastemp");
insert into tb_produtos(nome,preco,marca) values("celular", 700.0, "Samsung");
insert into tb_produtos(nome,preco,marca) values("notebook", 3000.0, "Samsung");
insert into tb_produtos(nome,preco,marca) values("fones", 100.0, "Apple");

select * from tb_produtos;
select * from tb_produtos where preco>500.0;
select * from tb_produtos where preco<500.0;

update tb_produtos set preco=1000.0 where id=1;

