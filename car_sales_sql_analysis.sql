SELECT * FROM sales.car;
use sales;

-- Brand-wise Revenue
select brand , sum(revenue)
from car
group by brand;

-- Region-wise Revenue
select region , sum(revenue)
from car
group by region;

-- Fuel Type-wise Revenue
select fuel_type , sum(revenue)
from car
group by fuel_type;

-- Top 5 Brands Based on Total Sales
select brand , sum(revenue) as total_sales
from car
group by brand
order by total_sales desc limit 5;

-- Top 5 Car Models Based on Total Sales
select car_model , sum(revenue) as total_sales
from car
group by car_model 
order by total_sales desc limit 5;

-- Brand vs Region Revenue Analysis
select brand , region , sum(revenue) as total_sales
from car
group by brand , region
order by brand,total_sales desc ;

-- Month-wise Total Sales
select month , sum(revenue) as total_sales
from car
group by month
order by total_sales desc;

-- Month-wise Brand Sales
