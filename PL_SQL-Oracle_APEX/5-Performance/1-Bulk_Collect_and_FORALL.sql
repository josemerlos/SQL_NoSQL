/*Uso de BULK COLLECT e FORALL em PL/SQL para Operações em Lote


Trata-se de uma instrucao select into com bulk collect opcional antes do INTO e recupera linhas em uma matriz   ---- exemplos de performance



Performático: Usa BULK COLLECT para coletar múltiplos registros em memória e FORALL para aplicar operações em lote. Captura exceções em lote com SAVE EXCEPTIONS, o que melhora significativamente a performance ao evitar múltiplas interações com o banco de dados.

Não-Performático: Processa cada registro linha por linha, o que resulta em múltiplas operações de I/O no banco de dados e aumenta o tempo de execução. O tratamento de exceções por registro também é menos eficiente. 




*/






--Performática:


DECLARE
    TYPE t_emp IS TABLE OF hr.employees%ROWTYPE;
    l_emps t_emp;
BEGIN
    SELECT * BULK COLLECT INTO l_emps FROM hr.employees WHERE department_id = 10;

    FORALL i IN 1..l_emps.COUNT
        UPDATE hr.employees
        SET salary = salary * 1.1
        WHERE employee_id = l_emps(i).employee_id;
END;




--Não-performática:

BEGIN
    FOR emp IN (SELECT * FROM hr.employees WHERE department_id = 10) LOOP
        UPDATE hr.employees
        SET salary = salary * 1.1
        WHERE employee_id = emp.employee_id;
    END LOOP;
END;


-------------------------------------------------------------------------------------------------------------------------------------------


--Exemplo Performático: Usando BULK COLLECT com FORALL e SAVE EXCEPTIONS

--Performática:


DECLARE
    TYPE t_emp IS TABLE OF hr.employees%ROWTYPE;
    l_emps t_emp;
    l_errors EXCEPTION;
    PRAGMA EXCEPTION_INIT(l_errors, -24381);
    l_error_count NUMBER;
BEGIN
    -- Coleta em lote os dados da tabela de employees
    SELECT * BULK COLLECT INTO l_emps 
    FROM hr.employees 
    WHERE department_id = 10;

    -- Tenta aplicar aumentos de salário para todos os registros em lote
    FORALL i IN 1..l_emps.COUNT SAVE EXCEPTIONS
        UPDATE hr.employees
        SET salary = salary * 1.1
        WHERE employee_id = l_emps(i).employee_id;

EXCEPTION
    -- Captura exceções em lote e registra os erros
    WHEN l_errors THEN
        l_error_count := SQL%BULK_EXCEPTIONS.COUNT;
        DBMS_OUTPUT.PUT_LINE('Número de erros: ' || l_error_count);
        FOR i IN 1..l_error_count LOOP
            DBMS_OUTPUT.PUT_LINE('Erro na iteração: ' || SQL%BULK_EXCEPTIONS(i).ERROR_INDEX || 
                                 ' Código de erro: ' || SQL%BULK_EXCEPTIONS(i).ERROR_CODE);
        END LOOP;
END;
--Racional: Este código usa BULK COLLECT para coletar os dados em memória e FORALL para aplicar as mudanças em lote. O uso de SAVE EXCEPTIONS permite capturar e tratar exceções sem interromper a execução para outros registros, o que aumenta a eficiência.




--Exemplo Não-Performático: Processamento Linha por Linha sem BULK COLLECT


--Não-performática:


DECLARE
    CURSOR c_emps IS
        SELECT * FROM hr.employees WHERE department_id = 10;
BEGIN
    -- Processa cada registro individualmente
    FOR emp IN c_emps LOOP
        BEGIN
            UPDATE hr.employees
            SET salary = salary * 1.1
            WHERE employee_id = emp.employee_id;
        EXCEPTION
            -- Captura e trata o erro para cada registro individualmente
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Erro ao processar o employee_id: ' || emp.employee_id || 
                                     ' Código de erro: ' || SQLCODE);
        END;
    END LOOP;
END;


--Neste exemplo, cada registro é processado linha por linha, o que resulta em múltiplas operações de I/O no banco de dados e torna o processamento mais lento. Além disso, o tratamento de exceções por registro é menos eficiente.


-------------------------------------------------------------------------------------------------------------------------------------------
