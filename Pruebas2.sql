DECLARE
    total_filas NUMBER(3);
    nombre_cliente DEMO_CUSTOMERS.CUST_FIRST_NAME%TYPE;
    fila_cliente DEMO_CUSTOMERS%ROWTYPE;
    CURSOR mi_cursor 
        IS SELECT *
        FROM DEMO_CUSTOMERS;
BEGIN
    SELECT count(*) INTO total_filas FROM DEMO_CUSTOMERS;
    SELECT CUST_FIRST_NAME
        INTO nombre_cliente
        FROM DEMO_CUSTOMERS
        WHERE CUSTOMER_ID = 1;
    DBMS_OUTPUT.PUT_LINE('Cliente ID 1: ' || nombre_cliente);
    DBMS_OUTPUT.PUT_LINE('Total filas: ' || total_filas);
        
    SELECT *
        INTO fila_cliente
        FROM DEMO_CUSTOMERS
        WHERE CUSTOMER_ID = 1;
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || fila_cliente.CUST_LAST_NAME);
    
    OPEN mi_cursor; 
        LOOP
            FETCH mi_cursor INTO fila_cliente;
            EXIT WHEN mi_cursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('All Name: ' || fila_cliente.CUST_FIRST_NAME || ' ' || fila_cliente.CUST_LAST_NAME);
        END LOOP;
    CLOSE mi_cursor;
END;