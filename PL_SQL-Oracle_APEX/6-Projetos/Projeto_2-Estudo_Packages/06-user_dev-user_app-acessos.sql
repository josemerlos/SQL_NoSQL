--Executar em user_dev (Dono da aplicacao)



GRANT EXECUTE ON ATUALIZAR_CLI_SEG_MERCADO TO user_app;
GRANT EXECUTE ON ATUALIZAR_FATURAMENTO_PREVISTO TO user_app;
GRANT EXECUTE ON EXCLUIR_CLIENTE TO user_app;
GRANT EXECUTE ON INCLUIR_CLIENTE TO user_app;



GRANT SELECT ON CLIENTE TO user_app;


INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
VALUES (5, 'PADARIA XYZW', '22/222', 1, TO_DATE('15/01/2022','DD/MM/YYYY'), 80000, 'MEDIO GRANDE');


select * from cliente

rollback




-----------------------------------------------------------------------------------------------------------------------------------------------------------








--Executar no user_app (Usuario que ira utilizar o sistema de acordo com as regras impostas por user_dev)



--No exemplo nao consigo fazer insert direto nas tabelas, apenas acessar os objetos que user_dev me forneceu acesso.
--COmo no exemplo abaixo, consigo incluir via execucao de procedure. O Select So foi garantido no user_app pois o user_dev fez o grant correspondente


INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
VALUES (5, 'PADARIA XYZW', '22/222', 1, TO_DATE('15/01/2022','DD/MM/YYYY'), 80000, 'MEDIO GRANDE');

INSERT INTO USER_DEV.CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
VALUES (5, 'PADARIA XYZW', '22/222', 1, TO_DATE('15/01/2022','DD/MM/YYYY'), 80000, 'MEDIO GRANDE');




EXECUTE USER_DEV.incluir_cliente(5, 'PADARIA XYZW', '22222', 1, 80000);



SELECT * FROM USER_DEV.CLIENTE;






