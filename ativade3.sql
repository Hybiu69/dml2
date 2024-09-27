create database gersalarios;

use gersalarios;

create table cargo (
cargo_id int auto_increment primary key not null,
nome varchar(100) not null,
salario decimal(10,2) not null,
descricao varchar(100)
); 

create table funcionario(
id int auto_increment primary key not null,
nome varchar(100) not null,
sobrenome varchar(100)not null,
email varchar(100)not null,
cargo_id int not null,
data_con date not null,
foreign key (cargo_id) references cargo (cargo_id)
);

insert into cargo(nome,salario,descricao)
values ("DEV front end",11000.00,"Trabalha na interface"),("DEV back end",15000.00,"Trabalha nos bastidores"),("DEV Full Stack",20000.00,"Trabalha em ambos");

select * from cargo
where salario >=11000.00 and salario <=15000.00;

insert into funcionario (nome,sobrenome,email,cargo_id,data_con)
values("João","Silva","joãosilva@gmail.com",1,"2024-9-25"),("Joana","Silveira","joana@gmail.com",2,"2024-09-25"),("Lucas","Eduardo","lucas@gmail.com",3,"2024-09-25"),
("Diogo","Texeira","diogo@gmail.com",1,"2024-09-25"),("Mariana","Ferreira","mariana@gmail.com",2,"2024-09-25");

select * from funcionario;

update funcionario
set data_con = "2024-09-24"
