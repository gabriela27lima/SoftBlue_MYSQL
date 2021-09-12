
/* Uso de select e where*/

select * from funcionarios;
select * from veiculos;
select * from atribuicao;
select * from funcionarios where salario > 2000;
select * from funcionarios where salario < 2000;
select * from funcionarios where departamento = 'Qualidade';
select * from funcionarios where id = 4;

/* Permissão para modificar todos os dados da coluna numa tabela*/

set sql_safe_updates = 0;
-- 
update funcionarios set salario = round(salario * 1.2,2);

/* Aprendendo o uso do Join :) */

select *from funcionarios f inner join veiculos v on f.id = v.funcionario_id;

select *from funcionarios f left join veiculos v on f.id = v.funcionario_id;

select *from funcionarios f inner join atribuicao a using (departamento);

select *from funcionarios f 
inner join veiculos v on f.id = v.funcionario_id 
inner join atribuicao a on f.departamento = a.departamento;