/* 
  Criar um bloco PL/SQL para atualizar a tabela abaixo, conforme segue:
  Produtos categoria A deverão ser reajustados em 5%
  Produtos categoria B deverão ser reajustados em 10%
  Produtos categoria C deverão ser reajustados em 15%
*/

/*criar Tabela*/
CREATE TABLE PRODUTO (
CODIGO NUMBER(4),
CATEGORIA CHAR(1),
VALOR NUMBER(4,2));


CREATE SEQUENCE sqTeste
    MINVALUE 1
    MAXVALUE 300
    START WITH 1
    INCREMENT BY 1
    CACHE 20;



/*inserir dados na tabela*/
INSERT INTO PRODUTO VALUES (sqTeste.NEXTVAL,'A',7.55);
INSERT INTO PRODUTO VALUES (sqTeste.NEXTVAL,'B',5.95);
INSERT INTO PRODUTO VALUES (sqTeste.NEXTVAL,'C',3.45);

/*Solução*/

DECLARE

/* CURSOR */
CURSOR PRO IS
  SELECT * FROM PRODUTO;

/*VARIAVEL VPROD: com o mesmo valor da tabela*/
VPROD PRODUTO%ROWTYPE;

BEGIN
    FOR VPROD IN PRO LOOP 
      
      CASE VPROD.CATEGORIA
        WHEN 'A' THEN UPDATE PRODUTO SET VALOR = VALOR + (VALOR*0.5) WHERE VPROD.CODIGO = CODIGO;
        WHEN 'B' THEN UPDATE PRODUTO SET VALOR = VALOR + (VALOR*1.5) WHERE VPROD.CODIGO = CODIGO;
        WHEN 'C' THEN UPDATE PRODUTO SET VALOR = VALOR + (VALOR*2.0) WHERE VPROD.CODIGO = CODIGO;
      END CASE;
    END LOOP;
END;



SELECT * FROM PRODUTO