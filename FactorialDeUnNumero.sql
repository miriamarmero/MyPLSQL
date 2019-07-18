CREATE OR REPLACE FUNCTION Factorial_numero(num1 INTEGER)
RETURN NUMBER AS

BEGIN
    IF num1 = 1 THEN
        RETURN 1;
    ELSE
        RETURN(num1 * Factorial_numero(num1 - 1));
    END IF;
END;
/
BEGIN
    --clg('Factorial de ' || num1);
    clg('El factorial es: ' || Factorial_numero(5));
END;
 