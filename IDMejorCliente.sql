CREATE OR REPLACE FUNCTION mejor_cliente (id_cliente number) 
RETURN number IS

BEGIN
    return id_cliente;
END;
/
BEGIN
    clg('El ID del mejor cliente es: ' || mejor_cliente(7));
END;