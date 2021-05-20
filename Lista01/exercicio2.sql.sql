create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar (30) not null,
nota decimal not null,
curso varchar(30) not null,
turma varchar(30) not null,
media decimal not null,
primary key (id)
);

insert into tb_alunos(nome,nota,curso,turma,media) values ("Felipe", 10, "Desenvolvedor","20",8.0);
insert into tb_alunos(nome,nota,curso,turma,media) values ("Maete", 5, "TI", "21", 7.0);
insert into tb_alunos(nome,nota,curso,turma,media) values ("Richard", 9, "Informática", "22",10);
insert into tb_alunos(nome,nota,curso,turma,media) values ("Marcos", 6, "Generation","23",7);
insert into tb_alunos(nome,nota,curso,turma,media) values ("televisao", 8, "Generation","24",3);

select * from tb_alunos;

select * from tb_alunos where nota>7.0;
select * from tb_alunos where nota<7.0;

update tb_alunos set nome="Ana" where id=5;