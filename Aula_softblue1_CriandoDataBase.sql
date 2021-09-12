 
/* Criando  database, tabelas / excluindo uma tabela */

create database curso_sql;

use curso_sql;

create table funcionarios 
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default '0',
    departamento varchar (45) not null,
    primary key(id)
);

create table veiculos 
(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar (45) not null default'',
	placa varchar(10) not null default '',
	primary key (id),
    constraint fk_veiculos_funcionarios foreign key (funcionario_id) references funcionarios (id)
);

create table salarios 
(
	faixa varchar (45) not null,
    inicio double not null,
    fim double not null,
    primary key (faixa)
);

drop table salarios;

create table atribuicao (
id int unsigned not null auto_increment,
profissao varchar (30) not null,
departamento varchar (45) not null,
primary key (id),
constraint af_departamento foreign key (departamento) references funcionarios (departamento)
);
