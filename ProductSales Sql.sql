select * from productsales
select sum(unit_PRICE) from productsales
select sum(total_price) from productsales
select sum(quantity) from productsales
select count(customer_name) from productsales
select count(orderid) from productsales

select region,sum(total_price)as total_sales from productsales group by region order by total_sales desc
select rownum,e.* from(select product,sum(total_price) as total_sales from productsales group by product order by total_sales desc) e where rownum<=7
select rownum,e.* from(select customer_name,sum(total_price) as total_sales from productsales group by customer_name order by total_sales desc) e where rownum<=10
select customertype,sum(total_price)as total_sales from productsales group by customertype order by total_sales desc
select payment_method,sum(total_price)as total_sales from productsales group by payment_method order by total_sales desc
select round(avg(delivery_days)) from productsales
select to_char(order_date,'YYYY-MM')as month,sum(total_price) as total_sales from productsales group by to_char(order_date,'YYYY-MM') order by month
select salesperson,sum(total_price) as total_sales from productsales group by salesperson order by total_sales desc
select promotion,sum(total_price)as total_sales,count(orderid) as total_orders from productsales group by promotion order by total_sales desc