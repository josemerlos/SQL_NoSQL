-- Criação da Tabela de Alunos
CREATE TABLE alunos (
    id NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    nota1 NUMBER,
    nota2 NUMBER
);

-- Inserção de alguns alunos
INSERT INTO alunos VALUES (1, 'João', 8, 7);
INSERT INTO alunos VALUES (2, 'Maria', 9, 8);
INSERT INTO alunos VALUES (3, 'Pedro', 7, 6);

-- Criação da Procedure para Calcular a Média
CREATE OR REPLACE PROCEDURE calcular_media_alunos(p_aluno_id NUMBER)
IS
    v_nota1 NUMBER;
    v_nota2 NUMBER;
    v_media NUMBER;
BEGIN
    -- Buscar notas do aluno
    SELECT nota1, nota2 INTO v_nota1, v_nota2
    FROM alunos
    WHERE id = p_aluno_id;

    -- Calcular a média
    v_media := (v_nota1 + v_nota2) / 2;

    -- Exibir a média
    DBMS_OUTPUT.PUT_LINE('A média do aluno é: ' || v_media);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Erro: Aluno não encontrado.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro ao calcular a média.');
END calcular_media_alunos;
/

-- Execução da Procedure para Calcular a Média do Aluno com ID 1
BEGIN
    calcular_media_alunos(1);
END;
/