-- Create a regular view that will provide basic customer details along with their order information

CREATE VIEW customer_orders AS 
SELECT 
    c.customer_id, 
    c.name, 
    o.order_id, 
    o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- Create a materialized view that aggregates the total sales per month.

CREATE MATERIALIZED VIEW monthly_sales_totals AS
SELECT
    DATE_TRUNC('month', o.order_date) AS month,
    SUM(o.order_total) AS total_sales
FROM
    orders o
GROUP BY
    month
ORDER BY
    month;

-- Create a view that provides a detailed summary of each order, allowing the user to quickly retrieve all items in an order, including product details.

CREATE VIEW order_details_view AS
SELECT
    c.customer_id,
    c.name AS customer_name,  -- Alias for customer name
    o.order_id,
    o.order_date,
    oi.product_id,
    p.name AS product_name,  -- Alias for product name
    oi.quantity,
    oi.price,
    (oi.quantity * oi.price) AS total_price
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- query to calculate month-over-month (MoM) growth rate for total sales, giving insights into how sales are trending over time

CREATE MATERIALIZED VIEW MoM_growth_rate AS
WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', order_date) AS month,
        SUM(order_total) AS total_sales
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
)
SELECT 
    ms1.month AS current_month,
    ms1.total_sales AS current_month_sales,
    ms2.total_sales AS previous_month_sales,
    CASE
        WHEN ms2.total_sales IS NULL THEN NULL
        ELSE ((ms1.total_sales - ms2.total_sales) * 100.0 / ms2.total_sales)
    END AS growth_rate
FROM 
    monthly_sales ms1
LEFT JOIN 
    monthly_sales ms2
ON 
    ms1.month = ms2.month + INTERVAL '1 month'
ORDER BY 
    ms1.month;
