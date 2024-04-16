/*Extração com Subquery*/
use empregados_db;
select * from empregado where cod_depto in(
	select cod_depto from departamento where cod_depto % 2 = 0
);

select * from empregado;
/*Cálculo com data */

select * from empregado where cod_emp in(
select cod_emp from dependente where floor(datediff(now(), dt_nascimento) / 365) <= 18
);

