SELECT DEMO_CUSTOMERS.CUST_FIRST_NAME, SUM(QUANTITY) AS TOTAL_PRODUCTS, SUM(QUANTITY * UNIT_PRICE) AS TOTAL_GASTADO
FROM DEMO_ORDER_ITEMS
LEFT JOIN DEMO_ORDERS
ON DEMO_ORDERS.ORDER_ID = DEMO_ORDER_ITEMS.ORDER_ID
LEFT JOIN DEMO_CUSTOMERS
ON DEMO_CUSTOMERS.CUSTOMER_ID = DEMO_ORDERS.CUSTOMER_ID
GROUP BY DEMO_CUSTOMERS.CUST_FIRST_NAME, DEMO_ORDERS.CUSTOMER_ID;