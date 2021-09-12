use curso_sql;

/* Comandos especiais*/

select * from funcionarios;

select count(*) from funcionarios;
select count(*) from funcionarios where salario > 3000;

select distinct count(*) funcionarios;
select distinct (departamento) from funcionarios;

select * from funcionarios order by salario desc limit 3;
select departamento, avg(salario) from funcionarios group by departamento;
select departamento, avg(salario) from funcionarios group by departamento having avg(salario) > 3500;
select count(*) from funcionarios where salario > 3000;

select departamento, count(*) from funcionarios group by departamento;

select sum(salario) from funcionarios;
select sum(salario) from funcionarios where departamento = 'enfermagem';

select avg(salario) from funcionarios;
select avg(salario) from funcionarios where departamento = 'enfermagem';