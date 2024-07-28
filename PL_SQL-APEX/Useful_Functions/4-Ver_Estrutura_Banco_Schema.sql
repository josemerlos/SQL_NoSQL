DECLARE
    v_owner VARCHAR2(30) := 'SEU_ESQUEMA'; -- seu esquema
BEGIN
    FOR t IN (SELECT table_name FROM all_tables WHERE owner = v_owner) LOOP
        DBMS_OUTPUT.PUT_LINE('Tabela: ' || t.table_name);
        
        -- Listar as colunas da tabela
        FOR c IN (SELECT column_name, data_type, data_length 
                  FROM all_tab_columns 
                  WHERE table_name = t.table_name 
                  AND owner = v_owner) LOOP
            DBMS_OUTPUT.PUT_LINE('  Coluna: ' || c.column_name || ', Tipo: ' || c.data_type || ', Tamanho: ' || c.data_length);
        END LOOP;
        
        -- Listar as restrições da tabela
        FOR r IN (SELECT constraint_name, constraint_type
                  FROM all_constraints
                  WHERE table_name = t.table_name
                  AND owner = v_owner) LOOP
            DBMS_OUTPUT.PUT_LINE('  Restrição: ' || r.constraint_name || ', Tipo: ' || r.constraint_type);
        END LOOP;
        
        -- Listar os índices da tabela
        FOR i IN (SELECT index_name, uniqueness
                  FROM all_indexes
                  WHERE table_name = t.table_name
                  AND owner = v_owner) LOOP
            DBMS_OUTPUT.PUT_LINE('  Índice: ' || i.index_name || ', Unicidade: ' || i.uniqueness);
        END LOOP;
        
        -- Listar estatísticas da tabela
        FOR s IN (SELECT num_rows, blocks
                  FROM all_tables
                  WHERE table_name = t.table_name
                  AND owner = v_owner) LOOP
            DBMS_OUTPUT.PUT_LINE('  Linhas: ' || s.num_rows || ', Blocos: ' || s.blocks);
        END LOOP;
        
        DBMS_OUTPUT.PUT_LINE('---------------------------------------');
    END LOOP;
END;




select user from duaL
