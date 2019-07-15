-- Escriba un programa que pida dos números enteros
-- y escriba qué números son pares y cuáles impares
-- desde el primero hasta el segundo.

DECLARE
    numero1 NUMBER(2) := &number1;
    numero2 NUMBER(2) := &number2;
BEGIN
    DBMS_OUTPUT.PUT_LINE('NUMEROS PARES E IMPARES ');
    WHILE numero1 <= numero2 LOOP
        IF (MOD(numero1, 2)) = 0
            THEN DBMS_OUTPUT.PUT_LINE(numero1 || ' ES PAR');
            ELSE DBMS_OUTPUT.PUT_LINE(numero1 || ' ES IMPAR');
        END IF;
        numero1 := numero1 + 1;
    END LOOP;
END;