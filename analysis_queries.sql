Revenue by City

SELECT c.city,
SUM(o.amount) AS total_revenue
FROM Orders o
JOIN Customers c
ON o.customer_id = c.customer_id
GROUP BY c.city;

Top Customers

SELECT customer_name,total_spent
FROM(
SELECT c.customer_name,
SUM(o.amount) total_spent,
DENSE_RANK() OVER(ORDER BY SUM(o.amount) DESC) rnk
FROM Orders o
JOIN Customers c
ON o.customer_id=c.customer_id
GROUP BY c.customer_name
) x
WHERE rnk<=3;

Monthly Revenue

SELECT substr(order_date,1,7) AS month,
       SUM(amount) AS revenue
FROM Orders
GROUP BY substr(order_date,1,7);

Payment Success Rate

SELECT payment_status,
COUNT(*) total_transactions
FROM Payments
GROUP BY payment_status;

Running Revenue

SELECT order_date,
amount,
SUM(amount) OVER(ORDER BY order_date) running_revenue
FROM Orders;

