/*
Vamos criar um exemplo de pipeline PL/SQL que realiza as seguintes etapas:

Carrega dados de uma tabela de origem.
Realiza uma limpeza inicial dos dados.
Aplica transformações específicas.
Carrega os dados transformados em uma tabela de destino.


1. Criação das Tabelas
Primeiro, vamos criar uma tabela de origem (source_table) e uma tabela de destino (destination_table).
*/

CREATE TABLE source_table (
    id NUMBER PRIMARY KEY,
    raw_data VARCHAR2(100),
    amount NUMBER
);

CREATE TABLE destination_table (
    id NUMBER PRIMARY KEY,
    cleaned_data VARCHAR2(100),
    transformed_amount NUMBER
);
--2. Inserção de Dados na Tabela de Origem
--Inserimos alguns dados de exemplo na tabela de origem.


INSERT INTO source_table (id, raw_data, amount) VALUES (1, '  Data One  ', -100);
INSERT INTO source_table (id, raw_data, amount) VALUES (2, 'Data Two', 200);
INSERT INTO source_table (id, raw_data, amount) VALUES (3, '  Data Three', -300);


--3. Criação de Funções e Procedimentos
--Função para Limpeza de Dados
--Esta função remove espaços em branco dos dados brutos.


CREATE OR REPLACE FUNCTION clean_data (p_raw_data VARCHAR2)
RETURN VARCHAR2
IS
BEGIN
    RETURN TRIM(p_raw_data);
END;

--Função para Transformação de Dados
--Esta função converte valores negativos em positivos.


CREATE OR REPLACE FUNCTION transform_amount (p_amount NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN ABS(p_amount);
END;

--4. Criação do Procedimento de Pipeline
--Este procedimento realiza todo o pipeline de processamento: leitura, limpeza, transformação e carga.


CREATE OR REPLACE PROCEDURE run_pipeline
IS
    CURSOR src_cursor IS
        SELECT id, raw_data, amount FROM source_table;
        
    v_id source_table.id%TYPE;
    v_raw_data source_table.raw_data%TYPE;
    v_amount source_table.amount%TYPE;
    v_cleaned_data destination_table.cleaned_data%TYPE;
    v_transformed_amount destination_table.transformed_amount%TYPE;
BEGIN
    OPEN src_cursor;
    LOOP
        FETCH src_cursor INTO v_id, v_raw_data, v_amount;
        EXIT WHEN src_cursor%NOTFOUND;
        
        -- Limpeza dos dados
        v_cleaned_data := clean_data(v_raw_data);
        
        -- Transformação dos dados
        v_transformed_amount := transform_amount(v_amount);
        
        -- Inserção dos dados transformados na tabela de destino
        INSERT INTO destination_table (id, cleaned_data, transformed_amount)
        VALUES (v_id, v_cleaned_data, v_transformed_amount);
    END LOOP;
    CLOSE src_cursor;
END;

--5. Execução do Procedimento de Pipeline
--Finalmente, executamos o procedimento run_pipeline para processar os dados.


BEGIN
    run_pipeline;
END;

--6. Verificação dos Resultados
--Podemos verificar se os dados foram processados corretamente na tabela de destino.

    
SELECT * FROM destination_table;


--Resultados Esperados
--A tabela de destino (destination_table) deve conter os dados processados conforme as regras definidas:
/*
id	cleaned_data	transformed_amount
1	Data One	    100
2	Data Two	    200
3	Data Three	    300
Este exemplo ilustra um pipeline básico em PL/SQL que realiza limpeza e transformação de dados de uma tabela de origem para uma tabela de destino. Você pode expandir e adaptar este exemplo conforme suas necessidades específicas de processamento de dados.
*/


