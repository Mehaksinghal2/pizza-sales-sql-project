-- identify the most common pizza size ordered.
-- select quality,count(order_details_id)
-- from order_details group by quality;
select  pizzas.size,count(order_details.order_details_id) as order_count
from pizzas join order_details
on pizzas.pizza_id=order_details.pizza_id
group by pizzas.size order by order_count desc;
-- identify the highest-priced pizza.
select pizza_types.name, pizzas.price
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by pizzas.price desc limit 1;-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(order_details.quality * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id
-- Retrieve the total number of orders placed.
select count(order_id) as total_orders from orders;