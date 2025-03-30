--Aula 18: While Loops
declare
    v_count number(2) := 1;
begin
  while v_count <= 10 loop
    dbms_output.put_line('My count is : '|| v_count);
    v_count := v_count + 1;
  end loop;
  dbms_output.put_line('My count is : '|| v_count);
end;
--------------------------------------------------------
declare
    v_count number(2) := 1;
begin
  while v_count <= 10 loop
    dbms_output.put_line('My count is : '|| v_count);
    v_count := v_count + 1;
    exit when v_count > 13;
  end loop;
end;