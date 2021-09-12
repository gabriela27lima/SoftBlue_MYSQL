create database gabriela
default character set utf8
default collate utf8_general_ci;
use gabriela;
create table doutorado (
id int not null auto_increment,
dia_consulta date,  
area enum('Imuno','Economia','Dados'),
tema varchar(20),
artigo tinytext,
prioridade enum('B','M','A'),
primary key (id)
)default charset = utf8;

insert into doutorado values
('2021-08-01','Dados','Machine_learning','https://sol.sbc.org.br/livros/index.php/sbc/catalog/download/29/95/245-1?inline=1','A');
 
select * from doutorado;

desc doutorado;

create table medico_memed (
medico_id int not null auto_increment,
nome varchar (50),
email varchar (30),
cidade varchar (20),
estado varchar (20),
especialidade varchar (20),
data_cadastro date,
primary key (medico_id)
) default charset = utf8;