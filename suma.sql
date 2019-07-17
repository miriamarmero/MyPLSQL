CREATE OR REPLACE PROCEDURE reemplazar (clg string, num2 number) IS
    resultado number;
BEGIN
    resultado := num1 + num2;
    DBMS_OUTPUT.PUT_LINE('EL RESULTADO ES: ' || resultado);
END;
/
BEGIN
    sumar(8,6);
END;