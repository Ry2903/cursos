select * from cursos order by nome; /*Asterisco puxa todas as colunas*/
select ano, nome, carga from cursos order by ano, nome; /*order by = organize por*/
select nome, descricao, ano from cursos where ano<=2015 order by ano, nome; /*where = onde a coluna tenha a condição*/
select nome, ano from cursos where ano between 2014 and 2016; /*between = entre duas condições*/
select nome, descricao, ano from cursos where ano in(2014, 2016, 2020) order by ano; /*in = várias condições dentro de um where*/
select nome, carga, totaulas from cursos where carga > 35 and totaulas <30; /*and = só mostra se aplicar AMBAS condições*/
select nome, carga, totaulas from cursos where carga > 35 or totaulas <30; /*or = só mostra se aplicar UMA DAS condições*/

select * from cursos where nome like 'p%'; /*like = parecido com; % = nenhum ou vários caracteres;  nesse caso = P no início*/
select * from cursos where nome like '%a'; /*a no final*/
select * from cursos where nome like '%a%'; /*a em qualquer posição*/
select * from cursos where nome not like '%a%'; /*que não tenha a em qualquer posição*/
select * from cursos where nome like 'ph%p%';/*que inicie com Ph, tenha qualquer coisa no meio, e acabe com p*/

select distinct nacionalidade from gafanhotos; /*distinct  = se tiver dados repetidos, mostre apenas 1x*/
select count(nome) from cursos; /*count = conta quantos dados tem naquela coluna*/
select max(totaulas) from cursos where ano=2016; /*acha o maior dado naquela coluna*/
select min(totaulas) from cursos  where ano=2016; /*acha o menor dado naquela coluna*/
select sum(totaulas) from cursos where ano=2016; /*soma os dados daquela coluna*/
select avg(totaulas) from cursos where ano=2016; /*tira a média dos dados daquela coluna*/

select totaulas, count(*) from cursos group by totaulas;

select ano, count(*) from cursos group by ano having count(ano) >= 5 order by count(*) desc; /*Having só pode ser usado colocando o campo do group by;
o Having no group by é a msm coisa do where*/

select carga, count(*) from cursos where ano > 2015 group by carga having carga>(select avg(carga) from cursos); /*Select dentro de select*/