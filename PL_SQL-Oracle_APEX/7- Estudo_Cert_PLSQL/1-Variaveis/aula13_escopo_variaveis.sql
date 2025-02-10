--Aula 13: Escopo de variáveis

declare 
    v_text varchar2(20) := 'Texto de fora';
begin
    dbms_output.put_line('Output de fora: '||v_text);
    begin
        dbms_output.put_line('Output de dentro: '||v_text);
    end;
end;
/
begin
    v_text := 'teste';
end;
------------------------------------------------------------
declare 
    v_text varchar2(20) := 'Texto de fora';
begin
    dbms_output.put_line('Output de fora: '||v_text);
    declare
        v_text2 varchar2(20) := 'Texto de dentro';
    begin
        dbms_output.put_line('Output de dentro: '||v_text);
        dbms_output.put_line('Output de dentro 2: '||v_text2);
    end;
    dbms_output.put_line('Output de fora 2: '||v_text2); --Gera erro, pois a variável v_text2 está foro do escopo
end;
------------------------------------------------------------
declare 
    v_text varchar2(20) := 'Texto de fora';
begin
    dbms_output.put_line('Output de fora: '||v_text);
    declare
        v_text varchar2(20) := 'Texto de dentro';
    begin
        dbms_output.put_line('Output de dentro: '||v_text);
    end;
    dbms_output.put_line('Output de fora 2: '||v_text);
end;
------------------------------------------------------------
declare 
    v_text varchar2(20) := 'Texto de fora';
begin
    dbms_output.put_line('Output de fora: '||v_text);
    declare
        v_text varchar2(20) := 'Texto de dentro';
    begin
        dbms_output.put_line('Output de dentro: '||v_text);
    end;
    dbms_output.put_line('Output de fora 2: '||v_text);
end;
------------------------------------------------------------
begin <<fora>>
    declare 
        v_text varchar2(20) := 'Texto de fora';
    begin
        dbms_output.put_line('Output de fora: '||v_text);
        declare
            v_text varchar2(20) := 'Texto de dentro';
        begin
            dbms_output.put_line('Output de dentro: '||v_text);
            dbms_output.put_line('Output de dentro 2: '||fora.v_text);
            fora.v_text := 'Teste';
        end;
        dbms_output.put_line('Output de fora 2: '||v_text);
    end;
end fora;
