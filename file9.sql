-- group the orders by date3 and calculate the average 
-- number of pizzas ordered per day
 SELECT round( AVG(quality),0) as avg_izza_ordered_per_day
FROM (
    SELECT 
        orders.order_date,
        SUM(order_details.quality) AS quality
    FROM orders 
    JOIN order_details
        ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date
) AS order_quality;
