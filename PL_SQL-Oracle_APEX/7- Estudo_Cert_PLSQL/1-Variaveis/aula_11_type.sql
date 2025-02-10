--Aula 11: %TYPE
--Criação da tabela empregado que utilizaremos como base
create table empregados(
    id_emp number,
    nome_emp varchar2(50),
    cargo varchar2(20) NOT NULL
);

--Bloco anonimo utilizando %TYPE
declare
    v_cargo empregados.cargo%TYPE;
    v_cargo2 v_cargo%TYPE;
    v_cargo3 empregados.cargo%TYPE;
begin
    v_cargo := 'Gerente TI';
    v_cargo2 := 'Gerente de Tecnologia em Análise e desenvolvimento de sistemas'; --Erro
    v_cargo2 := null; --NOT NULL não vem junto com o %TYPE
    dbms_output.put_line('Cargo: '||v_cargo);
    dbms_output.put_line('Cargo2: '||v_cargo2);
    dbms_output.put_line('Cargo3: '||v_cargo3);
end;