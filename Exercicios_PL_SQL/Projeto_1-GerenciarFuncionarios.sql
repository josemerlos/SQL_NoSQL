-- Criação do Esquema
CREATE USER meu_esquema IDENTIFIED BY minha_senha;
GRANT CONNECT, RESOURCE TO meu_esquema;

-- Criação da Tabela de Funcionários
CREATE TABLE funcionarios (
    id NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    salario NUMBER,
    departamento_id NUMBER,
    data_contratacao DATE
);

-- Criação da Sequence para ID Automático
CREATE SEQUENCE seq_funcionarios START WITH 1 INCREMENT BY 1;

-- Criação da Tabela de Departamentos
CREATE TABLE departamentos (
    id NUMBER PRIMARY KEY,
    nome VARCHAR2(100)
);

-- Inserção de alguns departamentos
INSERT INTO departamentos VALUES (1, 'TI');
INSERT INTO departamentos VALUES (2, 'Recursos Humanos');
INSERT INTO departamentos VALUES (3, 'Finanças');

-- Criação da Tabela de Histórico de Salários
CREATE TABLE historico_salarios (
    id NUMBER PRIMARY KEY,
    funcionario_id NUMBER,
    salario_anterior NUMBER,
    novo_salario NUMBER,
    data_modificacao DATE,
    CONSTRAINT fk_funcionario_id FOREIGN KEY (funcionario_id) REFERENCES funcionarios (id)
);

-- Criação da Trigger para Atualização do Histórico de Salários
CREATE OR REPLACE TRIGGER salarios_trigger
BEFORE UPDATE ON funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO historico_salarios (id, funcionario_id, salario_anterior, novo_salario, data_modificacao)
    VALUES (seq_funcionarios.NEXTVAL, :OLD.id, :OLD.salario, :NEW.salario, SYSDATE);
END;
/

-- Procedure para Inserção de Funcionários
CREATE OR REPLACE PROCEDURE inserir_funcionario(
    p_nome VARCHAR2,
    p_salario NUMBER,
    p_departamento_id NUMBER,
    p_data_contratacao DATE
)
IS
BEGIN
    -- Validação dos dados
    IF p_salario <= 0 THEN
        DBMS_OUTPUT.PUT_LINE('Erro: Salário deve ser maior que zero.');
        RETURN;
    END IF;

    INSERT INTO funcionarios (id, nome, salario, departamento_id, data_contratacao)
    VALUES (seq_funcionarios.NEXTVAL, p_nome, p_salario, p_departamento_id, p_data_contratacao);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Funcionário inserido com sucesso.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Erro: ID duplicado. Certifique-se de que o ID é único.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Erro ao inserir o funcionário.');
END inserir_funcionario;
/

-- Procedure para Exclusão de Funcionários
CREATE OR REPLACE PROCEDURE excluir_funcionario(
    p_id NUMBER
)
IS
BEGIN
    DELETE FROM funcionarios WHERE id = p_id;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Funcionário excluído com sucesso.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Erro: Funcionário não encontrado.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Erro ao excluir o funcionário.');
END excluir_funcionario;
/