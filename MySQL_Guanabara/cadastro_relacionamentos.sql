describe gafanhotos;
alter table gafanhotos add column cursopreferido int;
alter table gafanhotos add foreign key (cursopreferido) references cursos(idcurso); /*chave estrangeiraa feita a partir do ID DO CURSO*/
update gafanhotos set cursopreferido = 6 where id =1;
select * from gafanhotos;

delete from cursos where idcurso=28;

select g.nome, g.cursopreferido, c.nome, c.ano from gafanhotos as g inner join cursos as c on c.idcurso = g.cursopreferido;
/*- o comando mostra o NOME DO CURSO a partir da chave estrangeira (cursopreferido [FK] = idcurso [PK])
- o 'as' faz um 'apelido' para o nome da tabela
- INNER JOIN só mostra os dados da tabela q recebeu a fk que tem relação com a tabela onde a fk é a pk (ou seja: inner join vai mostrar os dados da tabela g
 q tem alguma relação com os da tabela c*/
 
 select g.nome, g.cursopreferido, c.nome, c.ano from gafanhotos as g left join cursos as c on c.idcurso = g.cursopreferido;
 /*'left join' mostra os dados colocando como preferencia a tabela da esquerda do comando 'join', nesse caso, g*/
 
 select g.nome, g.cursopreferido, c.nome, c.ano from gafanhotos as g right join cursos as c on c.idcurso = g.cursopreferido;
  /*'right join' mostra os dados colocando como preferencia a tabela da direito do comando 'join', nesse caso, c*/

create table g_assiste_c (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
) default charset = utf8mb4;

insert into g_assiste_c values
(default, '2014-03-01', 1, 2);

select * from g_assiste_c;

select g.nome, c.nome from gafanhotos g join g_assiste_c a on g.id = a.idgafanhoto join cursos c on a.idcurso = c.idcurso order by g.nome;
/* Join dentro de Join (relacionando com três tabelas)*/