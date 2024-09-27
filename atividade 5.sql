create database sistema;
use sistema;

create table clientes (
cod_cliente int auto_increment primary key not null,
Nome varchar(50) not null,
rg int not null,
cpf int not null,
telefone int not null,
email varchar (50) not null,
endereco varchar (50) not null
);

create table dependentes (
cod_dep int auto_increment primary key not null,
cod_cliente int not null,
nome varchar(50) not null,
cpf int not null,
foreign key (cod_cliente) references clientes (cod_cliente) 
);

insert into clientes (Nome, rg, cpf, telefone, email, endereco)
values("Isabella",475678890,4152638,99876542,"isabella@gmail.com","rua rosa"),
           ("Giovana",475678891,3467888,3456789,"giovana@gmail.com","rua azul"),
           ("gustavo",475678892,8902638,8875432,"gustavo@gmail.com","rua verde"),
           ("Lucas",475678893,6782638,99854534,"lucas@gmail.com","rua lilas"),
           ("Guilherme",475678894,4151238,9987654,"guilherme@gmail.com","rua amarela");
           
             select * from clientes;
             
desc dependentes;
insert into dependentes (cod_cliente, nome,cpf)
values(6,"Andreia",2756),
           (7,"Edna",3757),
           (8,"Francine",6792),
           (9,"Maria",8893),
             (10,"Marta",788),
               (10,"Luis",8893),
               (9,"adriano",8893),
           (8,"Regina",7889);
             
              select * from dependentes;
              
              
update clientes 
set Nome = "Brenda"
where cod_cliente = 8;

update clientes 
set Nome = "Ramon"
where cod_cliente = 9;

update clientes 
set Nome = "Renato"
where cod_cliente = 10;

update clientes 
set endereco = "rua vermelha"
where cod_cliente = 8;

update clientes 
set endereco = "rua verde agua"
where cod_cliente = 9;

update clientes 
set endereco = "rua marrom"
where cod_cliente = 10;

delete from dependentes
where cod_dep = 18;

delete from dependentes
where cod_dep = 17;

delete from dependentes
where cod_dep = 20;