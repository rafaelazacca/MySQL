create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
create table tb_categoria
(
id bigint auto_increment,
ensino varchar(50) not null,
ead boolean not null,
matricula boolean not null,
primary key (id)
);
insert into tb_categoria (ensino,ead,matricula) values ("Pós-graduação",true,true);
insert into tb_categoria (ensino,ead,matricula) values ("Graduação",true,true);
insert into tb_categoria (ensino,ead,matricula) values ("Mestrado",true,true);
insert into tb_categoria (ensino,ead,matricula) values ("Doutorado",true,true);
insert into tb_categoria (ensino,ead,matricula) values ("Pós-Doutorado",true,true);

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
nome varchar (255) not null,
valor decimal (65,2) not null,
unidade varchar (255) not null,
duracao bigint not null,
turma bigint not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
insert into tb_curso (nome,valor,unidade,duracao,turma,categoria_id) values ("Turismo",500.00,"Heliopolis",3,10,2);
insert into tb_curso (nome,valor,unidade,duracao,turma,categoria_id) values ("Administração",300.00,"Paraíso",5,20,2);
insert into tb_curso (nome,valor,unidade,duracao,turma,categoria_id) values ("Costura",5000.00,"Morro do macaco",8,1,1);
insert into tb_curso (nome,valor,unidade,duracao,turma,categoria_id) values ("Paraquedismo",2000.00,"Boituva",1,7,3);
insert into tb_curso (nome,valor,unidade,duracao,turma,categoria_id) values ("Biologia",1000.00,"Sapopemba",4,2,2);
insert into tb_curso (nome,valor,unidade,duracao,turma,categoria_id) values ("Designer de sobrancelhas",1500.00,"Jandira",6,3,5);
insert into tb_curso (nome,valor,unidade,duracao,turma,categoria_id) values ("YouTuber",30.00,"Paulista",1,43,2);
insert into tb_curso (nome,valor,unidade,duracao,turma,categoria_id) values ("Farmácia",800.00,"Penha",5,69,4);

select * from tb_curso where valor > 500.00;
select * from tb_curso where valor between 500 and 3000;
select * from tb_curso where nome like "%c%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.ensino = "Graduação";
