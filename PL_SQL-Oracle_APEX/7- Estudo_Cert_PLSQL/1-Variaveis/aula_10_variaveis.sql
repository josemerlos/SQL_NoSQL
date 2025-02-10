--Aula 10: Variavies
declare 
    v_texto pls_integer not null := 10;
begin
    dbms_output.put_line('Vocês são '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto binary_float not null := 10.45; -- quando preciso de precisao em calculos complexos
begin
    dbms_output.put_line('Vocês são '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto date := sysdate;
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
    dbms_output.put_line('Hoje é dia '||to_char(v_texto,'dd/mm/yyyy'));
end;
-----------------------------------------------------
declare 
    v_texto timestamp := systimestamp;
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto timestamp(3) with time zone := systimestamp;
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto interval day(4) to second(2) := '24 02:00:00.012';
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto interval year(3) to month := '122-11';
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto boolean := true;
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
end;