--Aula 9: Variaveis

--set serveroutput on
declare 
    v_texto varchar2(50) not null default 'Oi';
begin
    v_texto := 'Curso '||'PL/SQL';
    dbms_output.put_line(v_texto);
end;
-----------------------------------------------------
declare 
    v_texto varchar2(50) not null := 'Curso '||'PL/SQL';
begin
    dbms_output.put_line(v_texto);
end;
-----------------------------------------------------
declare 
    v_texto number(4,2) := 10; -- so pode ter 4 digitos sendo dois decimais. Quantos desses quatrto numeros serao depois da virgula
begin
    dbms_output.put_line('Vocês são '||v_texto);
end;