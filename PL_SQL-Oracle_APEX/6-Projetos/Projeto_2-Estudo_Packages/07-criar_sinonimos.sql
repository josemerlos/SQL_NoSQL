--O sinônimo funciona como um apelido, um nome fantasia que podemos atribuir ao componente.
--Dessa forma, qualquer usuário que tenha acesso pode chamar o objeto pelo seu sinônimo, sem precisar especificar o dono. É importante lembrar que o dono do objeto é quem cria o sinônimo. 


CREATE PUBLIC SYNONYM INCLUIR_CLIENTE FOR USER_DEV.INCLUIR_CLIENTE;
CREATE PUBLIC SYNONYM ATUALIZAR_CLI_SEG_MERCADO FOR USER_DEV.ATUALIZAR_CLI_SEG_MERCADO;
CREATE PUBLIC SYNONYM ATUALIZAR_FATURAMENTO_PREVISTO FOR USER_DEV.ATUALIZAR_FATURAMENTO_PREVISTO;
CREATE PUBLIC SYNONYM EXCLUIR_CLIENTE FOR USER_DEV.EXCLUIR_CLIENTE;

CREATE PUBLIC SYNONYM CLIENTE FOR USER_DEV.CLIENTE;



SELECT * FROM CLIENTE;