create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
	id bigint auto_increment,
    Tipo varchar(255) not null,
    Uso varchar(255) not null,
    Cliente boolean not null, 
    primary key (id)
    );
    
    insert tb_categoria (Tipo, Uso, Cliente) values ("Casa", "Hidraulica", true);
    insert tb_categoria (Tipo, Uso, Cliente) values ("Casa", "Eletrica", true);
    insert tb_categoria (Tipo, Uso, Cliente) values ("Apartamento", "Hidraulica", true);
    insert tb_categoria (Tipo, Uso, Cliente) values ("Jardinagem", "Eletrica", true);
    insert tb_categoria (Tipo, Uso, Cliente) values ("Jardinagem", "Ferramentas", true);
    
    select * from tb_categoria;
    
    create table tb_produto (
	id bigint auto_increment,
    Descricao varchar (255) not null,
    Valor decimal (10,2) not null,
    Estoque int not null,
    Marca varchar(255) not null,
    Cor varchar(255) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
    insert tb_produto (Descricao, Valor, Estoque, Marca, Cor, categoria_id) values ("Chuveiro", 180.00, 20, "Lorenzetti", "Branco", 1);
    insert tb_produto (Descricao, Valor, Estoque, Marca, Cor, categoria_id) values ("Chuveiro", 100.00, 15, "Hydra","Aluminio", 3);
    insert tb_produto (Descricao, Valor, Estoque, Marca, Cor, categoria_id) values ("Torneira", 95.00, 30, "Deca","Branca", 3);
	insert tb_produto (Descricao, Valor, Estoque, Marca, Cor, categoria_id) values ("VAP", 239.90, 5, "Lavor", "Amarela", 4);
	insert tb_produto (Descricao, Valor, Estoque, Marca, Cor, categoria_id) values ("Pa", 44.90, 40, "Tramontina","Aluminio", 5);
	insert tb_produto (Descricao, Valor, Estoque, Marca, Cor, categoria_id) values ("Pa", 39.90, 80, "Tramontina","Preta", 5);
	insert tb_produto (Descricao, Valor, Estoque, Marca, Cor, categoria_id) values ("Lampada LED", 69.90, 25, "Philips","Branca", 2);
	insert tb_produto (Descricao, Valor, Estoque, Marca, Cor, categoria_id) values ("Lampada", 3.90, 100, "Philips","Branca", 2);
    
    select * from tb_produto;
    
    select * from tb_produto where Valor > 50;
    
    select * from tb_produto where Valor between 3 and 60;
    
    select * from tb_produto where Descricao like "%c%";
    
    select * from tb_produto inner join tb_categoria;
    
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.Tipo = "Casa";