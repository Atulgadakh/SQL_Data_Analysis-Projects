SELECT * FROM analytics.car_sales;

#Data import

use analytics

select * from car_sales


# Data Preprocessing

delete from car_sales
where Manufacturer is null

SET SQL_SAFE_UPDATES = 0;

select * from car_sales

DELETE FROM car_sales
WHERE Price_in_thousands IS NULL;

SET SQL_SAFE_UPDATES = 1;

select * from car_sales

# DATA ANALYSIS

select count(*),Manufacturer from car_sales
group by Manufacturer
order by count(*) desc
limit 5

select * from car_sales

select Manufacturer,model from car_sales

select Manufacturer,Model,Sales_in_thousands from car_sales
order by Sales_in_thousands desc

select * from car_sales

select Manufacturer,Model,__year_resale_value from car_sales
order by __year_resale_value desc

select * from car_sales

select Manufacturer,Model,Price_in_thousands from car_sales
order by Price_in_thousands desc

select * from car_sales

select * from car_sales
where Manufacturer = "Acura"
having Vehicle_type = "Passenger" and Price_in_thousands > 30

select * from car_sales

# mathmatical opration

select min(Sales_in_thousands) from car_sales

select max(Sales_in_thousands) from car_sales

select avg(Sales_in_thousands) from car_sales

select * from car_sales

select * from car_sales
where Manufacturer = "Audi" and Model = "A8"
having Price_in_thousands >60

select * from car_sales
where Manufacturer = "Audi" and Vehicle_type = "Passenger"
having Wheelbase > 100
order by Wheelbase desc

select * from car_sales
where Manufacturer = "BMW" 
order by Sales_in_thousands desc


select month(Latest_Launch),Manufacturer,Sales_in_thousands from car_sales

select * from car_sales

select avg(Width) as avg_width, Manufacturer, Model
from car_sales
group by Manufacturer, Model;

select * from car_sales










