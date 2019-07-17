-- CALCULAR SUMA DEMO_ORDERS (ORDER TOTAL).
-- CALCULAR LA MEDIA DE GASTO POR PEDIDO.
-- MEDIA A PARTIR DE X FECHA.
DECLARE
    total_filas NUMBER(3);
    CURSOR mi_cursor 
        IS SELECT ORDER_TOTAL
        FROM DEMO_ORDERS;
    my_amount mi_cursor%ROWTYPE;
    total NUMBER(6) := 0;
BEGIN
    SELECT count(*) INTO total_filas FROM DEMO_ORDERS;
    FOR my_orders IN mi_cursor LOOP
        total := total + my_orders.ORDER_TOTAL;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Total: ' || total);
    DBMS_OUTPUT.PUT_LINE('La media es: ' || total / total_filas);
END;