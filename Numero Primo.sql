DECLARE    
    numero NUMBER(5) := &numero;
    primo BOOLEAN := TRUE;
    i NUMBER(3) := 2;
BEGIN    
    IF numero > 1 THEN
        WHILE primo = TRUE AND i < numero LOOP 
            IF numero MOD i = 0 THEN
                primo := FALSE;               
            END IF;
            i := i + 1;
        END LOOP;
    END IF;
    IF primo = TRUE THEN
        DBMS_OUTPUT.PUT_LINE(numero || ' es primo');
    ELSE
        DBMS_OUTPUT.PUT_LINE(numero || ' no es primo');
    END IF;
END;