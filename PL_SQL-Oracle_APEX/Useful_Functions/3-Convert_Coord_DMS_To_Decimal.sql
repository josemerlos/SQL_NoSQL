CREATE OR REPLACE FUNCTION dms_to_decimal(dms_str IN VARCHAR2) RETURN NUMBER IS
    dms_array    VARCHAR2(50);
    degrees      NUMBER;
    minutes      NUMBER;
    seconds      NUMBER;
    sign         NUMBER := 1; -- 1 for positive, -1 for negative
    decimal_deg  NUMBER;
BEGIN
    -- Remove caracteres não numéricos do input
    dms_array := REGEXP_REPLACE(dms_str, '[^\d:\.-]', '');

    -- Extração de graus, minutos e segundos
    degrees := TO_NUMBER(REGEXP_SUBSTR(dms_array, '^-*\d+'));
    minutes := TO_NUMBER(REGEXP_SUBSTR(dms_array, ':\d+'));
    seconds := TO_NUMBER(REGEXP_SUBSTR(dms_array, ':\d+(\.\d+)?', 1, 2));

    -- Verificar se os graus são negativos
    IF degrees < 0 THEN
        sign := -1;
        degrees := ABS(degrees);
    END IF;

    -- Converter DMS para graus decimais
    decimal_deg := sign * (degrees + minutes / 60 + seconds / 3600);

    -- Retornar o valor em graus decimais
    RETURN decimal_deg;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL; -- Retornar NULL em caso de erro
END;



-----------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE OR REPLACE FUNCTION dms_to_decimal(dms_str IN VARCHAR2) RETURN NUMBER IS
    degrees      NUMBER;
    minutes      NUMBER;
    seconds      NUMBER;
    sign         NUMBER := 1; -- 1 for positive, -1 for negative
    decimal_deg  NUMBER;
BEGIN
    -- Separar a string de entrada em graus, minutos e segundos
    degrees := TO_NUMBER(SUBSTR(dms_str, 1, INSTR(dms_str, ':') - 1));
    minutes := TO_NUMBER(SUBSTR(dms_str, INSTR(dms_str, ':') + 1, INSTR(dms_str, ':', 1, 2) - INSTR(dms_str, ':') - 1));
    seconds := TO_NUMBER(SUBSTR(dms_str, INSTR(dms_str, ':', 1, 2) + 1));

    -- Verificar se os graus são negativos
    IF degrees < 0 THEN
        sign := -1;
        degrees := ABS(degrees);
    END IF;

    -- Converter DMS para graus decimais
    decimal_deg := sign * (degrees + minutes / 60 + seconds / 3600);

    -- Retornar o valor em graus decimais
    RETURN decimal_deg;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL; -- Retornar NULL em caso de erro
END;
/

