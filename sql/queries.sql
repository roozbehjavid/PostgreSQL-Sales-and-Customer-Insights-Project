-- a query to calculate a running total of monthly sales

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(order_total) AS total_sales,
    SUM(SUM(order_total)) OVER (ORDER BY DATE_TRUNC('month', order_date)) AS running_total
FROM orders
GROUP BY DATE_TRUNC('month', order_date);

-- a query to calculate the total sales for each product, grouped by category, and ranks the products within their respective categories based on their total sales in descending order.

SELECT p.name, 
       SUM(oi.quantity * oi.price) AS total_sum,
       RANK() OVER (PARTITION BY p.category ORDER BY SUM(oi.quantity * oi.price) DESC)
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.name, p.category;

-- a query to find all customers who prefer a certain category, say "Laptops"

SELECT * 
FROM customers
WHERE preferences -> 'preferred_items' @> '["Laptops"]';

-- a query to return customers who have either "Gaming Laptop" or "Smartphones" in their preferred_items

SELECT *
FROM customers
WHERE preferences -> 'preferred_items' @> '["Gaming Laptop"]'
   OR preferences -> 'preferred_items' @> '["Smartphones"]';

-- a query to identify customers whose preferred items include any product items updated within the last 7 days

SELECT c.customer_id, c.name
FROM customers c
WHERE TO_JSONB(preferences -> 'preferred_items') @> (
    SELECT TO_JSONB(ARRAY_AGG(p.name))
    FROM products p
    WHERE last_updated BETWEEN NOW() - INTERVAL '7 days' AND NOW()
);
