

-- temos uma tabela que é chamada por uma procedure para fazer algo. Mas, a procedure também chama algumas funções. Aquela procedure que criamos denominada APP_INCLUIR_CLIENTE associada ao usuário user_app chama 
--um sinônimo da procedure INCLUIR_CLIENTE que está associada ao usuário user_dev. Ou seja, todos os nossos objetos têm uma certa interdependência.


CREATE OR REPLACE PROCEDURE APP_INCLUIR_CLIENTE
(p_ID IN cliente.id%type,
p_RAZAO IN cliente.razao_social%type,
p_CNPJ IN cliente.cnpj%type,
p_SEGMERCADO IN cliente.segmercado_id%type,
p_FATURAMENTO IN cliente.faturamento_previsto%type)
IS
BEGIN
    INCLUIR_CLIENTE(p_ID, p_RAZAO, p_CNPJ, p_SEGMERCADO, p_FATURAMENTO);
END;




EXECUTE APP_INCLUIR_CLIENTE (6, 'SEGUNDO CLIENTE INCLUIDO POR USER_APP', '23456', 2, 100000);


SELECT * FROM CLIENTE;