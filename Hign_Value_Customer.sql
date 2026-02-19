SELECT 
    c.customer_id,
    c.first_name,
    SUM(o.order_amount) AS total_spent
FROM customers c
JOIN orders o 
     ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name
HAVING SUM(o.order_amount) > 50000;
