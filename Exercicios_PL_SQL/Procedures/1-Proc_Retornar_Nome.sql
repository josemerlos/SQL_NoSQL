--Criar uma procedure que receba um código de pessoa como parâmetro de entrada e através de um parâmetro de saída retorne o nome da pessoa. Caso, o código seja inexistente, retorne: Pessoa não encontrada.

CREATE TABLE PESSOA(
   ID NUMBER(4) PRIMARY KEY, 
   NOME VARCHAR2(120) NOT NULL,
   CONSTRAINT UQ_NOME_PESSOA UNIQUE (NOME)
);


CREATE SEQUENCE val
    MINVALUE 1
    MAXVALUE 300
    START WITH 1
    INCREMENT BY 1
    CACHE 20;


INSERT INTO PESSOA (ID, NOME) VALUES (val.nextval, 'Jose Carlos');
INSERT INTO PESSOA (ID, NOME) VALUES (val.nextval, 'Joao Roberto');
INSERT INTO PESSOA (ID, NOME) VALUES (val.nextval, 'Axel Rose');
INSERT INTO PESSOA (ID, NOME) VALUES (val.nextval, 'Slash Pereira da Silva');
INSERT INTO PESSOA (ID, NOME) VALUES (val.nextval, 'Juvenal Santana');
COMMIT;

SELECT * FROM PESSOA


create or replace procedure proc_return_name(P_ID IN NUMBER, P_SAIDA OUT VARCHAR2) 
IS

    V_QTDE NUMBER(5);
    V_NOME PESSOA.NOME%TYPE;


BEGIN
	IF P_ID > 0 AND P_ID < 9999 THEN
 		SELECT COUNT(*) INTO V_QTDE FROM PESSOA P WHERE P.ID =  P_ID;
		IF V_QTDE > 0 THEN
            SELECT P.NOME INTO V_NOME FROM PESSOA P WHERE P.ID =  P_ID;
 			P_SAIDA := V_NOME;
        ELSE
            P_SAIDA := 'PESSOA INEXISTENTE';
        END IF;
    ELSE
      P_SAIDA := 'VALOR DIGITADO NAO PERMITIDO';
    END IF;

END;




--TESTE 1
DECLARE
   RETORNO VARCHAR2(120);
BEGIN
   proc_return_name(3, RETORNO);
   DBMS_OUTPUT.PUT_LINE('RESULTADO DA EXECUÇÃO DA PROCEDURE: ' || RETORNO);
END;


---TESTE 2
DECLARE
   RETORNO VARCHAR2(120);
BEGIN
   proc_return_name(33, RETORNO);
   DBMS_OUTPUT.PUT_LINE('RESULTADO DA EXECUÇÃO DA PROCEDURE: ' || RETORNO);
END;



---TESTE 3
DECLARE
   RETORNO VARCHAR2(120);
BEGIN
   proc_return_name(NULL, RETORNO);
   DBMS_OUTPUT.PUT_LINE('RESULTADO DA EXECUÇÃO DA PROCEDURE: ' || RETORNO);
END;

--TESTE 4
DECLARE
   RETORNO VARCHAR2(120);
BEGIN
   proc_return_name(-200, RETORNO);
   DBMS_OUTPUT.PUT_LINE('RESULTADO DA EXECUÇÃO DA PROCEDURE: ' || RETORNO);
END;
