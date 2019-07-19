--1.SUB.P. MUESTRE POR PANTALLA LOS (N) MEJORES CLIENTES
--N < TOTAL CLIENTES && N < 50

CREATE OR REPLACE PROCEDURE LISTA_MEJORES_CLIENTES(TOTAL_CLIENTES NUMBER) IS
CURSOR CLIENTES IS SELECT MEJORES_CLIENTES.CUSTOMER_ID, CUST_FIRST_NAME FROM (
    SELECT CUSTOMER_ID, SUM(ORDER_TOTAL) AS TOTAL
    FROM DEMO_ORDERS
    GROUP BY CUSTOMER_ID
    ORDER BY TOTAL DESC
) MEJORES_CLIENTES
RIGHT JOIN DEMO_CUSTOMERS 
ON MEJORES_CLIENTES.CUSTOMER_ID = DEMO_CUSTOMERS.CUSTOMER_ID
WHERE ROWNUM <= TOTAL_CLIENTES;
BAD_INPUT_EXCEPTION EXCEPTION;
NUMBER_OF_CLIENTS NUMBER(10);

BEGIN
    SELECT COUNT(*) INTO NUMBER_OF_CLIENTS
        FROM DEMO_CUSTOMERS;
        
    IF TOTAL_CLIENTES <= 0
        OR TOTAL_CLIENTES > NUMBER_OF_CLIENTS
        OR TOTAL_CLIENTES > 50 THEN
        RAISE BAD_INPUT_EXCEPTION;
    END IF;
    
    FOR CLIENTE IN CLIENTES LOOP
    clg('NAME: ' || CLIENTE.CUST_FIRST_NAME);
    END LOOP;
EXCEPTION
    WHEN BAD_INPUT_EXCEPTION THEN
        clg('INPUT INVALIDO');
END;
/
BEGIN
    LISTA_MEJORES_CLIENTES(&TOTALCLIENTES);
END;