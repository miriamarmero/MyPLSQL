CREATE OR REPLACE FUNCTION f_sumar (num1 number, num2 number) 
RETURN number
IS
    resultado number;
BEGIN
    resultado := num1 + num2;
    return resultado;
END;
/
BEGIN
    clg('Resultado: ' || f_sumar(8,6));
END;