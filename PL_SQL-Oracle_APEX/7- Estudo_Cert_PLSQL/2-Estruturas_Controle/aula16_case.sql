--Aula 16: CASE

--Exemplos de case expression
declare
  v_emp varchar2(20) := 'TI';
  v_sal_aum number;
begin
  v_sal_aum := case v_emp 
               when 'TI' then 0.2
               when 'CEO' then 0.3
               else 0
               end;
  dbms_output.put_line('Valor de aumento é : '|| v_sal_aum);
end;
----------------------------------------------------------------
declare
  v_emp varchar2(20) := 'TI';
  v_sal_aum number;
begin
  v_sal_aum := case  
               when v_emp = 'TI' then 0.2
               when v_emp = 'CEO' or v_emp like '%Gerente%' then 0.3
               else 0
               end;
  dbms_output.put_line('Valor de aumento é : '|| v_sal_aum);
end;
----------------------------------------------------------------
--Exemplos de case statement
declare
  v_emp varchar2(20) := 'TI';
  v_sal_aum number;
begin
  case  
  when v_emp = 'TI' 
  then v_sal_aum := 0.2;
       dbms_output.put_line('Valor de aumento é : '|| v_sal_aum);
  when v_emp = 'CEO' or v_emp like '%Gerente%' 
  then v_sal_aum := 0.3;
       dbms_output.put_line('Valor de aumento é : '|| v_sal_aum);
  else v_sal_aum := 0;
       dbms_output.put_line('Valor de aumento é : '|| v_sal_aum);
  end case;
end;