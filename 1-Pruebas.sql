DECLARE
    texto VARCHAR(10) := 'HOLA MUNDO';
    saludo VARCHAR(10) := '&saludo';
    numerito NUMBER(2) := 20;
    mi_numero NUMBER(6, 2) := 1256.48;
    multiplicador NUMBER (6, 2) := &NUMERO;
    verdadero BOOLEAN := true;
    fecha_actual DATE := SYSDATE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hola mundo');
    DBMS_OUTPUT.PUT_LINE(2 + 2 * 3 ** 2 - 6 / 2);
    DBMS_OUTPUT.PUT_LINE(MOD(5, 2));
    DBMS_OUTPUT.PUT_LINE(numerito);
    DBMS_OUTPUT.PUT_LINE(texto);
    DBMS_OUTPUT.PUT_LINE(texto || ' CRUEL');
    DBMS_OUTPUT.PUT_LINE(mi_numero * 100);
    DBMS_OUTPUT.PUT_LINE(mi_numero * multiplicador);
    DBMS_OUTPUT.PUT_LINE('saludo: ' || saludo);
    DBMS_OUTPUT.PUT_LINE(fecha_actual);
    
    IF &number > 18 THEN
        DBMS_OUTPUT.PUT_LINE('Es mayor');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Es MENOR');
    END IF;
    
    WHILE i < 10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;