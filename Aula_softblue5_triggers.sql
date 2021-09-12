use curso_sql;

create table clientes
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    valor double not null default '0',
    pagamento varchar (3) not null,
    primary key(id)
);

insert into clientes (nome, valor, pagamento) values ('Ronaldo', 5000,'sim'); 
insert into clientes (nome, valor, pagamento) values ('Messi', 15000,'nao');
insert into clientes (nome, valor, pagamento) values ('Marta', 300,'nao');
insert into clientes (nome, valor, pagamento) values ('Gabriela', 700,'sim');
insert into clientes (nome, valor, pagamento) values ('Jaqueline', 1500,'nao');
insert into clientes (nome, valor, pagamento) values ('Hortencia', 900,'sim');
insert into clientes (nome, valor, pagamento) values ('Neymar', 5750,'nao');
insert into clientes (nome, valor, pagamento) values ('Cristiano', 700,'sim');
insert into clientes (nome, valor, pagamento) values ('Roberto', 1500,'nao');
insert into clientes (nome, valor, pagamento) values ('Luana', 900,'sim');
insert into clientes (nome, valor, pagamento) values ('Vitor', 5750,'nao');

select * from clientes;

call limpa_lista_pago;

create trigger gatilho_limpa_pagamento
before insert
on clientes
for each row
call limpa_lista_pago ();

drop trigger gatilho_limpa_pagamento;