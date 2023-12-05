SELECT * FROM shub.superstore;

select * from shub.superstore
where Ship_Mode = "Second Class"

select count(*),Ship_mode from shub.superstore
group by Ship_Mode;
order by count(*) desc

ALTER TABLE shub.superstore MODIFY COLUMN Ship_Date date;

select * from shub.superstore
where Category = "Furniture"
having Region = "West"

select count(*),Ship_Mode from shub.superstore
group by Ship_mode

select * from shub.superstore
where Ship_Mode = "First Class"

select Product_Name,Sales from shub.superstore
order by sales desc
limit 5

select sum(Sales),Region from shub.superstore
group by Region
order by sum(Sales)

select * from shub.superstore


select sum(sales),Category from shub.superstore
group by Category
order by sum(Sales)

select sum(Sales),Region from shub.superstore
group by Region

select count(*),sum(Sales),State from shub.superstore
group by State
order by sum(Sales)

select Product_Name,Sales from shub.superstore
where Category = "Furniture"
order by sales desc


select count(*),Product_Name from shub.superstore
group by Product_Name 
order by count(*) desc

select * from shub.superstore

Alter table shub.superstore
modify column Ship_Date  ;

ALTER TABLE shub.superstore modify COLUMN Ship_Date DATE DEFAULT '2-11-2019'


ALTER TABLE shub.superstore MODIFY COLUMN Ship_Date DATE;

select *,upper(Customer_Name) from shub.superstore;

select *,trim(Product_Name) from shub.superstore;

select *,concat(City," ",State) from shub.superstore;

select *,length(Ship_Mode) FROM shub.superstore
where length(Ship_Mode) > 12
order by length(Ship_Mode) desc

select *,(select count(*) from shub.superstore # subquary
where State = "California") from shub.superstore

select * from shub.superstore
where Sales > 100.00

select *,(select count(*) from shub.superstore
where Sales > 100.00) from shub.superstore;

select distinct(Ship_Mode) *  (select count(*) from shub.superstore
where Ship_Mode = "Second Class"
having Sales > 150.00) from shub.superstore

select distinct Ship_Mode
from shub.superstore

select *,upper(Ship_Mode) as Ship_Mode from shub.superstore

select ifnull(Country) from shub.superstore

select isnull(Country) from shub.superstore


SELECT *,
       (SELECT COUNT(*) FROM shub.superstore) AS total_records,
       (SELECT COUNT(*) FROM shub.superstore WHERE Country IS NULL) AS null_country_count
FROM shub.superstore;




select *,(select isnull(Country) from shub.superstore)
from shub.superstore

select max(Sales) from shub.superstore

select min(Sales) from shub.superstore

select avg(Sales) from shub.superstore

select std(Sales) from shub.superstore

select stddev(Sales) from shub.superstore

select concat(Country," ",Segment) from shub.superstore

select * from shub.superstore

select Custemer_Nme union Segment from shub.superstore

use shub

select * from superstore

select avg(Sales) from superstore

select count(*) from superstore
where (select avg(Sales) from superstore)


select * from superstore
where Sales > (select AVG(Sales) from superstore)


select * from superstore
where Sales < (select avg(Sales) from superstore)
and Category (select  





















