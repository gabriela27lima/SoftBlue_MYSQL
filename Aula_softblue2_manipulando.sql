/* inserindo  e modificando dados */

use curso_sql;

/* Inserindo dados na tabela funcionários*/

insert into funcionarios (nome, salario,departamento) values ( 'Maria', 1500, 'Enfermagem');
insert into funcionarios (nome, salario,departamento) values ( 'Josenildo', 2700, 'Auditoria');
insert into funcionarios (nome, salario,departamento) values ( 'Etevaldo', 2400, 'SCIH');
insert into funcionarios (nome, salario,departamento) values ( 'Pedro', 3200, 'Qualidade');
insert into funcionarios (nome, salario,departamento) values ( 'Josefina', 2100, 'Enfermagem');
insert into funcionarios (nome, salario,departamento) values ( 'Clodoaldo', 1500, 'Enfermagem');
insert into funcionarios (nome, salario,departamento) values ( 'Rubens', 2400, 'Qualidade');
insert into funcionarios (nome, salario,departamento) values ( 'Normandia', 2800, 'Qualidade');
insert into funcionarios (nome, salario,departamento) values ( 'Agnalda', 1700, 'Enfermagem');

/* Inserindo dados na tabela veiculos*/

insert into veiculos (veiculo, placa) values ('fusca', 'XVC2021');
insert into veiculos (veiculo, placa) values ('cadete', 'ABC2021');
insert into veiculos (veiculo, placa) values ('Tesla', 'RIC2021');

insert into veiculos (funcionario_id) values (5);
delete from veiculos where id=4;
UPDATE veiculos SET funcionario_id = 5 WHERE id = 2;
UPDATE veiculos SET funcionario_id = 1 WHERE id = 3;
UPDATE veiculos SET funcionario_id = 3 WHERE id = 1;

/* Inserindo dados na tabela atribuição*/

insert into atribuicao (id, profissao, departamento) values (1, 'Enfermeiro', 'Enfermagem');
insert into atribuicao (id, profissao, departamento) values (3, 'Analista_Qualidade', 'Qualidade');
insert into atribuicao (id, profissao, departamento) values (4, 'Médico', 'Auditoria');

