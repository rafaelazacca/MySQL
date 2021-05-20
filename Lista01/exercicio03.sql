create database db_RH;
use db_RH;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(30) not null,
salario decimal not null,
cpf bigint(11) not null,
telefone bigint(8) not null,
primary key (id)
);

insert into tb_funcionarios(nome,salario,cpf,telefone) values ("Rafaela", 5000.0, 34534567543, 34567865);
insert into tb_funcionarios(nome,salario,cpf,telefone) values ("Caio", 2000.0, 34468493485, 45678765);
insert into tb_funcionarios(nome,salario,cpf,telefone) values ("Marcelo", 4000.0, 24468693485, 45678765);
insert into tb_funcionarios(nome,salario,cpf,telefone) values ("Pamela", 3000.0, 37768493785, 43234567);
insert into tb_funcionarios(nome,salario,cpf,telefone) values ("Mayara", 1000.0, 18468493485, 56789765);


select * from tb_funcionarios;
select * from tb_funcionarios where salario>2000.0;
select * from tb_funcionarios where salario<2000.0;

update tb_funcionarios set salario=7000.0 where id=1;
update tb_funcionarios set salario=2000.0 where id=2;
update tb_funcionarios set salario=4000.0 where id=3;
update tb_funcionarios set salario=3000.0 where id=4;
update tb_funcionarios set salario=1000.0 where id=5;




