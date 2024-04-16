use empregados_db;

/*Operadores Matemáticos Baseados em Funções*/

select avg(salario) as media_renda from empregado where sexo = "F";
select avg(salario) as media_renda from empregado where sexo = "M";
select max(salario) as maior_renda, min(salario) as menor_renda from empregado where sexo = "F";
select max(salario) as maior_renda, min(salario) as menor_renda from empregado where sexo = "M";

/*Funções de Formatação e Padronização*/

select nome as empregado, format((salario), 2) as renda, format((salario * 0.12), 2) as INSS, format((salario * 0.15), 2) as IRPF from empregado;
select char_length(nome) as tamanho_nome, (char_length(nome) + (rand() * char_length(nome)) * cod_emp ) as id_aleatorio from empregado ;
select 
	replace(nome, "A","") as nome_modificado,
    char_length(nome) as tabela_nome,
    (char_length(nome) * (rand() * char_length(replace(nome, "A",""))) * cod_emp ) as id_aleatorio
from empregado;
