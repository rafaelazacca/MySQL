-- Criar o Banco de Dados
create database db_quitanda;

-- Acessa o Banco de Dados
use db_quitanda;

-- Criar Tabela 
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
primary key (id)
);
-- Insere dados na tabela
insert into tb_produtos(nome, preco) values ("tomate", 50.00);
insert into tb_produtos(nome, preco) values("maçã", 5.00);

-- Visualizar Dados
select * from tb_produtos;
select nome from tb_produtos;
select * from tb_produtos where id=1;
select * from tb_produtos where preco>5;

-- Altera a estrutura da tabela criando nova coluna
alter table tb_produtos add descricao varchar(255);
alter table tb_produtos drop descricao;

-- Alterar dados da tabela NÃO ESQUECE DO WHERE 
update tb_produtos set preco=10 where id=1;

-- Deletar dados da tabela 
delete from tb_produtos where id=2;