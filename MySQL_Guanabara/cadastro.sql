drop database if exists cadastro;
create database cadastro;
use cadastro;
create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum("M", "F"),
peso decimal(5,2),
altura float(3,2),
nacionalidade varchar(20) default "Brasil",
primary key (id)
) default charset utf8mb4;

insert into pessoas values
(default, 'Godofredo', '1984-01-02', 'M', 78.5, 1.83, default),
(default, 'Maria', '1999-12-30', 'F', 55.2, 1.65, 'Portugal');

select * from pessoas;
