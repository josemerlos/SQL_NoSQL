--Aula 25: Utilizando SEQUENCE com PL/SQL
drop table empregado;
drop sequence empregado_id_seq;

create table empregado(
    id number,
    nome varchar2(40),
    salario number
);

select * from empregado;

create sequence empregado_id_seq 
start with 100
increment by 1;
-----------------------------
begin
  for i in 1..10 loop
    insert into empregado 
      (id, nome, salario)
    values 
      (empregado_id_seq.nextval, 'employee#'||empregado_id_seq.nextval,1000);
  end loop;
end; 

select * from empregado;
----------------------------
declare
  v_seq_num number;
begin
  select empregado_id_seq.nextval into v_seq_num from dual;
  dbms_output.put_line(v_seq_num);
end;
----------------------------
declare
  v_seq_num number;
begin
  select empregado_id_seq.nextval into v_seq_num from empregado where rownum = 1;
  dbms_output.put_line(v_seq_num);
end;
----------------------------
declare
  v_seq_num number;
begin
  v_seq_num := empregado_id_seq.nextval; 
  dbms_output.put_line(v_seq_num);
end;
----------------------------
begin
  dbms_output.put_line(empregado_id_seq.nextval);
end;
----------------------------