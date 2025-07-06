--Aula 23: Utilizando SELECT junto com o PL/SQL
drop table empregado;

create table empregado(
    id number,
    nome varchar2(40),
    salario number
);

insert into empregado values (100, 'Karol', 15000);
insert into empregado values (120, 'André', 1000);
insert into empregado values (130, 'Ana', 10000);

declare
 v_nome varchar2(40);
 v_salario empregado.salario%type;
begin
  select nome, salario 
    into v_nome, v_salario  
    from empregado 
   where id = 130;
   
  dbms_output.put_line('O salário de '|| v_nome || ' é : '|| v_salario);
end;
------------------------------
declare
 v_nome varchar2(40);
 v_salario empregado.salario%type;
begin
  select nome, v_salario 
    into v_nome, v_salario 
    from empregado 
    where id = 130;
  dbms_output.put_line('O salário de '|| v_nome || ' é : '|| v_salario);
end;
------------------------------
declare
 v_nome varchar2(40);
 salario empregado.salario%type;
begin
  select nome, salario 
    into v_nome, salario 
    from empregado 
    where id = 130;
  dbms_output.put_line('O salário de '|| v_nome || ' é : '|| salario);
end;
------------------------------
declare
 v_nome varchar2(40);
 v_sysdate date;
 v_id empregado.id%type := 130;
begin
  select nome, sysdate 
    into v_nome, v_sysdate 
    from empregado 
   where id = v_id;
   
  dbms_output.put_line('A data de início de '|| v_nome || ' é : '|| v_sysdate);
end;
------------------------------
declare
 v_nome varchar2(40);
 sysdate date;
 v_id empregado.id%type := 130;
begin
  select nome, sysdate 
    into v_nome, sysdate 
    from empregado 
   where id = v_id;
   
  dbms_output.put_line('A data de início de '|| v_nome || ' é : '|| sysdate);
end;
------------------------------
declare
 v_nome varchar2(40);
 v_salario empregado.salario%type;
begin
  select nome, salario 
    into v_nome, v_salario  
    from empregado; --Gera erro, pois a query retorna mais de uma linha
   
  dbms_output.put_line('O salário de '|| v_nome || ' é : '|| v_salario);
end;
------------------------------
declare
 v_nome varchar2(40);
 v_salario empregado.salario%type;
 nome empregado.nome%type := 'Ana';
begin
  select nome, salario 
    into v_nome, v_salario  
    from empregado
   where nome = nome; 
   
  dbms_output.put_line('O salário de '|| v_nome || ' é : '|| v_salario);
end;
