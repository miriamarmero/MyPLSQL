CREATE OR REPLACE PROCEDURE PEDIDO_MAXIMO(TOTAL_PEDIDOS_MAXIMOS NUMBER) IS
CURSOR PEDIDOS IS SELECT MAX_PEDIDOS.ORDER_ID, CUST_FIRST_NAME, CUST_LAST_NAME FROM (
    SELECT ORDER_ID, SUM(QUANTITY * UNIT_PRICE) AS TOTAL_PEDIDO
    FROM DEMO_ORDER_ITEMS
    GROUP BY ORDER_ID
    ORDER BY TOTAL_PEDIDO DESC
) MAX_PEDIDOS
RIGHT JOIN DEMO_ORDERS
ON MAX_PEDIDOS.ORDER_ID = DEMO_ORDERS.ORDER_ID
RIGHT JOIN DEMO_CUSTOMERS
ON DEMO_ORDERS.CUSTOMER_ID = DEMO_CUSTOMERS.CUSTOMER_ID
WHERE ROWNUM <= TOTAL_PEDIDOS_MAXIMOS;
BAD_INPUT_EXCEPTION EXCEPTION;
NUMBER_OF_ORDERS NUMBER(10);

BEGIN
    SELECT COUNT(*) INTO NUMBER_OF_ORDERS
        FROM DEMO_ORDERS;
        
    IF TOTAL_PEDIDOS_MAXIMOS <= 0
        OR TOTAL_PEDIDOS_MAXIMOS > NUMBER_OF_ORDERS
        OR TOTAL_PEDIDOS_MAXIMOS > 50 THEN
        RAISE BAD_INPUT_EXCEPTION;
    END IF;
    
    FOR PEDIDO IN PEDIDOS LOOP
    clg('MAX: ' || TOTAL_PEDIDO || ' PEDIDO POR ' || PEDIDO.CUST_FIRST_NAME);
    END LOOP;
EXCEPTION
    WHEN BAD_INPUT_EXCEPTION THEN
        clg('INPUT INVALIDO');
END;
/
BEGIN
    clg('RANKING PEDIDOS MAXIMOS: ');
    PEDIDO_MAXIMO(&TOTALPEDIDOS);
END;