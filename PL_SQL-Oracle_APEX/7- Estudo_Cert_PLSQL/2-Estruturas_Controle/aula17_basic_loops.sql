--Aula 17: BASIC Loops

declare
    v_count number(2) := 1;
begin
  loop
    dbms_output.put_line('My count is : '|| v_count);
    v_count := v_count + 1;
    exit when v_count > 10;
  end loop;
end;
-----------------------------------------------------------------
declare
    v_count number(2) := 1;
begin
  loop
    dbms_output.put_line('My count is : '|| v_count);
    v_count := v_count + 1;
    if v_count = 10 then
      dbms_output.put_line('Now I reached : '|| v_count);
      exit;
    end if;
  end loop;
end;