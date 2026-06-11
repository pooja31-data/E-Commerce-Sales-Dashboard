use ecommerce;

-- total sales

select sum(sales) as total_sales
from ecommerce_data;

-- total orders

select count(order_id) as total_orders
from ecommerce_data;

-- total customers

select count(distinct customer_id) as total_customers
from ecommerce_data;

-- average discount percentage

select round(avg(discount) * 100, 2) as avg_discount_percentage
from ecommerce_data;

-- sales trend

select order_date,
round(sum(sales), 2) as total_sales
from ecommerce_data
group by order_date;

-- sales by region

select city,
round(sum(sales), 2) as total_sales_by_region
from ecommerce_data
group by city
order by total_sales_by_region desc;

-- sales by category

select category,
round(sum(sales), 2) as total_sales
from ecommerce_data
group by category;

-- sales by customer segment

select segment,
round(sum(sales), 2) as total_sales_by_segment
from ecommerce_data
group by segment
order by total_sales_by_segment desc;

-- orders by payment mode

select payment mode,
count(order_id) as total_orders
from ecommerce_data
group by payment mode
order by total_orders desc;

-- profit by category

select category,
round(sum(profit), 2) as total_profit
from ecommerce_data
group by category
order by total_profit desc;
