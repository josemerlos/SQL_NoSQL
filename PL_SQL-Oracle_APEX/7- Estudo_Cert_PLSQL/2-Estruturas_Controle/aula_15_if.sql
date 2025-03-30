--Aula 15: Comando IF
declare 
    v_num pls_integer := 3;
begin
    if v_num < 10 then
        dbms_output.put_line('Número menor que 10!');
    end if;
end;
-------------------------------------------------------
declare 
    v_num pls_integer := 6;
    v_num2 pls_integer;
begin
    if v_num < 10 then
        dbms_output.put_line('Número menor que 10!');
        v_num2 := v_num;
    else
        dbms_output.put_line('Número maior ou igual a 10!');
    end if;
end;
-------------------------------------------------------
declare 
    v_num pls_integer := null;
begin
    if v_num < 10 then
        dbms_output.put_line('Número menor que 10!');
    elsif v_num <= 20 then
        dbms_output.put_line('Número entre 10 e 20!');
    else
        dbms_output.put_line('Número maior que 20!');
    end if;
end;
-------------------------------------------------------
declare 
    v_num pls_integer := 22;
begin
    if v_num < 10 then
        dbms_output.put_line('Número menor que 10!');
    elsif v_num <= 20 then
        dbms_output.put_line('Número entre 10 e 20!');
    else
        if v_num is null then 
            dbms_output.put_line('Número é nulo!');
        else 
            dbms_output.put_line('Número maior que 20!');
        end if;
    end if;
end;