DECLARE
    numero NUMBER(5) := &numero;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Estos son los divisores de ' || numero);
    IF numero > 0 THEN
        FOR cont IN 1..numero LOOP
            IF numero MOD cont = 0 THEN
                DBMS_OUTPUT.PUT_LINE(cont);
            END IF;        
        END LOOP;
    END IF;
END;