--Aula 20: Nested Loops

declare
    v_inner number := 1;
begin
    for v_outer in 1..5 loop
        dbms_output.put_line('Meu valor externo : ' || v_outer );
        v_inner := 1;
        loop
            v_inner := v_inner+1;
            dbms_output.put_line('  Meu valor interno : ' || v_inner );
            exit when v_inner*v_outer >= 15;
        end loop;
    end loop;
end;
----------------------------------------------------------------
declare
    v_inner number := 1;
begin
    <<outer_loop>>
    for v_outer in 1..5 loop
        dbms_output.put_line('Meu valor de fora : ' || v_outer );
        v_inner := 1;
        <<inner_loop>>
        loop
            v_inner := v_inner+1;
            dbms_output.put_line('  My inner value is : ' || v_inner );
            exit outer_loop when v_inner*v_outer >= 16;
            exit when v_inner*v_outer >= 15;
        end loop inner_loop;
    end loop outer_loop;
end;