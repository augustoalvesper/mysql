create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint unique auto_increment,
tipo varchar(255),
disponivel boolean,
primary key (id)
);

insert into tb_categoria(tipo, disponivel) values("massafina",true);
insert into tb_categoria(tipo, disponivel) values("borda",true);
insert into tb_categoria(tipo, disponivel) values("integral",true);

create table tb_pizza(
id bigint unique auto_increment,
nome varchar(255) not null,
queijo varchar(255),
valor decimal,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza(nome, queijo, valor, categoria_id) values("calabresa","hot dog",50.00,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("salame","atum",45.00,3);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("mussarela","",55.00,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("Carne com queijo","espanhola",30.00,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("queijo","frango",65.00,2);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("salada","pepino",80.00,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("rucula e atum","catupiry e calabresa",95.00,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("portuguesa","calabresa e queijo",35.00,1);

select * from tb_pizza where valor > 30.00;
select * from tb_pizza where valor between 20.00 and 60.00;
select * from tb_pizza where nome like "C%";

select tb_pizza.nome, tb_pizza.queijo, tb_pizza.valor, tb_categoria.tipo
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.nome, tb_categoria.tipo
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.id = 2