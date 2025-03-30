--Aula 19: FOR Loops
begin
  for i in 1..3 loop
    dbms_output.put_line('My count is : '|| i);
  end loop;
end;
-----------------------------------------------
begin
  for i in REVERSE 1..3 loop
    dbms_output.put_line('My count is : '|| i);
  end loop;
end;
------------------------------------------------
begin
  for i in 3..1 loop
    dbms_output.put_line('My count is : '|| i);
  end loop;
end;