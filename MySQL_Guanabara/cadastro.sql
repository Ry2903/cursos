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

alter table pessoas
add column profissao varchar(10) after nome, /*Para qualquer "add" dps de algo, use 'after "nome da coluna"'*/
add column codigo int first, /*para adicionar na primeira posição, use first'*/
modify column profissao varchar(20) not null, /* modifica o tipo primitivo e as constraint*/
change column profissao prof varchar(20); /*Altera o nome da coluna*/

alter table pessoas
rename to gafanhotos; /*Renomeia  a tabela*/

describe pessoas;
