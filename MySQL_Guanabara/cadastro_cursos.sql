use cadastro;
drop table if exists cursos;
create table cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default 2016
) default charset utf8mb4;

alter table cursos
add column idcurso int first,
add primary key (idcurso);

describe cursos;


insert into cursos values
(1, 'HTML4', 'Curso de HTML5', 40, 37, 2014),
(2, 'Algoritmos', 'Lógica de Programação', 20, 15, 2014),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
(4, 'PGP', 'Curso de PHP para iniciantes', 40, 20, 2010),
(5, 'Jarva', 'Introdução à Linguagem Java', 10, 29, 2000),
(6, 'MySQL', 'Bancos de Dados MySQL', 30, 15, default),
(7, 'Word', 'Curso completo de Word', 40, 30, default),
(8, 'Sapateado', 'Danças Rítmicas', 40, 30, 2018),
(9, 'Cozinha Árabe', 'Aprenda a fazer Kibe', 40, 30, 2018),
(10, 'YouTuber', 'Gerar polêmica e ganhar inscritos', 5, 2, 2018);

update cursos set nome="Java", carga=40, ano=2015 where idcurso=5 limit 1;
update cursos set ano=2018, carga=0 where ano=2050 limit 3;

delete from cursos where ano=2018 limit 2;

/*truncate cursos; Deleta todos os dados da tabela*/

select * from cursos;