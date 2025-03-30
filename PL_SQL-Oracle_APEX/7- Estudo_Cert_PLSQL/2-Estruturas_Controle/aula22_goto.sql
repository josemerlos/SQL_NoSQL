--Aula 22: Comando GOTO

DECLARE
  v_num NUMBER := 22;
  v_prim boolean := true;
BEGIN
  FOR x in 2..v_num-1 LOOP
    IF v_num MOD x = 0 THEN
      dbms_output.put_line(v_num|| ' não é um número primo..');
      v_prim := false;
      GOTO end_point;
    END IF;
  END LOOP;
  if v_prim then
    dbms_output.put_line(v_num|| ' é um número primo..');
  end if;
<<end_point>>
  dbms_output.put_line('Missão cumprida..');
END;
-------------------------------------------------------------------------------
DECLARE
  v_num NUMBER := 32457;
  v_prim boolean := true;
  x number := 2;
BEGIN
  <<start_point>>
    IF v_num MOD x = 0 THEN
      dbms_output.put_line(v_num|| ' não é um número primo..');
      v_prim := false;
      GOTO end_point;
    END IF;
  x := x+1;
  if x = v_num then
   goto prime_point;
  end if;
  goto start_point;
  <<prime_point>>
  if v_prim then
    dbms_output.put_line(v_num|| ' é um número primo..');
  end if;
<<end_point>>
  dbms_output.put_line('Missão cumprido..');
END;