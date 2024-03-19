
CREATE OR REPLACE FUNCTION calcular_idade(
    p_data_nascimento IN DATE
) RETURN NUMBER IS
    v_idade NUMBER;
BEGIN
    -- Calcular a idade com base na data de nascimento
    v_idade := TRUNC(MONTHS_BETWEEN(SYSDATE, p_data_nascimento) / 12);
    
    RETURN v_idade;
END calcular_idade;






--Chamando a function

DECLARE
    v_data_nascimento DATE := TO_DATE('24-06-1994', 'DD-MM-YYYY');
    v_idade NUMBER;
BEGIN
    v_idade := calcular_idade(v_data_nascimento);
    DBMS_OUTPUT.PUT_LINE('A idade é: ' || v_idade);
END;