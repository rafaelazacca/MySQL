create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint(5) auto_increment,
ativo boolean,
tipo varchar (200),
primary key (id)
);

insert tb_classe (ativo, tipo ) values (true,"Fogo");
insert tb_classe (ativo, tipo) values (true,"Água");
insert tb_classe (ativo, tipo) values (true,"Elétrico");
insert tb_classe (ativo, tipo) values (true,"Fada");
insert tb_classe (ativo, tipo) values (true,"Dragão");

create table tb_personagem(
id bigint auto_increment,
nome varchar (250),
poder varchar (225),
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id) 
);

insert tb_personagem (nome,poder,ataque,defesa,classe_id) values ("Charmander", "Rajada de Fogo", 3500, 4700,1);
insert tb_personagem (nome,poder,ataque,defesa,classe_id) values ("Squirtle", "Jato dÁgua", 2500, 3700,2);  
insert tb_personagem (nome,poder,ataque,defesa,classe_id) values ("PiKachu", "Relâmpago", 3000, 1800,3);
insert tb_personagem (nome,poder,ataque,defesa,classe_id) values ("Togepi", "Clarão Deslumbrante", 2200, 3000,4);
insert tb_personagem (nome,poder,ataque,defesa,classe_id) values ("Dragonite", "Cauda do Dragão", 900, 4500,5);

select * from tb_personagem;
select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%C%"; 
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id; 
select * from tb_personagem where classe_id = 2; 

-- Todos os personagens do mesmo tipo
select * from tb_personagem inner join tb_classe on  tb_classe.id = tb_personagem.classe_id where tb_classe.tipo = "água"


