/*1. Criar um bloco PL/SQL anônimo para imprimir a tabuada abaixo:*/

DECLARE
  const CONSTANT NUMBER(2):=5;
BEGIN
    FOR i IN 1..10 LOOP
       SYS.DBMS_OUTPUT.PUT_LINE(const || ' X ' || i ||'='|| const*i);
    END LOOP;
END;



/*2 - Impressao de todas as tabuadas*/

DECLARE
  VN CONSTANT NUMBER(2):=5;
BEGIN
    FOR i IN 1..10 LOOP
      FOR j IN 1..10 LOOP
       SYS.DBMS_OUTPUT.PUT_LINE(i || ' X ' || j ||'='|| i*j);
      END LOOP;
       SYS.DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;
END;