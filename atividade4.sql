create database cadastrocliente;

use cadastrocliente;

create table cliente (
id int auto_increment primary key not null,
nome varchar(100) not null,
cpf int not null,
telefone varchar (30) not null,
endereco varchar(100) not null
);

create table depen (
id_depen int auto_increment primary key not null,
cpf int not null,
nome varchar(100) not null,
id int,
foreign key (id) references cliente (id)
);

