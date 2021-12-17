SELECT * FROM db_generation_game_online.tb_classe;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
tipo varchar(255) not null,
arma varchar(255),
nivel int,
primary key(id)
);

insert into tb_classe(tipo, arma, nivel) values ("recruta","cacetete",2);
insert into tb_classe(tipo, arma, nivel) values ("soldado","faca",3);
insert into tb_classe(tipo, arma, nivel) values ("cabo","pistola",4);
insert into tb_classe(tipo, arma, nivel) values ("sargento","fuzil",5);
insert into tb_classe(tipo, arma, nivel) values ("tenente","metralhadora",6);

create table tb_personagem(
id bigint auto_increment unique,
nome varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem(nome,ataque,defesa,classe_id) values("Augusto",8000,5000,5);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Arthur",7000,4000,2);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Nal",10000,1000,4);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Mateus",6000,9000,4);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Claudia",5000,4000,3);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Daniel",3000,2000,3);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Malu",2500,3500,3);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Clara",1000,2000,1);

select * from tb_personagem;
select * from tb_personagem where ataque>1000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "c%";

select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_classe.tipo
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_classe.tipo
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id
where tb_classe.id = 2


