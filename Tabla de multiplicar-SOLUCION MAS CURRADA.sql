DECLARE
    numero1 NUMBER(2) := &tabla;
    i number(2) := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('TABLA DEL ' || numero1);
    WHILE i <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE(i|| ' x ' || numero1 || ' = ' || i * numero1);
        i := i + 1;
    END LOOP;
    
    FOR contador IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('adios' || contador);
    END LOOP;
END;